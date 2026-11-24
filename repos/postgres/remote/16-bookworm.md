## `postgres:16-bookworm`

```console
$ docker pull postgres@sha256:cd0e9518bda5f2ea667ff84d22795d089720c883f288e215d97ce57437e8ef37
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
$ docker pull postgres@sha256:d755a91aff87574a57060f86ecc0d55f83ccb51ceec6ec6f904c1210d018d998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161384368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76500a7555b1f245546af93974bb208366013cf537fa3038f0bdd493efe0c612`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:30:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:30:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:30:43 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:30:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:30:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:30:47 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:30:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:30:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:30:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:30:50 GMT
ENV PG_MAJOR=16
# Tue, 24 Nov 2026 04:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 24 Nov 2026 04:30:50 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Tue, 24 Nov 2026 04:31:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:31:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:31:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:31:04 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:31:04 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:31:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddbd751a288933f767b988103c7969b1eeabe790203f15b7c5eb5bfc8c0bd61`  
		Last Modified: Tue, 24 Nov 2026 04:31:24 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402d835448109b9c12422254a771cea814a488187b9a24cc11376e2c218283d1`  
		Last Modified: Tue, 24 Nov 2026 04:31:25 GMT  
		Size: 4.5 MB (4534279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e992f6b42b265a6987c6e13fab9a2560a3bab49bfcec20aaa009acf6a1e5da5`  
		Last Modified: Tue, 24 Nov 2026 04:31:24 GMT  
		Size: 1.3 MB (1251443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1995ad838c49dc170a90e37f8297b5d9cf3b7b2564323d07feef4bed217ba1`  
		Last Modified: Tue, 24 Nov 2026 04:31:24 GMT  
		Size: 8.1 MB (8066424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecaff6200f058269b5b2015ce1d02b4d31b56904e9d53ae86daa6e9a59ffb38b`  
		Last Modified: Tue, 24 Nov 2026 04:31:25 GMT  
		Size: 1.2 MB (1196482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da20d1d0ec63f3ef6914893df6b6c8e41840b372f48b890b479cb683ecd0352`  
		Last Modified: Tue, 24 Nov 2026 04:31:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15825153a207d9243345bb0a48e0d56c5ffe9a7756ca8c43c207f5ea33a9212`  
		Last Modified: Tue, 24 Nov 2026 04:31:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c367c796bb8284d4d7ede9a1563f394f0184648f9535a6c46c03ea8e186f8c06`  
		Last Modified: Tue, 24 Nov 2026 04:31:28 GMT  
		Size: 118.1 MB (118066742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8eee7d08eb8460cb9af7372706c2096d5dc78461e73f4f780994dae96a36d2`  
		Last Modified: Tue, 24 Nov 2026 04:31:27 GMT  
		Size: 10.0 KB (10011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63eea362794944b459dbe8198cf1df3635e02369b96db603b9d548a37db976f5`  
		Last Modified: Tue, 24 Nov 2026 04:31:27 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07dac1b993663b6cac585677ef3aae718d24d8a27cf8558d6557e560be8afd6`  
		Last Modified: Tue, 24 Nov 2026 04:31:27 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f73701e4cc25129953cc1f49a008bb0d07306e14f0bea1e79d6bde76443c046`  
		Last Modified: Tue, 24 Nov 2026 04:31:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d200884353ae00dc87ac1ee50ae7077afe3799373328a58befcb732c9013bf3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6319471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54dcf988b5a987533d04ffc580d523f6099eb5425335a0373936002540789a66`

```dockerfile
```

-	Layers:
	-	`sha256:d07b042cbd6544d408081e6f300f7f7797128355799f2291f16486dd1ca99853`  
		Last Modified: Tue, 24 Nov 2026 04:31:24 GMT  
		Size: 6.3 MB (6267911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c68b57f986a6d6e0d07645d00340b183ad34652d88f87caa8475a9d4c78b25`  
		Last Modified: Tue, 24 Nov 2026 04:31:24 GMT  
		Size: 51.6 KB (51560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:67ff1da7efbe10af39fd8881cf93eccaf5afbefccd0d8961da46fda21806a92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87984731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49625b520ae28d1234b390da30c9fe64e27c3ff79579e735a400805513e52308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:10:16 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 05:10:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:10:30 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 05:10:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:10:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 05:10:35 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 05:10:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:10:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 05:10:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:10:39 GMT
ENV PG_MAJOR=16
# Tue, 24 Nov 2026 05:10:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 24 Nov 2026 05:10:39 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Tue, 24 Nov 2026 05:21:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 05:21:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 05:21:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 05:21:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 05:21:25 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 05:21:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:21:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 05:21:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:21:25 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 05:21:25 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 05:21:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2caad44a221c2aa2c02dcf1593b4d71187e367fe582f6a9e1c9488da3fc38`  
		Last Modified: Tue, 24 Nov 2026 05:21:38 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de531598cad0f96c0ef1a555732c1f1953575c937f38d0275aca58b2b339502`  
		Last Modified: Tue, 24 Nov 2026 05:21:38 GMT  
		Size: 3.7 MB (3742464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808584040fad40a69d7e8357a5d671699b9fd1872a7df3969642efbdb6ad0ba7`  
		Last Modified: Tue, 24 Nov 2026 05:21:38 GMT  
		Size: 1.2 MB (1217404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197413040aff7aaf848eb5894a7332bf7b3ccccf11008fd184105c04bb1c9677`  
		Last Modified: Tue, 24 Nov 2026 05:21:39 GMT  
		Size: 8.1 MB (8066494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9b4f0bb3053fc3eb1df77dee926015d0935d7fe31fb3a9cf7c23cbda95686c`  
		Last Modified: Tue, 24 Nov 2026 05:21:39 GMT  
		Size: 1.1 MB (1067341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f525219a71a9e5c58d1c2fea4b460384e4f4da1a0a95dc5ad18fb074ab51e6f7`  
		Last Modified: Tue, 24 Nov 2026 05:21:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1005be10b9cb8508f6c1b2e872c61e01a83ea88a138ba610d279a497530886a2`  
		Last Modified: Tue, 24 Nov 2026 05:21:40 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc99e3d91a0fa6a8bd80863e22027465d91eecbcedbd319101802708ca43669`  
		Last Modified: Tue, 24 Nov 2026 05:21:41 GMT  
		Size: 49.9 MB (49908649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25de2acda072a8d45e18414981204225c1bcda1cec94ba3ee0d226069a7dd6d2`  
		Last Modified: Tue, 24 Nov 2026 05:21:41 GMT  
		Size: 10.0 KB (10016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4f72fe77d4b672e079abaa2e182de71aab78da7a210f7458bdcf8c7556a2bb`  
		Last Modified: Tue, 24 Nov 2026 05:21:41 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129e116e90c4424856b25d290d81eddd05e2ed66f53abf5bbec4e8f296175a02`  
		Last Modified: Tue, 24 Nov 2026 05:21:41 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95f083a7a62508db4d58509ec15bffd9fd6754280f6514198906b170fab89a7`  
		Last Modified: Tue, 24 Nov 2026 05:21:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e2adcb3881fddcf4a80ca9cd1fa7ac0e05051faedf6ac5a4e5bb39299202b24e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5689084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac0d6b01f2889eb187b2c24f0caa6c884c0ff9d401e1c050676931336fa7d4c`

```dockerfile
```

-	Layers:
	-	`sha256:367ceda7a969649df1e549db77f8fc680523469edb91862945b2683ae6e4d2b0`  
		Last Modified: Tue, 24 Nov 2026 05:21:39 GMT  
		Size: 5.6 MB (5637335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cde9cf116a075fdec067695fffaeb2cfa668881e3ffbce414f774b0fd2c5a67`  
		Last Modified: Tue, 24 Nov 2026 05:21:38 GMT  
		Size: 51.7 KB (51749 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a5891b08b971e6763d167887261f5586089a91ca57443437ba73cfbf72ac7776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159285047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95c8328f1eee2ceb332c907cdb390e0375ed12fe12d35d64a3a3a124bcec66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:34:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:34:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:34:44 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:34:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:34:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:34:49 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:34:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:34:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:34:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:34:52 GMT
ENV PG_MAJOR=16
# Tue, 24 Nov 2026 04:34:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 24 Nov 2026 04:34:52 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Tue, 24 Nov 2026 04:35:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:35:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:35:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:35:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:35:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:35:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:35:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:35:07 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:35:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:35:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e51561691e9a30f57bba8580347f5174c2b489b441d15c5e579a3203aaa31ee`  
		Last Modified: Tue, 24 Nov 2026 04:35:26 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757a533678b331f1c9019eebc64cb8f160d39a7ee9930112e7d6a07ffd3ba6ae`  
		Last Modified: Tue, 24 Nov 2026 04:35:27 GMT  
		Size: 4.5 MB (4519442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac39d241ee2f2f22e8923486682c2811dd3c1eaf9429a669829a8ccf92f9276`  
		Last Modified: Tue, 24 Nov 2026 04:35:27 GMT  
		Size: 1.2 MB (1204615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d051eb972d3650f8337cbb8795798c7f03e28d516e8f5ebb9ba6866d82b95`  
		Last Modified: Tue, 24 Nov 2026 04:35:27 GMT  
		Size: 8.1 MB (8066499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aa916328c8394cf4a03b87b53ca8980a299cf512b909989d33ebd3477a9b39`  
		Last Modified: Tue, 24 Nov 2026 04:35:28 GMT  
		Size: 1.1 MB (1109020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b026df4e0e17848a11e52846be74d2d47d2da04a21c30813b56ec27801d6e165`  
		Last Modified: Tue, 24 Nov 2026 04:35:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150af214a05824548817e5dd82c74ebc6e22604a4243028579011a9cf1f13849`  
		Last Modified: Tue, 24 Nov 2026 04:35:28 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630c089538c03cd6bc9833185e3faeb25d01c16a4f93a6eeea7ce8cc54a2897d`  
		Last Modified: Tue, 24 Nov 2026 04:35:31 GMT  
		Size: 116.2 MB (116220122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f684006a152f5a0356e9e4a1d2759587fbc15aac52d664eb954d98ddca7c25ab`  
		Last Modified: Tue, 24 Nov 2026 04:35:29 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4a22597f9d510c9ee14a2a59001e0e3e37a6636a2fe36e8adac7b3f21e3984`  
		Last Modified: Tue, 24 Nov 2026 04:35:29 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e13ca0b59c034ff7dd041a9ec55c15ef2d787101abceb5992fe4a47698d156c`  
		Last Modified: Tue, 24 Nov 2026 04:35:29 GMT  
		Size: 6.1 KB (6099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366a823be9d1b09c985f7d7031b7b658461d28c8a30598b8c472ab1f1ca6bafd`  
		Last Modified: Tue, 24 Nov 2026 04:35:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:cc9e82d0ba7b91f98aedd3633339101c9408c22d03b2e4f01e19d9deab263c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6326025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d50cc09f245376e8c5771f249e8145a8edcbd59455c33215c04cca318cfa26`

```dockerfile
```

-	Layers:
	-	`sha256:f43929db91c6352672ced4ba7a01f80ba8cf5e6136912df24fbde3fd52ea5e2e`  
		Last Modified: Tue, 24 Nov 2026 04:35:27 GMT  
		Size: 6.3 MB (6274235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20af6228ab803e60b02bcfb5819525126705be294609b7d8d5361bfad2f7bc01`  
		Last Modified: Tue, 24 Nov 2026 04:35:26 GMT  
		Size: 51.8 KB (51790 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:8a60539325556b1253af7a90790a781e90f0b81971a1948e9dab49cfc5a9a104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99066502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbb4de3ce8df66ba00de1ff9c935ff1e7b2c9dc58de9e45ff794c662c4ddc15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:32:16 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:32:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:28 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:32:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:32:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:32:32 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:32:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:32:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:32:35 GMT
ENV PG_MAJOR=16
# Tue, 24 Nov 2026 04:32:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 24 Nov 2026 04:32:35 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Tue, 24 Nov 2026 04:40:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:40:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:40:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:40:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:40:31 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:40:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:40:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:31 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:40:31 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:40:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d284dfe6be170489278554bfdd619b2d5835840c7ceabb7665032aaddb59a794`  
		Last Modified: Tue, 24 Nov 2026 04:40:43 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf20235e23090f716da5eb1937c3bc55fdda8300f6a860f1a3be6e6ad3c494ba`  
		Last Modified: Tue, 24 Nov 2026 04:40:44 GMT  
		Size: 5.0 MB (4966101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41de1690f15dce4b3f6b351f7c2eedea8a94783e42bbbe7b800e016fe21eff9b`  
		Last Modified: Tue, 24 Nov 2026 04:40:43 GMT  
		Size: 1.2 MB (1219604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36ed02cce08fb75f316eec2d8e1f9e8281b859ee9ac10a47dc2aa09629de8df`  
		Last Modified: Tue, 24 Nov 2026 04:40:44 GMT  
		Size: 8.1 MB (8066458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c08387ea2f1672170a44807d993ad4e9970a3f1852041758179a962c9fa18bd`  
		Last Modified: Tue, 24 Nov 2026 04:40:44 GMT  
		Size: 1.1 MB (1137507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd4e845bfb1582a0ca363fc8e660b1d6a5e305192dcd90b537d67aac455c513`  
		Last Modified: Tue, 24 Nov 2026 04:40:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134236755a7cf9c7efb4adca33c188e2e48f79a390bc5681ca25d0515c031d77`  
		Last Modified: Tue, 24 Nov 2026 04:40:45 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c38255c73d43d00ce8f3bdb1b9d24c8337f9e8c642bf66854d4e68c346c2a0b`  
		Last Modified: Tue, 24 Nov 2026 04:40:47 GMT  
		Size: 54.4 MB (54416571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a376645717fd6890a4e4c58b3eb4d4712f4e488cb27f60efc46fcc0e3ea13db`  
		Last Modified: Tue, 24 Nov 2026 04:40:46 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0207c43ed20ee7f36da8230b51a22a1540da372a1652b9f05c2953bb0342ba35`  
		Last Modified: Tue, 24 Nov 2026 04:40:46 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8276014df8585b8f5f6430d677b1e167426ca844cc6572cd5e127ef8baa560`  
		Last Modified: Tue, 24 Nov 2026 04:40:46 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5926d7fc58b815bdef00d06ebd1b579dc06f4ef0330c86eca37055b5fe0ccb0b`  
		Last Modified: Tue, 24 Nov 2026 04:40:47 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:44e6486c9ee1db073a29f549189940203b4ebeb18ccbd4058209acf85ea25893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5684121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffe82de6600d10f492cf3593372c3ee78f4e036731dd0dd87dcb1d6c1eae35e`

```dockerfile
```

-	Layers:
	-	`sha256:1ba0b084abc282e36964b7450a1c88df355f88295336ea9f98ff8b0b94001bbf`  
		Last Modified: Tue, 24 Nov 2026 04:40:44 GMT  
		Size: 5.6 MB (5632608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a506bf29c5610d3cfb3130784cb8c283eca6130ded8f3353dfa06abb30818b7`  
		Last Modified: Tue, 24 Nov 2026 04:40:43 GMT  
		Size: 51.5 KB (51513 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:6e40f2e4aa66d5dce2e32c450304ff52b8b722298927f2bcaebee7f3eac73d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174887162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b22e573fc2eb4bd1f2ce83d303af9d42f1493f1c91878599e9c9efa73ba322`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:27:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 06:27:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:27:54 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 06:27:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:28:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 06:28:04 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 06:28:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:28:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 06:28:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PG_MAJOR=16
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Tue, 24 Nov 2026 06:33:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 06:33:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 06:33:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 06:33:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 06:33:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 06:33:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:33:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 06:33:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:33:40 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 06:33:40 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 06:33:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7e0abbf89c8ffe00087c69000cda6b6e02a47c70dbbf0828bfd03babb70f76`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c7009fa37485ef47219d05a088097ac052a66ccd0170581cf8d8767b722df0`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 5.4 MB (5368644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d3bef47505448f3f82e91fe5b2397d2f7b05e0915bdd68282c5d44d3139011`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 1.2 MB (1209852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c380772f1a173da04fcc70a5fcbfb82c4985f7a9d4e543a207f33bf7671dfdc`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 8.1 MB (8066525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d5333653cd8200f57a9fdd5882e4dc6c247a2514fa8ed6395e8bc084d706ba`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 1.3 MB (1283645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8c604c9393a4c26cc8851e3603b1c80939149c35b0545611272c3e1c48427d`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cf1165811525c24b34c6af03da31b710b8578589485f9dd96598ed2be96c3f`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822944d14231614e471c4718a2fb85d34bc17d27e5d53fe7ddfba431941ee5f6`  
		Last Modified: Tue, 24 Nov 2026 06:34:27 GMT  
		Size: 126.8 MB (126843942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e63c78adbe4b2939f9c5637965e66d8f831a550db653dc0dc5ba92361c151c`  
		Last Modified: Tue, 24 Nov 2026 06:34:24 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4422a9b0e4faee21d1bc8605a05d5968fef1bee3b3ef577383b02dd4bc5b5555`  
		Last Modified: Tue, 24 Nov 2026 06:34:24 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecce25f6022ceb3d1842c85ae47732ee603f746570c6060866d11bec23e285ac`  
		Last Modified: Tue, 24 Nov 2026 06:34:24 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc0959948234a0df82a15ae84544fdbb353c42bc7ef023a66c426f6660b8c91`  
		Last Modified: Tue, 24 Nov 2026 06:34:25 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e0d80c6bfa54faa4ebe0e1a2bae8cfa8b0aa01bd1abab2f0e1114f8a5f5880d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6323209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9afb872b32aa278c134e4b3961685ff9e55081a4e2ddd72351d10ad49174bddc`

```dockerfile
```

-	Layers:
	-	`sha256:e25ec314c34de740f15e72d160cd3950611c9b626e9ee73c98c068793eb27ca6`  
		Last Modified: Tue, 24 Nov 2026 06:34:24 GMT  
		Size: 6.3 MB (6271597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f814f8f771963f3f97dc8165374617ed885f236edc744552d3b2b849065f6a45`  
		Last Modified: Tue, 24 Nov 2026 06:34:24 GMT  
		Size: 51.6 KB (51612 bytes)  
		MIME: application/vnd.in-toto+json
