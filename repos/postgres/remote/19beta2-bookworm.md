## `postgres:19beta2-bookworm`

```console
$ docker pull postgres@sha256:9222211d932c983331df86f01a6224eba868d61000a334e4a3e613626cf884f0
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

### `postgres:19beta2-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:d40497ecbc8b240b7b84ecc07e42301f994130f2dd21bce7f568bad700f0a833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158512620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2a048c87a62bb68ab186a1549cb27854bbf9e26669d0066587bfcfc5e0ec17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:35:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:36:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:36:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:36:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:36:12 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:36:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:36:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:36:15 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:36:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:36:15 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Wed, 05 Aug 2026 00:36:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:36:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:36:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:36:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:36:36 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:36:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:36:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:36:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:36:36 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:36:36 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:36:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8595515e1ea29e534e97748e7f13d64330a7bc7d604d365b5c0213a50ab41325`  
		Last Modified: Wed, 05 Aug 2026 00:36:55 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219174e22b12003b267d638e3a0eec8fe04135ea532bbe33467844a767f929ea`  
		Last Modified: Wed, 05 Aug 2026 00:36:56 GMT  
		Size: 4.5 MB (4534284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39fa91f3fd135a7ff79c2cdb3c4e7e557644c594df9ed121b45386599ac9dfc`  
		Last Modified: Wed, 05 Aug 2026 00:36:55 GMT  
		Size: 1.2 MB (1249536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92d6571d46b42fff14b8fcaca5b0ca0a222e1f2d0c8afed20743881dcf79812`  
		Last Modified: Wed, 05 Aug 2026 00:36:56 GMT  
		Size: 8.1 MB (8066426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35f7450bb5c0c20aa3154b2109f6977eb9f7371d6f9584b204286d8ab3011a9`  
		Last Modified: Wed, 05 Aug 2026 00:36:56 GMT  
		Size: 1.2 MB (1196416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a46fc5b9fadc36ddde1fb0f76a5e862bc2536450af6590a1a7c73df5fd941c5`  
		Last Modified: Wed, 05 Aug 2026 00:36:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd679196d6cac81b1ea1fac2915f7673a7e92ac076ce71286419868b312ff1b`  
		Last Modified: Wed, 05 Aug 2026 00:36:57 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8671241ba30dbbc80e370075340ad6352e834abb4ab977593af9eaaa0a004e9`  
		Last Modified: Wed, 05 Aug 2026 00:36:59 GMT  
		Size: 115.2 MB (115201189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5755256bc0b46b86b4f5b9c50ad7de986865d80ffd19aaf70513b6cc61466ed`  
		Last Modified: Wed, 05 Aug 2026 00:36:58 GMT  
		Size: 21.3 KB (21331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0a071ba7da94767a376d450f9b74d017400259fc807db878e54417f91d3297`  
		Last Modified: Wed, 05 Aug 2026 00:36:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69538695d13ff973c721d8b68d1f43a82534cb6819ca31fdcf8374185f7df332`  
		Last Modified: Wed, 05 Aug 2026 00:36:58 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e0dbb85c407ec494552be3c1520e42e049a44f6718a9aa33cd8f542e9ef60b`  
		Last Modified: Wed, 05 Aug 2026 00:36:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:3b2d7097a68cc96b7250a06dfda21dad176da33e6111034e656c40076dd26f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6249099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badaa6ee2a86b36bdc33df964d98432e3c017a9370e5fa7f7c3e53e583feffb7`

```dockerfile
```

-	Layers:
	-	`sha256:98786c70bc2ae74b4c49406eb7cceee9b43fbe59fb4b127439008e59d2352d97`  
		Last Modified: Wed, 05 Aug 2026 00:36:55 GMT  
		Size: 6.2 MB (6198097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edad3dcf7cc8dabda97b4635cb92277ef89587d439bdc6fa3d62f42f2a057bc0`  
		Last Modified: Wed, 05 Aug 2026 00:36:55 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b4f3298d3274a2fc28fc51a3671c8b2be9ee864d6493491123463358c8cecd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83844735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf7a86c6274137f76ba08af02104f7e3ce90c0035a6582a37de46476de5e59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:05:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 01:05:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:05 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:06:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:06:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 01:06:11 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 01:06:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 01:06:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:06:16 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 01:06:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 01:06:16 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Wed, 05 Aug 2026 01:18:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:18:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:18:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:18:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 01:18:16 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:18:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:18:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:18:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:18:16 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:18:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:18:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f8b2c63631fcf482d06aa93959dc007efa9fda61cc6cba13f4f9ae520fd537`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd23c27a5a17ae6a5b26c8c41484c46aa4da5304617c3a7d49e4e4e61d1e91a2`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 3.7 MB (3742706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab67d6a6d6f122628c4488f27be45f0f5c2ebc02c58f8815b68078193720a5b2`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 1.2 MB (1216174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711297e889400982e9f1f28e60b8aad9d1ebb1316c41a56414816207609889a2`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 8.1 MB (8066492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b2ed7339daffbb724f6e65cee15baafe2e2958b696abfac2a30cf46924e173`  
		Last Modified: Wed, 05 Aug 2026 01:18:30 GMT  
		Size: 1.1 MB (1067329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc11f5031cd72ae937d14548301de6ddde4f63e3bfad7c0ec4ae1b7b6131be5`  
		Last Modified: Wed, 05 Aug 2026 01:18:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41cc74cdcab9cecf0ab31e06fa00cb0b7d6587afca1e3ee1b011dd8616b211c`  
		Last Modified: Wed, 05 Aug 2026 01:18:30 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1a00dd247f0a299f1145fd4d16d9684ec54c17312b7c10284a7a71cf1ffdce`  
		Last Modified: Wed, 05 Aug 2026 01:18:31 GMT  
		Size: 45.8 MB (45780105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fed8501c6695b7507eb1639cc4da6b5eb1c5ea7b47434dd57d5dc1e5fdd51a`  
		Last Modified: Wed, 05 Aug 2026 01:18:31 GMT  
		Size: 21.3 KB (21334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dcc488f635265534b93f226d8dbc28dff84f6b22d653dab19a3f37b4387953`  
		Last Modified: Wed, 05 Aug 2026 01:18:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed078a7e40e396a0355075956a8d568347f554b2fb0913e5b538aa639d050a3`  
		Last Modified: Wed, 05 Aug 2026 01:18:31 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f6b8550db0fe7d01587cd20afeb67025c88c4ffd8802a828d201bf94b64e23`  
		Last Modified: Wed, 05 Aug 2026 01:18:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:23f42b9127b07a2088b3a3af8bc0fb8dac79f3ace9fc2d25ab4295a7fedd10a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9808d99cbb107033c0e89ecc913ee33eb5dd417e69cd88ceb5a5ba7b5db96507`

```dockerfile
```

-	Layers:
	-	`sha256:c762e222ccd40ebc52231145daad4b04cd557807e4ec5077a6b727211fe98cda`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 5.3 MB (5324984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b4702147692bc36b98bf3ba489b0c9696d86f4c26b4c4c4df79d31f2a1126d3`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 51.2 KB (51183 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8ec24d611596fb6c6656b3a1e30acfb9083c94c25f2ed3f2fe3682492882ee53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156462760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5959b36cfd426f06a204f65b8280b190d8e135d16c01b9ff63693574c985f0b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:37:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:37:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:37:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:37:34 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:37:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:37:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:37:38 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:37:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:37:38 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Wed, 05 Aug 2026 00:37:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:37:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:37:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:59 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:37:59 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:37:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:37:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:37:59 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:37:59 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:37:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc564b15e5f0b8417c6b45259aa865acd9ccbacee34ddcc2123422a20f59b038`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea7c39dead7aaec7422f1dc585482aa47e6ba25b3e7b01130b15d044e0f505e`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 4.5 MB (4519538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af7ef9c62ef2b4a2cf93d9245397dce7ce6891ce885133b6d794a3ad4d040b6`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 1.2 MB (1203278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3f942ddbdac61f104812e8ab2890e1773a17010f91db4192065e0a84e5b27b`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 8.1 MB (8066457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb321c0b071a4fb8b82640ed36aabf7e39c10526b187727921778db467723199`  
		Last Modified: Wed, 05 Aug 2026 00:38:19 GMT  
		Size: 1.1 MB (1108985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b3787e30937fb5f7b840ca578ec2a2fe7c60a0abe7cdc31206af34e5afc4c7`  
		Last Modified: Wed, 05 Aug 2026 00:38:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b31adf084c98074778683bc4f0ff3a1fbe4ea4d0f1af706d8cefd4881b1bf85`  
		Last Modified: Wed, 05 Aug 2026 00:38:19 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822a703b58eaeef6a4a237f9924f19cb5e319174191c885d68eba4a92126120f`  
		Last Modified: Wed, 05 Aug 2026 00:38:22 GMT  
		Size: 113.4 MB (113415121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fff9042f6840b45add74c43101dd3bdd85ca5b32b72d3d55c3e55421dd00bdb`  
		Last Modified: Wed, 05 Aug 2026 00:38:21 GMT  
		Size: 21.3 KB (21332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66c2409b59a4d17aaec521d5ad71ab441d7be2c1e7189fa7e33fff5f8a0aaa2`  
		Last Modified: Wed, 05 Aug 2026 00:38:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481175238b5273468a5e2f4be00b04122c38422e507a7c06ca6c5ed1f8736ab2`  
		Last Modified: Wed, 05 Aug 2026 00:38:21 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a43f706e9148f289bfffa6c821e4338afffa01c1fee57d92958f76ced2bfc6`  
		Last Modified: Wed, 05 Aug 2026 00:38:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:6ab9afa853bea38349b9f568ee4d4bcb9d9a239cd1b0e173dbe4965aca5917ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:094c0756959c3a6ea9205c66d0ffc9f9efc1a19f2868b24aa3c8f7ad5098349c`

```dockerfile
```

-	Layers:
	-	`sha256:26b3f49147c6eb17c2795af8368273187e65e591c19a66619d244d1b7539aace`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 6.2 MB (6204398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e73cece577f708eebccf7ef27d071132f497f3f4c23d9a9a9d698346bfc301e`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 51.2 KB (51220 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:94ec7af75d54dc1b01d78416bb11ad131fc2b7d343381935b74ac1bfece7cb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94614237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0287b676ecd302da3dbb4efaeeacae4b4cbd2c6325f2808fd16b0c1b70f40f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:32:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:32:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:32:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:32:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:32:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:32:33 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:32:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:32:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:32:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:32:37 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:32:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:32:37 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Wed, 05 Aug 2026 00:41:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:41:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:41:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:41:38 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:41:38 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:41:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:41:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:41:38 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:41:38 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:41:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542a1b5f0db1c8d46641a8be115f144be19507a9e8c19f397716e3a270145e86`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0006446ec65297282e0669eaf98e060795178e98f7108053d06e7c33eae33a7`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 5.0 MB (4966122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e1468788ddd98c8531a15fb25d682352b975f985748fb88a5f058bfcc0f45e`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 1.2 MB (1218654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5a9a2cf073cffbdcde270a72fdbad9e9172d8e6af167f252c5f018211ec881`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 8.1 MB (8066450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d7b77402e6876a553af513d213f98c1657acc3ddfb8390e1250d1d15b2d6a3`  
		Last Modified: Wed, 05 Aug 2026 00:41:51 GMT  
		Size: 1.1 MB (1137495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7c531fcf70245d2e36ede1b5985640e345f898feff1424b326ec1e5bba06b2`  
		Last Modified: Wed, 05 Aug 2026 00:41:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef250273c46a4e8e93ed8fac9139a48d626e2e5e1d6561d2e0f0b2dff644ce95`  
		Last Modified: Wed, 05 Aug 2026 00:41:52 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71f9d4a8e3674f351c046b0e20fb338d86e05fb4d8fec61d85fbfb9aaf37af1`  
		Last Modified: Wed, 05 Aug 2026 00:41:53 GMT  
		Size: 50.0 MB (49972358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9469c54c869177e910bcab88e56271115f4428780edbe4a80d15e3872724d6cb`  
		Last Modified: Wed, 05 Aug 2026 00:41:53 GMT  
		Size: 21.3 KB (21331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232c46e49cc9aa66fcdd2a59dc0646925a7e0085f2c025e0b3ac28418291d0da`  
		Last Modified: Wed, 05 Aug 2026 00:41:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cce54bd33d4d2bfd96b1a9b7a5cb43837cdea70eefd1b79356be6336ee4119f`  
		Last Modified: Wed, 05 Aug 2026 00:41:53 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f57fe4bf3941aa6f6fef9ea7de34cc3ed1ff3f0f4c6f08bd7c3d4fa84a091d1`  
		Last Modified: Wed, 05 Aug 2026 00:41:54 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:44aa9362561a6428d507c4dce77e86dd6454e1221d4b313eefca8bb046266ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea33cf26a6354e603fb7bd339b3e7dde04b4281a5e77a36d3db5aeb0981df1c6`

```dockerfile
```

-	Layers:
	-	`sha256:bb8fdb8d72752cd4613e8bd21d9f5e7a8e6c25b9c594a74a0fd47a15408003c5`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 5.3 MB (5320325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9d1157a55af822026378e716bd2842b5340298efd2d3081655d03543e978cf1`  
		Last Modified: Wed, 05 Aug 2026 00:41:50 GMT  
		Size: 51.0 KB (50960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:20299be4d2b15b508011dd2c573809c1ca25d9e425a6ef1bc3b3d9aedd286461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171495862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c2f66e7fa3feba725ec96240a46f7f14922c3e0844ef0fefbe2173c8db92c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Wed, 05 Aug 2026 00:49:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:49:10 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:49:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:49:11 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:49:11 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:49:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:49:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:49:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:49:12 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:49:12 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:49:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cec939a79644ab6bb78d28a444eebff366ed6b949f2b7290c972bdc67fa6f75`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b540a69468854421d4735efa7a83f681adc411de8c514dbd9b0226b58da5ff8`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 5.4 MB (5368560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb35cb0ec0deb640076d3857b908b44243fc6f9647e7a06c813803509dd30610`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 MB (1208180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97fe6452754394c6c13687328c4dd74149ba2f00bf61d6b8bb6d1a070fc892`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 8.1 MB (8066511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c09e453d5bfc9f19d37c4fe21e8fbe55a806430542ad4f894a620a8ee53ae39`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 1.3 MB (1283621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca6b0a85b1dd222d227227e64758c77d24db36e13875b8f144c7de1107ea63f`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16ede0afaeb0072156a4047fdb2b7cbd8ec5aebe178590a468624158eab2bc0`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f6e413df232fedce6acfe767835dbc2412bf557a258b222ba16d95bbc4df20`  
		Last Modified: Wed, 05 Aug 2026 00:49:56 GMT  
		Size: 123.5 MB (123460482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40275acb59d44d0bfc435f7a56a77d008e236ff27ab5739d3615fe24475e240`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 21.3 KB (21335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e20cc8e33188bb7c6712605557b993b9f5b6556193eb1c44c0aa447fadbcc4b`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cbda2e38b5c6114e1d496b38fb59d795304c30b793e1c10484865dadb786e45`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa4cb90f30743b2876d22a5119e2f5fb4e78bfea009b07c24dc077d0c779c6e`  
		Last Modified: Wed, 05 Aug 2026 00:49:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:8b4bdd040101234d7c615a713baa532eafd068eed8297379b38dbb8b07a08c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6256518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb07013db83f949c64bdfbe508211e9bf506d2af38c4d036a77a292743beae74`

```dockerfile
```

-	Layers:
	-	`sha256:899f2e9265ea8cc31a935cc681f52ebc0da514a231d8c8cb1a415d3e62995c9d`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 6.2 MB (6205470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4ed8a5c268a6a7403b48a8422bee812a04b60466bb6d5bc1b5214da2e8ecdda`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 51.0 KB (51048 bytes)  
		MIME: application/vnd.in-toto+json
