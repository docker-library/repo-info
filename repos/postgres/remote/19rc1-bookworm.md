## `postgres:19rc1-bookworm`

```console
$ docker pull postgres@sha256:d3d249b3dcc7920ab06f437a49ceb8fb83d483d7863bef31e1bf1d4bdc584cc2
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

### `postgres:19rc1-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:b73aae0added87b5178cbe6afe6d5d33466b2c0c41fb840312185a74da8ffd7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (159005625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be6407ed15ccc6cd875b0454a2319984b2d683a2bb21b160cf4365f4275c8a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:29:34 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:29:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:29:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:29:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:29:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:29:52 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:29:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:29:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:29:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:29:56 GMT
ENV PG_MAJOR=19
# Wed, 28 Oct 2026 01:29:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 28 Oct 2026 01:29:56 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 28 Oct 2026 01:30:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:30:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:30:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:30:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 28 Oct 2026 01:30:16 GMT
VOLUME [/var/lib/postgresql]
# Wed, 28 Oct 2026 01:30:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:30:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:30:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:30:16 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:30:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:30:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff41e6c1b2204a95596af9aad456b7e63c778b89e0aa0497d9edaa02941274d`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3cdb641ab32d455c2f200df4b59327ee6ffc9f0edf8d39dabaf29d8b80dbf2`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 4.5 MB (4534221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a2987bdd154cf547cdadb82c8000b172d923511c999501cabeb6bc1855470f`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 1.3 MB (1250048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0e131d356694ba22eed32181a43c34c8b0def4c0fe8d3bbf8f556581bbb6d1`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 8.1 MB (8066421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b481b6808b90a771b65aaef677d71cf59da349f85e2d67da483fc8e2e601e3`  
		Last Modified: Wed, 28 Oct 2026 01:30:38 GMT  
		Size: 1.2 MB (1196457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f339d976970a249a78ac4cf0174ddc501dc7412e5880cbf8cb37898cc295e9d7`  
		Last Modified: Wed, 28 Oct 2026 01:30:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfd20f5426478555c09b4d92aea76525e906a6156c1800c2334bcba2dfa43c4`  
		Last Modified: Wed, 28 Oct 2026 01:30:38 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4f949c6835894b7897cf001a636ba8ee0b5c9911783a54c129f6550c8200b3`  
		Last Modified: Wed, 28 Oct 2026 01:30:41 GMT  
		Size: 115.7 MB (115678683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889a53b2911c5a6c1e57938541e0800d411261b80b3a714645f77b73d960baa2`  
		Last Modified: Wed, 28 Oct 2026 01:30:39 GMT  
		Size: 21.5 KB (21508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b14bb389967e9a328ec7924f52c578b3aa25016c526bb270922c9f5fde357`  
		Last Modified: Wed, 28 Oct 2026 01:30:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9c0ad1305f76e265a6136501233c74fa63617e71cce3f3b88090c58986f519`  
		Last Modified: Wed, 28 Oct 2026 01:30:39 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849a347bcecde9b745d691e13234820dd01e5170009645c0e9901ea95069c87d`  
		Last Modified: Wed, 28 Oct 2026 01:30:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:2d956ab7e18ff54bb09d6bd192e272a8e8cd933fd472e65fdc89f538ad1bac68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2722b83301a856ce07316bff328a754de6d873c122ed3789cacedd39227a3d4c`

```dockerfile
```

-	Layers:
	-	`sha256:ef192308e8a101ab0b6abc5c36c70f33496a1deb6e43feb5ee621ab61cd462df`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 6.2 MB (6202958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0d707c39113e128dddeedf64f611abc48ecf4a9c5a9a7ffcb4c7e46067d00be`  
		Last Modified: Wed, 28 Oct 2026 01:30:37 GMT  
		Size: 51.0 KB (50986 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:228aa60b927491f9c04d9688ed7370635bbdfeceabe062fb4543de40e7c8fab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84495158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f81c9c7ebb45066c9811debc4ae41d3bdf49296cd29655427c9d677a767e1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:56:56 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:57:10 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:57:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:57:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:57:16 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:57:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:57:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:57:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:57:21 GMT
ENV PG_MAJOR=19
# Wed, 28 Oct 2026 01:57:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 28 Oct 2026 01:57:21 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 28 Oct 2026 02:09:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:09:45 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:09:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:09:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 28 Oct 2026 02:09:45 GMT
VOLUME [/var/lib/postgresql]
# Wed, 28 Oct 2026 02:09:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:09:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:09:45 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:09:45 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:09:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60cba0a1719bfee85cc08df9d525944748ddaf69b0c1572cf63fc4a9e7fdb69`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd84883f3019fd6b802b008c21ced43bb01e38953be59d83e5fe0213ad84aa2`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 3.7 MB (3742745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8851a8edab1a53d8418943802fd93297a1ed3be40f976f8e96d3de80f8780ec9`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 1.2 MB (1216671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d0c0713a9f78941e906f5f3f18d3fc2a52f1eacf75e04e61f097303db03494`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 8.1 MB (8066420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94129a2f6f352c6f389183a2b92fdf44025d6cc04ed637b9f6fb3252743585da`  
		Last Modified: Wed, 28 Oct 2026 02:09:59 GMT  
		Size: 1.1 MB (1067293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e68cad6c72e871720c787a46321a718b33e6b04eee34f7e70a6e0a024ea592`  
		Last Modified: Wed, 28 Oct 2026 02:09:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fb51b9e73e539b64fb0b712a5fba85e4d728f2eea6699af4fe402fe35a07af`  
		Last Modified: Wed, 28 Oct 2026 02:09:59 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c525900be2d74ad665f3065acd8dfda44745ea94d9f03d6c1ec7d02c2a83d149`  
		Last Modified: Wed, 28 Oct 2026 02:10:00 GMT  
		Size: 46.4 MB (46408701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8104fdb1d37538ad1e8b224d1a076ae7d4b3ab89bffb0b19679dd74f111473ec`  
		Last Modified: Wed, 28 Oct 2026 02:10:00 GMT  
		Size: 21.5 KB (21516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f463267f6f3d2b06f073bc5adbac921edb3d179abe19c1608cb0c5d11330cdc`  
		Last Modified: Wed, 28 Oct 2026 02:10:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a293886311a7676bf0001b9c0060bad6cfaf32f021bb5317019969e97cb24470`  
		Last Modified: Wed, 28 Oct 2026 02:10:00 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bdf802058b0e08dab4abe91363fa68fbded1059a9128f227fecaa45b002ded`  
		Last Modified: Wed, 28 Oct 2026 02:10:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:3309d2f3171d6a0435253775202535ed6452bcdec751ef43fa9a49e27326d026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5385133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e67a912c71fb0bf140766679ba2fd2e060ff35c2c0032fdcd3f3af45ba1fda4`

```dockerfile
```

-	Layers:
	-	`sha256:8a41503ee0ca451ee496114c0910c3e52f9a6aae1e9b2a9d8d144b3eac4bf43f`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 5.3 MB (5333966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16016f2ef28776edbc4c3c8d776fdf10ff0611206018a2759a41b1c7fb426968`  
		Last Modified: Wed, 28 Oct 2026 02:09:58 GMT  
		Size: 51.2 KB (51167 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d5bb76c0040b5cda1755f4e2fbb1a31bdc607690d7ab2a95d45612d9c2e0bb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156946190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3448ce8685e615f3fe3f5393b06b8a9fb5b91ff4bfcc3dd61269bc4ebffa21a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:53 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:32:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:33:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PG_MAJOR=19
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 28 Oct 2026 01:33:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:33:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:33:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:33:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 28 Oct 2026 01:33:33 GMT
VOLUME [/var/lib/postgresql]
# Wed, 28 Oct 2026 01:33:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:33 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:33:33 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:33:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd02698a385d828993928554dfdb2cb50b8fb7118ff1052700a5e2ff4e898d1`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e225efba3312ca80c7244c094df6ba82d3970b0c90e4da0f5d727e3280e7047`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 4.5 MB (4519551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca485e33ebd28debf6c16fd0420928be3e01640e836ff60a859099a0bf83805d`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 1.2 MB (1203813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f95627e2a86d05c0c03356c79dc0db2b26ee3c61ba3ad308ee64860027e53f`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 8.1 MB (8066486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf8dc366f1420ece9b923812bf4223627de6fd3798bbf89f6ea74d3f94afc84`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 1.1 MB (1108992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a348db12a2e0f324fbd901f7e507bf5198ea3a9d7b1b2d8ecb85c5ce2be0c7`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0184554a609f12f7ebbc19762c7f1bf52e22ef97fd9b65b06a3a7acd2f3e103b`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cbd79f74ca5e9ea165bef5e6c3440f786179c94a5c2180e5a36d2859464c0b3`  
		Last Modified: Wed, 28 Oct 2026 01:33:56 GMT  
		Size: 113.9 MB (113877038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c38785524a6ea7e1b1e19097c0a154a03f0e7f25f2dccf290685f3ba91c81`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 21.5 KB (21514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e4c7bad2d517395dcfa82278b153f297106085eac8d558a94f3f72850eb9b0`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f97117038fe3a31b1aae4f809ecd22b1ba8facb9574fffd011ebfad73ef958`  
		Last Modified: Wed, 28 Oct 2026 01:33:54 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a559effbe571911558cf52a3a06fbacf10849ceed9967d13b0b2a45e04496ab`  
		Last Modified: Wed, 28 Oct 2026 01:33:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:64a84f6d52fa8130c045a72458a799c7e106aba3df1264ebf208f4d9d944c7ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6260463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a4d8196428d542c551817d6d6c43add99ddc2cc6bb9895683d8179bc6ec159b`

```dockerfile
```

-	Layers:
	-	`sha256:b6d6a3b78df6df0fed1a20cdbf0f30d20d5e8bd7825fcdce43c3b098b78b2194`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 6.2 MB (6209259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8db65f8bf6a1a2764b0e9b5e63f2eb2a40cf64d8deb97803b1735825d537be8`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 51.2 KB (51204 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:d1cfa5aba7e67ff3646a89d524b8fea7032a1ba9c394ab3b2e2638a05cbc30c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95264619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e855d5fd2aeb905bc7c8658c789dfd1cb62610355b357f363443220ad2e88c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:30:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:30:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:30:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:30:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:30:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:30:58 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PG_MAJOR=19
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 28 Oct 2026 01:40:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:40:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:40:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:40:13 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 28 Oct 2026 01:40:13 GMT
VOLUME [/var/lib/postgresql]
# Wed, 28 Oct 2026 01:40:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:40:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:40:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:13 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:40:13 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:40:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7530acabf3268dd99ec8af0c5f9b80587fc6fc8d4778b7aa8c201ccfb62eed2c`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0e3b1f5db02cca7c15d23cd552cb6f1626cf68a843ccd30e2655671c771bbb`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 5.0 MB (4966126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35d507f9e2613c13f1ce0e05b9ee96d6336a0e9c9928a6a64f7e2fff9fa0ca1`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 1.2 MB (1219040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851aa100a79128188cefe463e3729a6277528bd4268c6cb5e07b28e9909be620`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 8.1 MB (8066499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ef39bb77a94eb470d82db275f3743da636515d3db4027f45499baac5c510b4`  
		Last Modified: Wed, 28 Oct 2026 01:40:26 GMT  
		Size: 1.1 MB (1137503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2493ead6e7dc5397edc8d8c3bf6ac650242a57afba183398371e800eaa51727a`  
		Last Modified: Wed, 28 Oct 2026 01:40:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2983cc956c61aa305ad415dfb8a60cb3138960b9d9d27c3bb9c71a682e65f841`  
		Last Modified: Wed, 28 Oct 2026 01:40:27 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9c821c91e1f76a0b72e19c0999059b73059f7ce7f69fe830f7ce1c97d8ade3`  
		Last Modified: Wed, 28 Oct 2026 01:40:28 GMT  
		Size: 50.6 MB (50604302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c483c7ee32fa21ac3ceeabdef30d5d5bb97d39fed8124a07a71546aee2bea6`  
		Last Modified: Wed, 28 Oct 2026 01:40:27 GMT  
		Size: 21.5 KB (21518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5efb19b0eb5921cb441afebf2b5bcf7a0b2d864f0a97f26fea599e5086145fb`  
		Last Modified: Wed, 28 Oct 2026 01:40:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77fdde636b0b07900e4f0dca362833a8533427b6a43999f53946b0550578415`  
		Last Modified: Wed, 28 Oct 2026 01:40:28 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0cf8b5ba9077d18ae7282cf4beb18d288e22d77c98c1bdb44cfc8801a76123`  
		Last Modified: Wed, 28 Oct 2026 01:40:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9f4ac9ec89f411469d5ffd0442d61bb41b19eff7dc3c0fa3685b8f4249e1a884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5380251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ac16f1d49eab1af469cc33ecbca84b9370abc7b8f07f7ddff22196b95cd716`

```dockerfile
```

-	Layers:
	-	`sha256:cb9ce7cf99198d09350f11b21c39530bf4fb6676782af05b1d59dce50c980378`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 5.3 MB (5329307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:179d12ec1473ace21af2996c4ad891e987e34ba56ad233fb4a695fc8c8b8ae24`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 50.9 KB (50944 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:03d5b8b10b732b61537d279de18e43436ca39ebb5c36e568dbd0983309a28c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171991660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80008b74c60683fc105ce014b9f469cd7edb6619bf389b47c71d8db54a27ddf`
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
ENV PG_MAJOR=19
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 28 Oct 2026 03:57:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 03:57:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 03:57:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 03:57:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 28 Oct 2026 03:57:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 28 Oct 2026 03:57:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:57:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 03:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:57:55 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 03:57:55 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 03:57:55 GMT
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
	-	`sha256:35f46a6c48ef7ac60bebbc327e563574dc314b1bc3a3f41dee38e8796b567295`  
		Last Modified: Wed, 28 Oct 2026 03:58:47 GMT  
		Size: 123.9 MB (123938790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85eee90276644404bf8d5c71fa50adcc0820d9ceee5be20e5af7ffa3ae40f9de`  
		Last Modified: Wed, 28 Oct 2026 03:58:45 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0120ce749fafd0039e441f674b62f73191e06ad13e80b8cb015562890fbc575`  
		Last Modified: Wed, 28 Oct 2026 03:58:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518fe5279f7480ecd4843e3788fd84056794cf677f52f529ac7bf1a38a8ad392`  
		Last Modified: Wed, 28 Oct 2026 03:58:45 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2393a553139ca0cb17458c9f6c6c539ee86a9fed3242b26da160964873ad8dbd`  
		Last Modified: Wed, 28 Oct 2026 03:58:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:3b9859552d850abd81a054d3498d67c0e30d3756233eea11c65e68006f98ca82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6261363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d09f5482f24c7193095e4dc6ab4b33ec90a87ca815854b5bfb4efcc285c9cd`

```dockerfile
```

-	Layers:
	-	`sha256:be635d923dc9ca7c57ab12f15ad9ad913fbb83e6571250ff29d8bc1ad7124f13`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 6.2 MB (6210331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fc79ad7b25e4c21b9227b38e641bcdcac41b46e8edabc619542ec7f1c352057`  
		Last Modified: Wed, 28 Oct 2026 03:58:42 GMT  
		Size: 51.0 KB (51032 bytes)  
		MIME: application/vnd.in-toto+json
