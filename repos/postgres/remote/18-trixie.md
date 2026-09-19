## `postgres:18-trixie`

```console
$ docker pull postgres@sha256:86c951e05bf56c93d95d397747fb8820ac76cc3bedb78f43abd83eedbe3666ae
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

### `postgres:18-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:0377e72c5289ed2f98cf61b1a9c2db9eb9d300317fe14244492fbc94343b3d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162473560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662db3da228c2ea2649b3ae04db4b4479e85fea5979f6a917a7f6d5cb1e7ec39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:35:41 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:35:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:35:53 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:35:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:35:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:35:57 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:36:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:36:00 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 00:36:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 00:36:00 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 00:36:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:36:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:36:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:15 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 00:36:15 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:36:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:36:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:36:15 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:36:15 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:36:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646f8088ba62f8210d5051c82da5008ed30cbc6430ea14a639097d3198c64801`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c7e2f79e69a785e9b1b3109f7fdc478b95172987dc6e13a686aca284464743`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 6.4 MB (6443022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4640014a8e8825dcbd114cad5aac7caafdac3ea2c7b83f5fbdf5397b1dbf9bd0`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 1.3 MB (1256766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e9cf2c46c2075ac039510aa6db6ce7f3489b29aff2ed50c9690e82b9a5d747`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 8.2 MB (8203833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee6b8b2d25988a317c9443c18cc92ed31e7b44a6d17d684ce73da16256ecda4`  
		Last Modified: Sat, 19 Sep 2026 00:36:34 GMT  
		Size: 1.3 MB (1311722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580a6c126420b6325dd7753fe724f13d695891062014559c6d248d35ce998b9a`  
		Last Modified: Sat, 19 Sep 2026 00:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41837be3e54de999ce003863e6dd8e3277ef73edbf81552c8ff04bc3f2a9a44e`  
		Last Modified: Sat, 19 Sep 2026 00:36:35 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba753ffc208568fc94d34ee3ce93b8631b8651412d8dcc3839cf9724561f2c8`  
		Last Modified: Sat, 19 Sep 2026 00:36:37 GMT  
		Size: 115.4 MB (115397538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e422c951642266793140d4d7a55962d74906cf8785c7eb0c518d26ca1b7c5bf`  
		Last Modified: Sat, 19 Sep 2026 00:36:35 GMT  
		Size: 19.4 KB (19418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5a76842a4c902d152f70802f0e46f23e4315b78d2397d9b64ab226e7f3d341`  
		Last Modified: Sat, 19 Sep 2026 00:36:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5696a7190adff79a2d3b424975302cd8c201057256a6842eef7045331e07d277`  
		Last Modified: Sat, 19 Sep 2026 00:36:36 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0757c8de7f6e37bf2af30ccfcdaa8a2cf0a9a21e9b9ae56144ac84b00e0574`  
		Last Modified: Sat, 19 Sep 2026 00:36:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:42b85885528604a1e329d7e5d7475f9bf7b1ebb530d2a7e4add1aca54f3c2382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6015415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f6b7109c6780053639141171c4611a7661758a8397d5077927a3ef023d32fc`

```dockerfile
```

-	Layers:
	-	`sha256:05d71ffe696fbee4520f720f3686a8242c68ca16ad938e73ede946ad9a9b925d`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 6.0 MB (5962937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:861221eab2eb4043b7429e144cc993f601454c3bd242188567bb2ce48dbc661a`  
		Last Modified: Sat, 19 Sep 2026 00:36:33 GMT  
		Size: 52.5 KB (52478 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:a10c740727809bfbb0c95f9ef7602298591bc949f8605477a1be1f797413ce49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91571765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c1a496c9d229eac43d0b824b25df1d0237213e55340eeabe3bed6ef1016709`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:06 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:41:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:27 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:41:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:41:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:41:35 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:41:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:41:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:41:43 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 00:41:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 00:41:43 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 00:55:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:55:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:55:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:55:05 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 00:55:05 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:55:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:55:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:55:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:55:05 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:55:05 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:55:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e1472d9d3ad8263fd6cd4bcf5156668908e3001855cbc5620a32c3aed88c7a`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b2b9ecedb3f04b8cc417d0b25aca220163cc3324fe6da4a298bc9ed46303a7`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 5.9 MB (5932426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac278043bc3ccabb671622a0204c0df3539fcf5394c724bcc500ee49b6fab8cb`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 1.2 MB (1227489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e512627f0613a44c22254014dadd5f2a44943d7e0e5512c9f1a4d07070633ca1`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 8.2 MB (8204265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86927ed1bf797ce331c5021d69e461b1f556241b6d8caabe7a16513b5e744ef7`  
		Last Modified: Sat, 19 Sep 2026 00:55:19 GMT  
		Size: 1.3 MB (1317358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6607596884ebfa5b3e56a72b904a670062049d72cf16c6ac40917750ddb4639e`  
		Last Modified: Sat, 19 Sep 2026 00:55:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542bd5ebab52fd9ae148a26f8b4419c47b0df46619251b12aa076281beaf03a9`  
		Last Modified: Sat, 19 Sep 2026 00:55:19 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0699d7b8c75dce16d6758e67c09ce0eaea0ebbb54468a537f5773557e4b651c8`  
		Last Modified: Sat, 19 Sep 2026 00:55:21 GMT  
		Size: 46.9 MB (46861936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d62718ab119b2c7d225691c965e93710564b1baf6a61e8ad12dc880f6c4e19`  
		Last Modified: Sat, 19 Sep 2026 00:55:20 GMT  
		Size: 19.4 KB (19413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cfbb1b849f3fb27936049b66e9ba871d3bb561fa242fd887a3469efbc60643`  
		Last Modified: Sat, 19 Sep 2026 00:55:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c4892cda6cc11013007676b19b35f90c4d2ba4ed92139ae0680405702c200`  
		Last Modified: Sat, 19 Sep 2026 00:55:21 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98dd6db45e959e65cdff22b0ac3165fe2c60c62e4ceca06d708c4e12015620de`  
		Last Modified: Sat, 19 Sep 2026 00:55:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f21b2e74ce869432e914280ecd23f9fb04f29580be77be5f66d368d94a2f3e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990c55addc2655c65ac36449cd47f0dee375e552e9f5f1642ec794e0cc62adc6`

```dockerfile
```

-	Layers:
	-	`sha256:fc39b3506fc11162beb304b0dc898e49e814b21acb2bbefa5f01bbef1aec898a`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 5.1 MB (5126102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284f15bc05366beca19b81430f4e21455c9ed98ced1ab97fe94196f2dcf1d9eb`  
		Last Modified: Sat, 19 Sep 2026 00:55:18 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d49ba730932410f34374902b1fe8a73e5a142cd4c0519e3a11f7872810e13d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87888573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fd84bc463a37c2b6bc5c0f3c4730bd8d5c3fae314ebe859578f95d3bd88bbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:10:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 01:10:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:10:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:10:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:10:38 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 01:10:38 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 01:10:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:10:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 01:10:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 01:10:44 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 01:10:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 01:10:44 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 01:22:35 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 01:22:35 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 01:22:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:22:35 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 01:22:35 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 01:22:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a5b43525ea1fe310f0dcfd21c1feacbb4967c93acacbd5540f401c94ce5f97`  
		Last Modified: Sat, 19 Sep 2026 01:22:47 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892a39ab302d1d80210ba0af7a7a004585945ff70321770ded95e0f5505106a9`  
		Last Modified: Sat, 19 Sep 2026 01:22:48 GMT  
		Size: 5.5 MB (5497316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67af03808e415859bd46367e6454acef84b904887dbe4054802d8507d3c20fd2`  
		Last Modified: Sat, 19 Sep 2026 01:22:47 GMT  
		Size: 1.2 MB (1222409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86395f61826711af17fd11144f1e3aa347b170690495627bfc983dababdba6c`  
		Last Modified: Sat, 19 Sep 2026 01:22:48 GMT  
		Size: 8.2 MB (8204065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7a0d99065b4b90f4382a11dfc7dd4ea847a4565f16dc238d63b25d724515a4`  
		Last Modified: Sat, 19 Sep 2026 01:22:48 GMT  
		Size: 1.2 MB (1172684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd99f7842c626b9ea81786bdf9c0c16b967d6bb79519e1b8b5719b7d5905386`  
		Last Modified: Sat, 19 Sep 2026 01:22:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb8afffc0483030dbca6cc70d40b8f9aa31cb640a392dff20b3b5ef08d2d011`  
		Last Modified: Sat, 19 Sep 2026 01:22:49 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970201bd3948c460f7beddf9ac9fac452f27af9c469d259ce2040d3d63e51719`  
		Last Modified: Sat, 19 Sep 2026 01:22:50 GMT  
		Size: 45.5 MB (45512893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b01e2b8fb91b79e726421292cb36c9508581eac01b3a0b73a3e86ec5f71bb3`  
		Last Modified: Sat, 19 Sep 2026 01:22:50 GMT  
		Size: 19.4 KB (19427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e85061019314bab3d39969284d8175d65e0bcd78f059bb29b2997bb960d3ac7`  
		Last Modified: Sat, 19 Sep 2026 01:22:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b195c36e90f7d376716c53e5151f9266248fdfdd6c061627f2cd38744db7b71a`  
		Last Modified: Sat, 19 Sep 2026 01:22:50 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cf8328af0411e0dcb260003ed73133e473f84103cfc4b9b52cdf2b8371d880`  
		Last Modified: Sat, 19 Sep 2026 01:22:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d939f65fcea08d6a9ea163fda4a06f2aef65c5212c9e8f5110324b5fd352d878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a0d9922783f6b2da7f89ab87a7a68d53d4d03e0c40102999463c21ce3727aa`

```dockerfile
```

-	Layers:
	-	`sha256:03816705d8b03fe14beb47d2d7b5a534e89e6c8750b323eff23e33d8bdebcac5`  
		Last Modified: Sat, 19 Sep 2026 01:22:48 GMT  
		Size: 5.1 MB (5125407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d38448f42cd05dc015b80cde56b320282e3abd58107e2ab3dde8217534572a0e`  
		Last Modified: Sat, 19 Sep 2026 01:22:47 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f4fcd2b983483177b15d72d94fb3614736211554f7cac5c2cc54a05c75110b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161088536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a40176c29aa0c7a20a19f85ddddc47f72d8d6789a7a86a21f3713e71fb4ad6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:37:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:37:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:38:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:38:01 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:38:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:38:05 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:38:05 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 00:38:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 00:38:05 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 00:38:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 00:38:23 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:38:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:23 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:38:23 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:38:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb3da1207fb0ebf4143b93c04ea36638a3629132a3912b94ad2254c71ec8004`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed71f8ea61680a062449bb88ebb75c7be362d46d0039ad3cf3ce6ca4e82d955`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 6.2 MB (6234971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1403d62e3cbc767c925af4aa9befcf55f955eb0051dadfe7a683f191e308606`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 1.2 MB (1209583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc003b59a59c16590357cc1037651f8ef42fb99d602227dd439092869af381a`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 8.2 MB (8203992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b533a7bda192602ded729927baa02c7fcc3d1d1f897651ad71cb8bf9918225`  
		Last Modified: Sat, 19 Sep 2026 00:38:44 GMT  
		Size: 1.2 MB (1220649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72599679e1072e3020290b7d7a670ccb5eb35d78293312f5c800883195725524`  
		Last Modified: Sat, 19 Sep 2026 00:38:44 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69fdff9983c24d8818fe3e3b644e90bdab38f61b5b380d991644a6dd177dbcd`  
		Last Modified: Sat, 19 Sep 2026 00:38:45 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e113e7ca6e57174ccc6bca4e3afbf8ef1c316eb187eef370d1fb5dcb9b527cd`  
		Last Modified: Sat, 19 Sep 2026 00:38:47 GMT  
		Size: 114.0 MB (113999390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49f50ad5d8177140767d57f64a06a3903d0c546df7c2cc05533dff324413a82`  
		Last Modified: Sat, 19 Sep 2026 00:38:46 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ddcac00589d8bca036c351b39e64d80d01bab8ee34657b5ab061dff4dd097c0`  
		Last Modified: Sat, 19 Sep 2026 00:38:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2bc391ed595f7d2736f8fa0cc1ce5b2d39a5fd3ab5d5ac83f5d4d1c38128d5`  
		Last Modified: Sat, 19 Sep 2026 00:38:46 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ea0f6c84c52cea1b676249dc142fed27d6835453296496ab35a60ef882daaf`  
		Last Modified: Sat, 19 Sep 2026 00:38:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0c9f92b5754c6b947712057605f1b8759b2a7b0a02ca9363a90f3a0bbef1728a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e324cea94589e005b8fd5deac15c92b084cd401b6f421dad68046000c453d2`

```dockerfile
```

-	Layers:
	-	`sha256:714ac186dd21b3854252996b24240b53453afde88e2fd9d06f3868ad7b77e908`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 6.0 MB (5969302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6957b4a3fffc7eee82ed37ea9530f8bb84ab7d0b002e241a67cf903ee79649d`  
		Last Modified: Sat, 19 Sep 2026 00:38:43 GMT  
		Size: 52.8 KB (52757 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; 386

```console
$ docker pull postgres@sha256:2d70d885084652d562d876150a801ae0461550e1dcb0e89c3186c4085b8aea2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97705749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d638377552ba06baf4103fc5288bccc9a7e3e174dc27d371576bee8ea83d93`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:38:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:38:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:38:23 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:38:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:38:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:38:28 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 00:38:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 00:38:28 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 00:47:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:47:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:47:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:47:08 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 00:47:08 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:47:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:47:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:08 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:47:08 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:47:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f054e7d64e618f5da24454e1434ab2869c8d7171ee4cda201f319d5cffe8cba1`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fd26f174d39c9db50e2b60de8caaa1887b56335af6bfb5cd99b6d61035efdd`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 6.6 MB (6631392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070b2cec87f258c7ba8e586eb67252b2aeb982bc3c711cff7d206912bb532041`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 1.2 MB (1225829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6ee2aec32513cd3b065f6a94d86299de227ae6f1312d74b5ac3166cfbbc9d1`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 8.2 MB (8203994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc6b5534b1bd65cf9fdac8ba9c6ff47db6d49c14c540e2fee250bd1c7faff55`  
		Last Modified: Sat, 19 Sep 2026 00:47:21 GMT  
		Size: 1.3 MB (1308278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157c84fcfbb2c95d87f1ba47abb438b85d595ff227a5a0801cd25d1ae4ff4f7d`  
		Last Modified: Sat, 19 Sep 2026 00:47:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40eac0630cba025dd48f3ddf2ac604742144d93b7000ca8016c61bcf639bd81`  
		Last Modified: Sat, 19 Sep 2026 00:47:21 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be007e580b3d588a7e4d7a8132205afb3758b2ba678d6c32057feddcf993efa`  
		Last Modified: Sat, 19 Sep 2026 00:47:23 GMT  
		Size: 49.0 MB (48965591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca4ec76adb1d348375090acc1fe3a9d6e80c64e53c5bdb66abab0396ecc67b4`  
		Last Modified: Sat, 19 Sep 2026 00:47:22 GMT  
		Size: 19.4 KB (19418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895092d264f1ee63b65bf0b133d7fc844633747312bd304028c1a7bb869fe48f`  
		Last Modified: Sat, 19 Sep 2026 00:47:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c8d046c07fed6176363599b8b428dee78b219860b2c230e1ad0c250791dd4b`  
		Last Modified: Sat, 19 Sep 2026 00:47:22 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db667a00b5c639edeb0a0f54e2108ee2323ce0c65ed6ed1042e61a93e27ed6d1`  
		Last Modified: Sat, 19 Sep 2026 00:47:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6dd73534fade1a97dd10f2db2ec97f89aaf9e73ae8f112ed4c7d28ba7b8eeb70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5173848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d262457fc57cdcce195afe0851e2e89521c1e5d6574d8d1f1d95ac09bfea6`

```dockerfile
```

-	Layers:
	-	`sha256:f9d2e1794351a8ca792d0695c6bb54121c2fa6107c52bc24d86b03d53f456f68`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 5.1 MB (5121435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1dd22a6976d97b54150cf27f58a137f833e849f9636677ed4bc837c6701cd07`  
		Last Modified: Sat, 19 Sep 2026 00:47:20 GMT  
		Size: 52.4 KB (52413 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:4c1d3a9a4980120d31c00f0270aea2ce7e219c7c648a431f618304ae68c52bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174893420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6528957f4228057bd030ead5b7eb8e0dc0ea93f94715fdcd9982a903f6c773f5`
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
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 02:51:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 02:51:03 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 02:51:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 02:51:04 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 02:51:04 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 02:51:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:51:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 02:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:51:04 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 02:51:04 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 02:51:04 GMT
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
	-	`sha256:d07fd58e64aeba26086f3adeec0856dc109e554efb3134ec69bbe1bc4de52c60`  
		Last Modified: Sat, 19 Sep 2026 02:52:01 GMT  
		Size: 123.3 MB (123331105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865d729cc7a76dbc583b7eb7e2dbb88023104711a560cdf39b64e64e956435aa`  
		Last Modified: Sat, 19 Sep 2026 02:51:58 GMT  
		Size: 19.4 KB (19417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f5bcafc2332d097467d65c855683e2fa3751165d0ba9fb6ddc91d1ac9df7fe`  
		Last Modified: Sat, 19 Sep 2026 02:51:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9678a93ba5d830d91f38883f99a1b3583d5a64d169fee74343f9339e4c78f0`  
		Last Modified: Sat, 19 Sep 2026 02:51:58 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbd316fb1c02516d5ab5a1540fc98671f48993429cbf93023ce06d837bd0136`  
		Last Modified: Sat, 19 Sep 2026 02:51:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0047240fcf6ccd89697f41883185473e823b84f610da37d7d92573326eabd86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31221eca8edb3b162964d774f4de4c286903449476e21b77434c9a01e8449f54`

```dockerfile
```

-	Layers:
	-	`sha256:67009672723e5093f7eba5a7796bc91040877093f45b405910eac4f1b6b9ab62`  
		Last Modified: Sat, 19 Sep 2026 02:51:58 GMT  
		Size: 6.0 MB (5969585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f84748b33da5315425abbcab6e7e67fbea789a6711480c3f34f22fa4678daa`  
		Last Modified: Sat, 19 Sep 2026 02:51:58 GMT  
		Size: 52.6 KB (52556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:7a77e12ff4d5eb6a7e2faa623f595e741e4638d25705b3fd2d1ddc1307dea28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95577799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6648fd6e25b56a0dd56f858660a1867a6dabfa147fb2694506cff442225e3bd`
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
ENV PG_MAJOR=18
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 26 Aug 2026 16:16:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 26 Aug 2026 16:17:00 GMT
VOLUME [/var/lib/postgresql]
# Wed, 26 Aug 2026 16:17:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 16:17:00 GMT
STOPSIGNAL SIGINT
# Wed, 26 Aug 2026 16:17:00 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 26 Aug 2026 16:17:00 GMT
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
	-	`sha256:ce61cb5f0fafe9612a4be85a3dd5b412541d2d79369f48900fea9b056285c0d7`  
		Last Modified: Wed, 26 Aug 2026 16:19:36 GMT  
		Size: 47.5 MB (47530342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c11536e70d89ac9bcb19759b5f160475b3f738596b78feecb7916eb9763b9b0`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 19.4 KB (19424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40171277afc0deb8797b26ddb225b228744d54779cf65c809e0297339d0557c4`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45600a3f6474d4750baa486caf47a2214d169b7a8fa51fe20d15f8bb070ea282`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c3e673f9401053b0a1ce2c36aa71db6fce650f4368a07e5cf5a6e915740f10`  
		Last Modified: Wed, 26 Aug 2026 16:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1881edc0eb2063419346bdee4e03a85fbe6170e9eff50c13959c72d93f070e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5163180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f98393f06d183b282bc9d23f05d8b45936a686aa5ca1a39664bf91dbfd3759`

```dockerfile
```

-	Layers:
	-	`sha256:a2c937d361a6916bcf1618a17667f5ec8f22f2b43ff9fa26e707dc3cc75e5c69`  
		Last Modified: Wed, 26 Aug 2026 16:19:29 GMT  
		Size: 5.1 MB (5110629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b50a8ca2ce75cf22e23e4f5b953c4ac991f97a98b9ddded3d3cd162e20052d4d`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 52.6 KB (52551 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:1aa146cf5a536efe94dc6750e9d9f6a94bf69daa0c6f0cb2c45fcebbec4a7697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177108274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:635148ec104e289dd1e172a19019f33de39946c485cb35b064ec6eb2d3b175ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:39:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:07 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:39:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:39:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:39:12 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:39:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:39:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:39:15 GMT
ENV PG_MAJOR=18
# Sat, 19 Sep 2026 00:39:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Sat, 19 Sep 2026 00:39:15 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 19 Sep 2026 00:51:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:51:03 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:51:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:51:03 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 19 Sep 2026 00:51:03 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:51:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:51:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:51:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:51:04 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:51:04 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:51:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36708f0fc25b3d359b7621c8907f06dd96d03567ef3a8e0cdc1f60a145b80a22`  
		Last Modified: Sat, 19 Sep 2026 00:51:19 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4caa060ad04e615db83615477af643a373af002d024fe7cc2c5340c7a2fe8e4f`  
		Last Modified: Sat, 19 Sep 2026 00:51:19 GMT  
		Size: 6.4 MB (6408502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e77d7651f333c5ace79bfbfe9dafea93b1b0c4e84fa6e6a9c9f1c7d9384c77`  
		Last Modified: Sat, 19 Sep 2026 00:51:19 GMT  
		Size: 1.2 MB (1230268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c8c2e394ac3b07a9c654095992adfdf0132546b91bc05006bee803a0a54e3d`  
		Last Modified: Sat, 19 Sep 2026 00:51:19 GMT  
		Size: 8.3 MB (8258984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbc08b5b4ea1e99e97098e11139b1cde4ee442c02030070d08ef52d6366068f`  
		Last Modified: Sat, 19 Sep 2026 00:51:20 GMT  
		Size: 1.4 MB (1398272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4266e42b334f52513823a1bd52d2aa9fdf2ad8f5feab93e8027e376d526fa52`  
		Last Modified: Sat, 19 Sep 2026 00:51:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcd5fd69b05b578514b279be8f1db199b689446fda9f1f8f3236f444956b57e`  
		Last Modified: Sat, 19 Sep 2026 00:51:20 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:371015e7d168a097f898de3b9a45955a6670dd92439835a67d1e28c94a9b585c`  
		Last Modified: Sat, 19 Sep 2026 00:51:34 GMT  
		Size: 129.9 MB (129882835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3472dbf002c01635c53f42629172a0ac2e530674828f1bc49a53507259d64104`  
		Last Modified: Sat, 19 Sep 2026 00:51:32 GMT  
		Size: 19.4 KB (19418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4759e656597dbdb15c0033dab05c3e77d631fad4b741474617647aab72c9829a`  
		Last Modified: Sat, 19 Sep 2026 00:51:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0f1f011813be37f5c3f6b0c28db11811a4ca4b6f95fadbd155bf0296004a90`  
		Last Modified: Sat, 19 Sep 2026 00:51:32 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b217ec0db078d9de733c7fc0127a3dc13d50f4eeb9d0cc536dcdd1b3d9e894b7`  
		Last Modified: Sat, 19 Sep 2026 00:51:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:056122fdd8d97f3132ccb4c86713bedfc88f41835fdc380e1f2036795ae4a569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6032109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423c6f52cb770e987e0c9b43ea7e5de2a0dbd0f1b1716bea8d05941751959a78`

```dockerfile
```

-	Layers:
	-	`sha256:cf4e48daa827b966907ddf29fb59ba78668b873c6d14465377195bc7df1094ec`  
		Last Modified: Sat, 19 Sep 2026 00:51:32 GMT  
		Size: 6.0 MB (5979629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea44b3682992fc198778eeb7eea22fbc4b70206ea992332c36b17a52b3c034a2`  
		Last Modified: Sat, 19 Sep 2026 00:51:32 GMT  
		Size: 52.5 KB (52480 bytes)  
		MIME: application/vnd.in-toto+json
