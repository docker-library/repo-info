## `postgres:19beta2-trixie`

```console
$ docker pull postgres@sha256:87d865d3f0bbc255e86cc45bf230d6afbe4a2ccafee4ca7e9ddd40a1591300b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `postgres:19beta2-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:28576e3117ff9c7cb7e960740d658f9e9005c8415ec3c6d4b941fbd9f39fcfd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163670810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83ee67a5d723e7c066a29cbd7efaa62b141ec5bb9fc015fa0967c3f943f373c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 22:04:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:59 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:04:59 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:03 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:05:03 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:05:03 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Thu, 16 Jul 2026 22:05:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:05:19 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:05:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:05:19 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:05:19 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:05:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55a10593233f6828ace9c4e0200e367b15aa0b5ffc16b9e6123d8daf0cea702`  
		Last Modified: Thu, 16 Jul 2026 22:05:38 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dc7f83cd35ceeed07d97167b0a78fbb2a4084d7711971997a03eeffafe2cfb`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 6.4 MB (6442972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a717243f94c92ce10db4768d4a1b7400bfd805f973d12c9aa39b71a20ed41ca`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 1.3 MB (1256735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fa9c2feb0e6bf5541b17ac23239943587e78a45f13fecdedca71897cceb592`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 8.2 MB (8203894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7084c58006837f78cdb5319e05bbefd26bd87596211439bce3b3462963306da9`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 1.3 MB (1311666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fbcb9ba9373d9182a01c96bf68b0936cfe4d31a810af4ca51a110d6649dbd7`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b888d8069b568254acbed01eee95d0e8921066b670b2de98d4a6e934f906934`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951df886a7d0dffaac6da4e6432e2c0606a12bf2604c7534b92dc56fa3c1b24e`  
		Last Modified: Thu, 16 Jul 2026 22:05:44 GMT  
		Size: 116.6 MB (116642356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845c3e29aa6dc2e2af54091051d2751d3c1c355b1aa3f538c0f1a69f8610da5d`  
		Last Modified: Thu, 16 Jul 2026 22:05:41 GMT  
		Size: 21.4 KB (21431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a9f0f4c6f222ac6705a445ab163d1ef2195899c85c92f24572d92aa7cc619e`  
		Last Modified: Thu, 16 Jul 2026 22:05:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:847a1d218d6d5147d4a00059875bee828adc23338951798d091e4bb4b9be3b03`  
		Last Modified: Thu, 16 Jul 2026 22:05:42 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230199092a0b299af9e029af2461e87dca3b7c518007949e58960cfac755b287`  
		Last Modified: Thu, 16 Jul 2026 22:05:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:576fedcaa2028759da6e85ec3a287d7de85231d11f88125f4d0cc78d166ca564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6049249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac81f0aefd877e71941fd9ad07066a75c229ba4db6ae3ebdbd0916161407e75`

```dockerfile
```

-	Layers:
	-	`sha256:88a8887b830513e04b94a341a689af777c869e57fcbab18f287c50f69a7e9a06`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 6.0 MB (5997939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93f82ee580b16f8069a58bc8c3ac8c675620bf533a916decf8ce8c3627a58a3e`  
		Last Modified: Thu, 16 Jul 2026 22:05:38 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a2cca5030663ae0eed9127a12605e28dddc50debbf18760c6b4f397b6ab42fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162250672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dd748ecd42c7915ae1474f64abe262538b2ede315605c16d07b3c8ada5466b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 22:04:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:46 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:04:51 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:04:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Thu, 16 Jul 2026 22:05:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:05:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:05:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:05:17 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:05:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:05:18 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:05:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:05:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf6bed04de252e877071929084f8bd623707e08a2a52211d8803cb8fdc76ab5`  
		Last Modified: Thu, 16 Jul 2026 22:05:37 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035af422d3d287ff80cb051f16065e0ee302caa8558a0e2d6c64942fcb67c392`  
		Last Modified: Thu, 16 Jul 2026 22:05:37 GMT  
		Size: 6.2 MB (6234878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19f08da9997892fe9243053ce66efabb8323e248e7273a44ebe2a5c9771e023`  
		Last Modified: Thu, 16 Jul 2026 22:05:37 GMT  
		Size: 1.2 MB (1209553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0e90f192fe114d3c09db49a17306c922b1598c317327fc0bb775eb4ccedcf3`  
		Last Modified: Thu, 16 Jul 2026 22:05:37 GMT  
		Size: 8.2 MB (8204048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476f0bd6ffcffea999d71dd8f4fee959e60687f1dbdebac119fdec7d946435ac`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 1.2 MB (1220625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46e1087e93398a1c3b453881a6eee0240c363aa1d64c07d163a0d55e8ffff2e`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d656b9e866eaec0504c373531cfd6060e59786f0ce5c39222b5dc64198a37f9`  
		Last Modified: Thu, 16 Jul 2026 22:05:39 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46dbaef7ba3cb4a71b8b6e1d92f803657232ac034b4bcd683d85e81b6292453`  
		Last Modified: Thu, 16 Jul 2026 22:05:42 GMT  
		Size: 115.2 MB (115205585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0feab57f05bba06eb62c6303edb262fa789d02df660e50b20cea5fb42314c8`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aba7860e257f5f59b30581aa8d2268318cfe5ad25561fdfb8f1f25dc5641a1b`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77cbf84db95dd4c4d59aff3a940f82e4a2328f7cb2eb926b6013ff377c9d99ee`  
		Last Modified: Thu, 16 Jul 2026 22:05:40 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c2bdabca8313e00f0809961d849befa083b8846e27ac2c56c9d853e4030db7`  
		Last Modified: Thu, 16 Jul 2026 22:05:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d924d90a4588409285b755c6e315304983c37ad724b1b4464ef17a74ab7c9056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6411d892dbbd5cbf90cdf118d6cc0975273406db21cb26591f91c1f0cc110a7`

```dockerfile
```

-	Layers:
	-	`sha256:c23aba42da61ae69c35b3b418d5d7da0dadb3bb224cc1a286c50d56ccda76761`  
		Last Modified: Thu, 16 Jul 2026 22:05:38 GMT  
		Size: 6.0 MB (6004256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f9117ac88a8e294bf2e0795e3757b2b147f1c70eb8cad2899907a96cf5b41ee`  
		Last Modified: Thu, 16 Jul 2026 22:05:37 GMT  
		Size: 51.5 KB (51539 bytes)  
		MIME: application/vnd.in-toto+json
