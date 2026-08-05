## `postgres:bookworm`

```console
$ docker pull postgres@sha256:882236b897e39051d2368c5ccc6cda944904723506b2dfc97f2a8f5bc9afa382
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
$ docker pull postgres@sha256:7e6103cf85f88f7a0eddb3ec0b1ba8940eba098ed118ade25a729ca9daee5568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157179710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526573c93ea530a230b553cc513075ab9d70b63bfd2300ef5eb5ad1cafbbc595`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:36:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:36:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:36:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:36:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:36:24 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:36:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:36:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:36:28 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:36:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:36:28 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Wed, 05 Aug 2026 00:36:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:36:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:36:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:36:43 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:36:43 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:36:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:36:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:36:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:36:43 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:36:43 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:36:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853c6f7300c9c2c8e87e555a1cef5400915097b9545c7d51b1cb3d3f48e39ece`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4254202d6898131b9d883e22e63168c2aa94d6d466d2bf1a3728a32cda9ca42`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 4.5 MB (4534234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7d2cb48c23c4097c2323c85415b2b7a9c5729f26ed9e853fbd017987fa84f2`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 1.2 MB (1249504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac52139599521b19b796288fd55f0ee1a061f866c03179a1e6e10e592b4cdd3a`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 8.1 MB (8066422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b018fb8995e0ed72b1874e2a0005d6cc61b795fb2d15085f7a8f8ae66a685e`  
		Last Modified: Wed, 05 Aug 2026 00:37:03 GMT  
		Size: 1.2 MB (1196463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39762d0b4bb22fb28e7a42cd8b9cca6a18447391cf4d0524b944ea9365dcd689`  
		Last Modified: Wed, 05 Aug 2026 00:37:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c50baa25267cc22d0eab2af100d04d7db935b350a5771bec8dedeefa28b351c`  
		Last Modified: Wed, 05 Aug 2026 00:37:03 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e717ee84f653836d5e0ad220edee6b98753dc06af79a202b471505e4df2b8cd`  
		Last Modified: Wed, 05 Aug 2026 00:37:06 GMT  
		Size: 113.9 MB (113870424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619686017db1ea2253fdf34c07e2e9e5c1fd2f2463d61e3831bfecbd40fb8c01`  
		Last Modified: Wed, 05 Aug 2026 00:37:04 GMT  
		Size: 19.2 KB (19223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41e1607aaa36cec5236b717f366c5f4cffb105d5306286aa031f32a9acc3208`  
		Last Modified: Wed, 05 Aug 2026 00:37:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143b53da8212177bf778824738bdeb4cfb7797670009f0bab6eaf6496d88a643`  
		Last Modified: Wed, 05 Aug 2026 00:37:05 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90dd111f2e536ce9f6ea373cc0019cd8c79de260096f01d300152d777a0c6b0`  
		Last Modified: Wed, 05 Aug 2026 00:37:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9cbdc7978e98734299f4ac77c2ce7ccb9f49a27d1e106c4335f64e420ae3c718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d2662007773581f7f5fc757798db12e07814553d0028428408276ace23891`

```dockerfile
```

-	Layers:
	-	`sha256:884ca01d86b50e8cd52d9d91a8891a931283ea9b9dd5a4e49e8647c2f3523acd`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 6.2 MB (6156569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:787482616884ae4200b46f4c572421bce80ca7023e2aa31d9533a3883204b99b`  
		Last Modified: Wed, 05 Aug 2026 00:37:02 GMT  
		Size: 51.6 KB (51590 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:48d0fbcdd4883aea643cab57cbfba7655010f49d6195e64e809cd5d7169feb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83362907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d745bd5d5e90ad38099a2ebb1b10f3f406fdc1cf2cbbf463c6699a5ffe6d10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:06:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 01:06:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:23 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:06:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:06:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 01:06:29 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 01:06:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 01:06:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:06:33 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 01:06:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 01:06:33 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Wed, 05 Aug 2026 01:18:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:18:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:18:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:18:13 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 01:18:13 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:18:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:18:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:18:14 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:18:14 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:18:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2f8f20fabeb25d526ed324a1075ca2222f969ea750cbc75a23d56f0ace306f`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8def2ef8cd9e9dd1654241775b90c483d37faaa87172eb806569a3239b99ebe6`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 3.7 MB (3742698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68f8998f4ede9f916d156acf98de4572cc06e545715cfae315444e2019ff884`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 1.2 MB (1216180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57891b7f39f4365fe0a6e83bf838f1db47509f8631ba9491198bcba0a14b75b3`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 8.1 MB (8066414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fcaa790ab7cb296c280ceb96f0a394274c9490063f7f98f9a3fa39845ea06c2`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 1.1 MB (1067324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d09ef449986f3792fb78bb69940c0e00a04485c8258f29cbadb00db5d27392`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4383065fd9e773b84df6c972c74983e437beb128ece711a96b20a15c1ff22813`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e68fd09a18f753bcabc3027f92c608fc0863f2e66922c6a74cdc09dd72b4a71`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 45.3 MB (45300467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4967a9db142ce9403071a390289b8b57e6c34a8a27088513467c5fe734a9dc22`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf8e6dc7dde0319521659c098236e467089ae531e7f9075d3b76f8d302e61ff`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed538cf1a4269c8a3b0ffc3e724081e1a9544dab6cf8b9e8742cc3eab65dec7f`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fb44aba0405fb8db94f79b9ee184983a68ea616eec7afa7428f992eee01e9a`  
		Last Modified: Wed, 05 Aug 2026 01:18:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d8bdeaa7a2ba87360537d8da07753369d713734375db858b23facbfb5c95f0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05575f0bb8fb8e6d61a6b62d3c63660e88918cba5b667d59f9832fb4cd5eecab`

```dockerfile
```

-	Layers:
	-	`sha256:46445095f65b8175ad9ca2409705abbf9a5f0b79076d9a170ce9968f56ec36a9`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 5.3 MB (5316339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3160493f1181fc55680595abd1fe26340206d695e2f36468ec6c8a0fc32c4c1`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 51.8 KB (51787 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:83b9631dbb4121d9235ef910018272798b7d3041ef5b716aa481122d4c49353f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155172868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd950fd4ca6d59e4fc748361bfb059f44907cc99577ae227d196adb29ad8913`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:37:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:38:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:38:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:38:09 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:38:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:38:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:38:12 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:38:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:38:12 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Wed, 05 Aug 2026 00:38:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:38:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:38:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:38:27 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:38:27 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:38:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:38:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:38:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:38:27 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:38:27 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:38:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2e127625d7179e114939a78a73ab2e6c3925cfb8622ab2e418a2c7496abdca`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd82edd525ee8bae64293d5ecf657ffb198509b16740d17824ea133ccf21b1e`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 4.5 MB (4519546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49bdf1ee67bcedba8b942e52eaee4937e62b639616cb0f2ff522bb083a948cca`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 1.2 MB (1203337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bd6e48804c71d77d7a8f9c439f9fa09fc3d8a49f725dcc80dff45d035a5e7f`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 8.1 MB (8066489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6789413bc378d8ad38524ce0b502d810d07eb692d8da9672fe546944daa2d299`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 1.1 MB (1108990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3076d446b6de85e777a2bebe322a6a1381e934783bb6be69ebe6426a19855708`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf06adc84ec5f8d5c243f755ff4aab76f4b107905b9ce8495c6b1655b2ff194e`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd75c7df9aaf474f0381714602fc323d0914f392f4fe7369dbae72d3c58695b3`  
		Last Modified: Wed, 05 Aug 2026 00:38:51 GMT  
		Size: 112.1 MB (112127229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9e0726c9ecc6d6104d0e956ec832233091ae4ddb516350cf3c77d722dda1b1`  
		Last Modified: Wed, 05 Aug 2026 00:38:49 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0472386c988aafdc733a6f4abca426c59aab675fe6eb991ae399149ea2df34a4`  
		Last Modified: Wed, 05 Aug 2026 00:38:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6fd2f453cb15d34cd683b09b18251786fa91f972f5fbc3dedfaa2e96a522f0`  
		Last Modified: Wed, 05 Aug 2026 00:38:49 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759b7aec44327e7b5f920ad99156c456b3b523ea80eb6bdc68a5fab0700d18b1`  
		Last Modified: Wed, 05 Aug 2026 00:38:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e91384e1c9c0ab530ceb87d9f23ed5bfc96926cd525154cd97eb0428e945ba61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6214726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e220a04499a94a8346764b46fbadda61d2755f193530e40226051060ac0850ec`

```dockerfile
```

-	Layers:
	-	`sha256:c021ccf9ac15a258f3373edfae821a271fee2a303970b09a00a31430f5bb8fd8`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 6.2 MB (6162894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a67db0459f38bb0bd57d4f17743702c080d45041f4a1c69c8cafcf708f9fd319`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 51.8 KB (51832 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; 386

```console
$ docker pull postgres@sha256:2dae39f04a28562ff465aa44242988867a0676ac03f9a41925c234419a1d17b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94046047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37c4dcdd819202b866e5318d87650821b83bea7c00eb5b0a0d1d92c9fd825acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:33:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:33:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:33:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:33:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:33:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:33:37 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:33:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:33:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:33:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:33:40 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:33:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:33:40 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Wed, 05 Aug 2026 00:42:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:42:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:42:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:42:56 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:42:56 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:42:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:42:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:42:57 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:42:57 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:42:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd68d014a697828ba88ee1b202b8070d6b17333bb34fb3aadeda8a63562a2f23`  
		Last Modified: Wed, 05 Aug 2026 00:43:09 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fee1c6e834e85d596b560a92cdd12ee0e19a8c7decc8aac56efe02d02fb2996`  
		Last Modified: Wed, 05 Aug 2026 00:43:09 GMT  
		Size: 5.0 MB (4966108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6e5c2785ff0198c639dd6e1ed84efa14ebdb17630d1583dcd4eaab6e4dc486`  
		Last Modified: Wed, 05 Aug 2026 00:43:09 GMT  
		Size: 1.2 MB (1218660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0387ecdb6d79095218ad17e89f1ec597587c6bc2da5a1f04ac48eff0717b0d8d`  
		Last Modified: Wed, 05 Aug 2026 00:43:10 GMT  
		Size: 8.1 MB (8066468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3fb29db677dd01bf33610a232f1364d28555d630e4e1483f5385abf178068`  
		Last Modified: Wed, 05 Aug 2026 00:43:11 GMT  
		Size: 1.1 MB (1137529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cba263431e2ccdfd749bce67f0dac8acdb017ae5b2d398a93aa03e4230c6e8e`  
		Last Modified: Wed, 05 Aug 2026 00:43:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d1e3bfac0d21780cc4a182c298d5b70af3a7ca93d61e83fd1b1a3ff3f7e82`  
		Last Modified: Wed, 05 Aug 2026 00:43:11 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4aaa19a04f3958c90c4f5c0f78979693eb4793edeb1fd3b8645ca5254815819`  
		Last Modified: Wed, 05 Aug 2026 00:43:12 GMT  
		Size: 49.4 MB (49406226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafeab82c431bff971526e2ef915a74d0e4274b6042da4a8ca7a7a2b8cc2f6b0`  
		Last Modified: Wed, 05 Aug 2026 00:43:12 GMT  
		Size: 19.2 KB (19232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2d27ed330b944516171204a95b08b9005d539b06cad4b9bac7b34d9ad55f30`  
		Last Modified: Wed, 05 Aug 2026 00:43:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb743be7bbb908a6db626522aa8f2cb76e179eb77e2a6105dd9e8e79f4b35cd`  
		Last Modified: Wed, 05 Aug 2026 00:43:12 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd4888af3f3700c422254684ae35f6b6dc24f8b9ddaaf0166e90a68bad573d9`  
		Last Modified: Wed, 05 Aug 2026 00:43:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:5b88c022f5195d6d2036e83078bab00351ba42de10038ed2821548352276aefa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56adaf6f32a25acd0c4c947fb2375086e01e8ee84ccedd6b294c3ed7b7a541ee`

```dockerfile
```

-	Layers:
	-	`sha256:c2aa445c4dc31af49d4c54134683cb35f9249889a5f215c096072e72432a9f09`  
		Last Modified: Wed, 05 Aug 2026 00:43:09 GMT  
		Size: 5.3 MB (5311654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dcab14a9cafcec716199dbd1a37bbb3649a48c1958d30628075f5e2d1736241`  
		Last Modified: Wed, 05 Aug 2026 00:43:09 GMT  
		Size: 51.5 KB (51538 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:23d8763ef4e42b4f25a5df7de2fbc9fccb1f8099e144123d09227655db38dfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170072934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73c408bf3b9f42732b35d55691b0a8c0ff5a7460a94cca3313a195ff2b4c3fc`
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
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Wed, 05 Aug 2026 00:50:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:50:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:50:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:50:04 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:50:04 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:50:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:50:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:50:05 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:50:05 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:50:05 GMT
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
	-	`sha256:ee0302c1330efddb2bff33ea1aae4e65bf3a62eb59d0db1b66faf5237d171173`  
		Last Modified: Wed, 05 Aug 2026 00:50:48 GMT  
		Size: 122.0 MB (122039666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2e8eb5d207243a5c0a9c7eea45ce1d234662479d46a001d49cfeb7f35b5061`  
		Last Modified: Wed, 05 Aug 2026 00:50:45 GMT  
		Size: 19.2 KB (19228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a73f7eae104287de3ccf73cd172306a00da4532e70489e65cbbfaf116d5e92`  
		Last Modified: Wed, 05 Aug 2026 00:50:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7064dd469cfd999e704bdff04cc7575d4f0ccb7ae40dd392700b5dd8fcb867d5`  
		Last Modified: Wed, 05 Aug 2026 00:50:45 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a601c225aa38f12317213e048fd7ac86b75b907fc67c2452b1d9ec6816015d26`  
		Last Modified: Wed, 05 Aug 2026 00:50:46 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c1659fee7efcf1684f07320d5e48c72164ceb2a592e27a9e1058598bcb26903f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6215602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17eccd17f6e211a20c355b30f90d5917a419e76a56615278ecb1ea6defbad9d`

```dockerfile
```

-	Layers:
	-	`sha256:02df833800736328cb63a47b7aadd84a855167a37d5c336e23300f11b408e03f`  
		Last Modified: Wed, 05 Aug 2026 00:50:45 GMT  
		Size: 6.2 MB (6163954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a57f9b83168ffce95432a7ea6e276ba439baad431463fc0a1f648b41438eeb91`  
		Last Modified: Wed, 05 Aug 2026 00:50:44 GMT  
		Size: 51.6 KB (51648 bytes)  
		MIME: application/vnd.in-toto+json
