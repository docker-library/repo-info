## `postgres:16-bookworm`

```console
$ docker pull postgres@sha256:e8a07d2c7579b038938cdba6c539e580e5001caf9ea203d397b5cc83e76bd938
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

### `postgres:16-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:cf5d353f55240ecc2f811827a15c7d1f2d562f08019b49dca12b5a59f4ab5962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155129037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a35283e53fbe883da6a6ffbce8d3999dc66076cc5c4e2f1d21bdbd9e26bf86f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:30:56 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:31:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:31:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:31:11 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:14 GMT
ENV PG_MAJOR=16
# Wed, 28 Oct 2026 01:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 28 Oct 2026 01:31:14 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Wed, 28 Oct 2026 01:31:26 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:31:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:31:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:31:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:31:27 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:31:27 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:31:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b3865c6b95356f926c880a3eab61d45eef7cea338d903008177efd7da63559`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05d3c04a0b3154824f2a3e52320db1c0d4983fb6960f8463ff91566dc97eaf0`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 4.5 MB (4534301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be40935ea959fa1d233bdb51912ffc816f8e3ac2322315555097d69ed096a1ec`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 1.3 MB (1250081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c711084a8de61d9be8c1f6114bd1bb9f4a6ac4b4bf1d74c837d7cc6a56149c`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 8.1 MB (8066441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bf8ce38b0fc2121c99db54eae3340fd437c1ff72e59242a2a6d403622e9ef2`  
		Last Modified: Wed, 28 Oct 2026 01:31:46 GMT  
		Size: 1.2 MB (1196460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e72f5ffc9dcaf194fd45e098f9edcacd122eaa4f07ffcc6e7dc4990bbd7d9d`  
		Last Modified: Wed, 28 Oct 2026 01:31:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0562cc31bd02b6fc6cbf899ddb4c6c38533c81f21ee3af331a5d175fa179ef8a`  
		Last Modified: Wed, 28 Oct 2026 01:31:46 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e7b10af5f7d3af3e693d9e519328310d54b3957b43cc66e9eb49549a9d8965`  
		Last Modified: Wed, 28 Oct 2026 01:31:49 GMT  
		Size: 111.8 MB (111813285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9275373a97cae10f3a8b796fff5f1b4aa1e98c41258f8516ccba83e9342faa32`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 10.0 KB (10016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d3e9954fa81162ae7cff46d19da366f7ca52c87c3a56d2001ed543fa455ed0`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e465beccff74e6451106292875a3ec17f60b1fe75ee872ca08f413f50e3722`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3525f5dd20e93665b223605634a5a31b56f6c78163f2a3a69fdc4cc801dd5905`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0980702fb2dc4392c7128d3ee7b373dec8a73e65f975a9e841223a6c2922c0`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:327e617b31a0c20c4dc7252b205204e2c5aec3e964e4f770aa540e6b3084d5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5962965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c257e93665fbb91103f2ae4b6c53b0e8b9cfc5428d422cd7195528ec97768e69`

```dockerfile
```

-	Layers:
	-	`sha256:96ac088bdfb5b1be5dc3160f8e786b9d7e40fce05cc281f900228fdff9ea8172`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 5.9 MB (5909664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4b9b23077609bb15cc942c537c4a5cbbceb1fd6ceee5203aef1171c2b51e1b9`  
		Last Modified: Wed, 28 Oct 2026 01:31:44 GMT  
		Size: 53.3 KB (53301 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:16958b2477ab02457975269b1c22f105aaa2dcd11243e97c7908bd4fc1a21e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82249555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de784ca6065b80919dfd899301934c6f5b404f9b3e4bd8ed8717b1f034c72914`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:09:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 02:09:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:09:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:09:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:09:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 02:09:57 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 02:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:10:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 02:10:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 02:10:02 GMT
ENV PG_MAJOR=16
# Wed, 28 Oct 2026 02:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 28 Oct 2026 02:10:02 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Wed, 28 Oct 2026 02:20:44 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 02:20:44 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 02:20:44 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:20:44 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:20:44 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:20:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714826973cf94e81e1c290adad1bf1e48ce6ffa8780447e28165c17bb201e5ca`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38087996e7e3e367f3df57e55faeba3aa61f1a9593436b901822967741e0a599`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 3.7 MB (3742720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d9d281d6132c56adb025286d20d381a60bb3e07e3f932a42e55921bf670d72`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 1.2 MB (1216675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aac6a81d87c74fbbbe14dfd775dd1489e9ef2ae7ccb54130f9272c7760769a0`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 8.1 MB (8066428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a2ef07e5a2775f7bdb9e9029a390d3f47c4e2f0c341ad104179a31fe13b49d`  
		Last Modified: Wed, 28 Oct 2026 02:20:57 GMT  
		Size: 1.1 MB (1067322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030feda024d9affbe5217a062adc4b97061c6a89b2c46b7e819e8c69386ea7c`  
		Last Modified: Wed, 28 Oct 2026 02:20:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a690b77e0cf330793ab115c86ddfc7915e8d83d5258dae27cb8e018878c5daf2`  
		Last Modified: Wed, 28 Oct 2026 02:20:57 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff120334a2fa62c19b5b8a0e1fd20adda993cf4457d448655c9bcdd10409a07`  
		Last Modified: Wed, 28 Oct 2026 02:20:59 GMT  
		Size: 44.2 MB (44174393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7667a23f2ea7bc2d7102aa6e02f905bb68336a18f4a64cb4257876d8e15e1694`  
		Last Modified: Wed, 28 Oct 2026 02:20:58 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc40a5379f44854a0b4a5997cf69a55d4a85c654d86eba6fa816008dd2ab83f8`  
		Last Modified: Wed, 28 Oct 2026 02:20:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35d1b6dee2f52d0216d5027d9a6447f0f17ffd7afe1a980242983034e8cc705`  
		Last Modified: Wed, 28 Oct 2026 02:20:58 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d3fb80ab473d9399eaaf4b8fb61cf96343430f85f98e3b04b47d74c262b5aa`  
		Last Modified: Wed, 28 Oct 2026 02:21:00 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec48b10dc99fec90eb41001d8c52d0146246ce87c42a4f033ab14b353cea49d`  
		Last Modified: Wed, 28 Oct 2026 02:21:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9bb769bd960ae3baee0d75f34fb0d81b1c2249c0d0192f2cb16666cb3c5bf5c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fdfb841d50b47c9e9d9ca46b66adcbe697a03467ccd895174e528075d40bc8`

```dockerfile
```

-	Layers:
	-	`sha256:2413ae316e8d91cfee0436562684774f689aaa86b6e6cb939ece29a6928d76c8`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 5.3 MB (5280368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:271511a5964fe1491ede49a3744dbe0280221206b48dd9d770ea434b2db1e5e8`  
		Last Modified: Wed, 28 Oct 2026 02:20:56 GMT  
		Size: 53.5 KB (53502 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:c7d8cf162cb365b478761fa957ff4e58c2cd0ee748c6084056955de0dda9abf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153132943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fdd980ce55664ccb0712b0247d4fb9f212bc677ebb60e8c222380f821889b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:33:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:10 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:33:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:33:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:33:14 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:33:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:33:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:33:18 GMT
ENV PG_MAJOR=16
# Wed, 28 Oct 2026 01:33:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 28 Oct 2026 01:33:18 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Wed, 28 Oct 2026 01:34:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:34:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:34:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:34:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:34:19 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:34:19 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:34:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a714400795f76141e082c1ebf8bafa2e98f94bd686f7a2a780f278a2df08a74`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814149cb3c95c8091bf100b2f7c4209e6f5278b809d9f5d20541131829a16322`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 4.5 MB (4519535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:303c37b40732c010451b5010c69ac1ce9729760267d6a582eb7b2f16870a4a2a`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 1.2 MB (1203810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b698f6b7eefbfdfb73a7f706dc7ef5ce6a85c785aefbcc1ff127639feeffd22`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 8.1 MB (8066465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d88b1983e0d58a1b9010f13f5549f809c9164aa348fd0627b2796bb3799c6f4`  
		Last Modified: Wed, 28 Oct 2026 01:33:56 GMT  
		Size: 1.1 MB (1108986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3551ece5815e422967b6604028ecae78b07789ec1beb604cc2360f6aee54ed7`  
		Last Modified: Wed, 28 Oct 2026 01:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fedaccd3e0d1a25ee67dd74c26f89469f985437a5ad63863c8a1f179c0752f`  
		Last Modified: Wed, 28 Oct 2026 01:33:56 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f55ee8be1bcaed21367f90dcd0bcd63fe231ef99cf6cbff8954fec3018e81d5`  
		Last Modified: Wed, 28 Oct 2026 01:34:40 GMT  
		Size: 110.1 MB (110075164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943af48756bc5f1e821590f4cbc5cda922c28b9af3d2b4a0501807396e0ae13f`  
		Last Modified: Wed, 28 Oct 2026 01:34:38 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae94715433e6b4f02380e007490fbc0a73a5f0e1046349ee44f2563f9e63c4fe`  
		Last Modified: Wed, 28 Oct 2026 01:34:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0001c1363a334f9f229870cc6f47531d2bb8ed3d0fc08398f3829cbb599cc099`  
		Last Modified: Wed, 28 Oct 2026 01:34:38 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612471fb37d05bf020e1248c987972a0c3b1bb88a90f9175cbaab1c60d4ed495`  
		Last Modified: Wed, 28 Oct 2026 01:34:39 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57b18685a3ddc1164e3e56d9f588bbd523c244482b1f28e859e2151325f3cef`  
		Last Modified: Wed, 28 Oct 2026 01:34:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:2dac93009bda24147bf4c99455a92b3d0ffd13c00dc39b049ab9dfa3d4dad750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5969520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f649d18c71bdbeea460993afc1e6777cb18e093afe28cabab96c3acc428c7a7`

```dockerfile
```

-	Layers:
	-	`sha256:5cc58391e0cc23d4901f06c037ba8958fabf8e08f030a08c9b4a5c1212289bd6`  
		Last Modified: Wed, 28 Oct 2026 01:34:38 GMT  
		Size: 5.9 MB (5915975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:266997a1b0aa81574587bdca95655c70dc882e608fdf484472ba71982c489aee`  
		Last Modified: Wed, 28 Oct 2026 01:34:38 GMT  
		Size: 53.5 KB (53545 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:f7e53f1550d0d04218beae6116db146f078c2d85ecd7bb924ffcaa0f48f3e554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92758709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e46f35249be4376a216557a08c2a17daf283c9322e53692b86b9eb83e65c426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:51 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:32:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:03 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:33:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:33:07 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:33:07 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:33:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:33:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:33:11 GMT
ENV PG_MAJOR=16
# Wed, 28 Oct 2026 01:33:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 28 Oct 2026 01:33:11 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Wed, 28 Oct 2026 01:41:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:41:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:41:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:41:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:41:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:41:02 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:41:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:41:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:41:02 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:41:02 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:41:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a7ebd4a758bf483f16e321026b28d9cf28a2ca7f7ebc31da3e65c815df83f5`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05c6a85588510d4fb58a835a798974f099f81e0b2279ff7f4d86e0c8b2666c6`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 5.0 MB (4966143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcc794dab99f60f4decd257e8b171b73d67219f2ec3543936dde19ab27c9ae9`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 1.2 MB (1219060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f07f5179accae1b20ff2cd26690ebfcd9dc37547b5fd696cdc75146ad27551`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 8.1 MB (8066485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4263340709cda998177b8de97d505bcbf6794612f366f31afa99913d745d23`  
		Last Modified: Wed, 28 Oct 2026 01:41:15 GMT  
		Size: 1.1 MB (1137508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91381a53bf6e300e15be3c04945ac9fbab723d49e2e55ac07804a3b5d6653c5`  
		Last Modified: Wed, 28 Oct 2026 01:41:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe7972263315242bb6a34916ddbc8c3cbaa2e2728bee9b3cbe08a055d71204f`  
		Last Modified: Wed, 28 Oct 2026 01:41:15 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b96db6cd44da2513ba48fdc938db3623bfa82b3c0597724309091085575c040`  
		Last Modified: Wed, 28 Oct 2026 01:41:17 GMT  
		Size: 48.1 MB (48109693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74629c6721d6ba988f87075356d0ff330ba3e2fdf04909633ed87c59ff9eaf3b`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5105752c659cd34dada5177568af1d42cbaef7b773ee412e50408bdf3c06577`  
		Last Modified: Wed, 28 Oct 2026 01:41:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62d7e3b3b3e2cbda01b36936cd202606fe247cee552f4f7b66e6f1a69935c45`  
		Last Modified: Wed, 28 Oct 2026 01:41:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1913377cc0629c582c38460fc9e2f6e06b6639151e609bdb07985ad86efd4f15`  
		Last Modified: Wed, 28 Oct 2026 01:41:17 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1e4a14f42b68f1bfa9da8b3ff74b6505a373d621074920149b570cabfbbe67`  
		Last Modified: Wed, 28 Oct 2026 01:41:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:8f17c3fde11884d5e5891f60cfda418c81dab5602d631f0c53d50e37b5df41b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5328956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bd5e8ab1c542d67979ae32bb33589100a5019f1fd5551acf38f451ac442a96`

```dockerfile
```

-	Layers:
	-	`sha256:1dd62b465a36f7e61de0194cd890d6bab417e813f260d88be66963705b43ce5f`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 5.3 MB (5275706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:076b3501e7355945d858e358182c33756e67f36a6ad560efb98f6f8df926379f`  
		Last Modified: Wed, 28 Oct 2026 01:41:14 GMT  
		Size: 53.2 KB (53250 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:a2a4ac2b1f01e6fd967f109baaf5fffd8217f3e89666ab8e8f05ea55e150a13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167912197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc87f0b4f1bcf8940b5db8e99ebf0afcf7ecb4d29723e0c2232f9e38e2dd32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 03:56:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 03:56:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:56:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:56:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:57:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 03:57:08 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 03:57:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:57:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 03:57:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_MAJOR=16
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Wed, 28 Oct 2026 04:03:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 04:03:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 04:03:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 04:03:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 04:03:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 04:03:10 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 04:03:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:03:11 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 04:03:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:03:11 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 04:03:11 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 04:03:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d30d354f8a1d61d7013d0d72a1196daa026c77d53c606a102b523152f9c760`  
		Last Modified: Wed, 28 Oct 2026 03:58:42 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d3ce1ef837adf678cc3684534d5e3008f77ab2c40bbe6f7887d9b336fce880`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 5.4 MB (5368576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aa2b53f7a65e7cce67298a85c0725200554b72f962190c554f9ca4e333ba06`  
		Last Modified: Wed, 28 Oct 2026 03:58:42 GMT  
		Size: 1.2 MB (1208873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3281a2583f2d405a082351e452da5112d8d27331a3c9ec04f0983ea8154eae06`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 8.1 MB (8066549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1012f2e13d8a48d1e57cd7b02f9a097da4aa65e62df8a62a18fa8c2b2c8d78`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 1.3 MB (1283668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cfc56eb0e52f7162210f0ff7276bca6fb56160f45e6da75e52ab415119f313`  
		Last Modified: Wed, 28 Oct 2026 03:58:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e5b90a82f980b12f8f6ae4947d5c5b989faad4545a1c32f5817ddc4528cf91`  
		Last Modified: Wed, 28 Oct 2026 03:58:44 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b78bd3ce71a9dc9dd293ce7114c5ceed265d41e4982bc73e3de14b90b14e58`  
		Last Modified: Wed, 28 Oct 2026 04:03:56 GMT  
		Size: 119.9 MB (119870648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6628a1977d47dddfa34700b691c5ee30a8a6ed0cf4ee5adc7c0820924159799f`  
		Last Modified: Wed, 28 Oct 2026 04:03:53 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477c1c511282d61e4424b4bb3c41399e03120b1b73f0df80f13c28ca03eb029d`  
		Last Modified: Wed, 28 Oct 2026 04:03:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df7be2fe3c93cc4e3d040a3fd6fc86f8c82e3e0c837eec830a167263ecb5278`  
		Last Modified: Wed, 28 Oct 2026 04:03:53 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12596480c78b3382fe251f650a5c536e2e915a46bf78738bcb7b684dd5d5a5f9`  
		Last Modified: Wed, 28 Oct 2026 04:03:54 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12cd747fab065f6d3f0bca3f66091fd93464423f4b24bebedf5664708689ef6`  
		Last Modified: Wed, 28 Oct 2026 04:03:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:4a01e081e4993cc93d2e1fe91753b171826319110fffa5b022a944be15c3bcc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5970380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d9c3e42196dd344a461887a22095aee10f991bb800b198d5e7232872b203f5`

```dockerfile
```

-	Layers:
	-	`sha256:3dac6c4424cf718a55f771fc91c8ea14e03195a85d314d84d41d315adb13cde5`  
		Last Modified: Wed, 28 Oct 2026 04:03:53 GMT  
		Size: 5.9 MB (5917025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2730dbaeb9866e31c2a5555afd820bbb9805c3d81bc10cf5925cfd9a367f82`  
		Last Modified: Wed, 28 Oct 2026 04:03:53 GMT  
		Size: 53.4 KB (53355 bytes)  
		MIME: application/vnd.in-toto+json
