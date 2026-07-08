## `postgres:19beta1-trixie`

```console
$ docker pull postgres@sha256:ef66bb9a5ed715f81523fd44ec26eb112f4dad30a8f4e7086d77e3fd903583ef
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

### `postgres:19beta1-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:02658a444c6556b3ff66cb0abbd9e1f6eb39ef3f6d48b1888c6f2eeddb092d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163642457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f2975f34e173de0a093eec04877ae32bc83ebaacd2f39bef4952099a9c49e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:28 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:43:50 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:43:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:43:50 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:43:50 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:43:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff7b9bfd63f3b9bbd76005d40e95f64a25d0ad6c115d5a60b6a01ee0ebfab6e`  
		Last Modified: Tue, 07 Jul 2026 17:44:09 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef58ec35f18286fa2f60d46a1674ebff364677afef93bf3f3a4529f91f95f6a1`  
		Last Modified: Tue, 07 Jul 2026 17:44:09 GMT  
		Size: 6.4 MB (6443008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4f142c0b9fc5c263f745170e41dea91c0116d89d6c87983e927ce27b617a32`  
		Last Modified: Tue, 07 Jul 2026 17:44:09 GMT  
		Size: 1.3 MB (1256753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c135ab5de4cb7f3e05323f0031fcab2784915281d54892df9c62e3356a603`  
		Last Modified: Tue, 07 Jul 2026 17:44:09 GMT  
		Size: 8.2 MB (8203897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eef760ded4361e157e4598b19fad186bf3dd7598f8f15be3a9dcdeaa878c4e`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 1.3 MB (1311636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d48c43c8e1c7541a8a987aee7f608356306e8c024ce13716a6c0219380dfd1`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e1cbfe31010b1166e0ba3d42308422f0b6f3826a3875b530088234ad9a64ef`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8bb3c17b34389495ee1806a53bb1e1ca7154e9e9b993416c3af644a271026b7`  
		Last Modified: Tue, 07 Jul 2026 17:44:13 GMT  
		Size: 116.6 MB (116609468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d57857e6207ae6dda242c5285072619d6d07c2b8bab5a73278c4fb6c986f4cf`  
		Last Modified: Tue, 07 Jul 2026 17:44:11 GMT  
		Size: 21.4 KB (21424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2898970857230577b6b119ee48262664ae6c1a6bea38a2d3f65eebb94498073f`  
		Last Modified: Tue, 07 Jul 2026 17:44:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853832c5d66be7f00c54a439941c2fd83523eea577a9b28f60b175ccc371c35b`  
		Last Modified: Tue, 07 Jul 2026 17:44:12 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d8195d2f48b44a3b0a52ebd0d8b02a4b32ef6ea55554bc48d783f89a7ccb57`  
		Last Modified: Tue, 07 Jul 2026 17:44:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:da8c3722fe84590f437595d5b963a5984dbe4f4204451ba8e0ef61c6eab806fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6049169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daf4c50ad68d30f5c1b60964e22514b78950aba7c6a3d24bcd8a5c1adfa3991`

```dockerfile
```

-	Layers:
	-	`sha256:d4dfbf6d3ecc23041e702266abb46fc1110c12160ec99d98643b11442bb18659`  
		Last Modified: Tue, 07 Jul 2026 17:44:09 GMT  
		Size: 6.0 MB (5997885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96612394962255502072aa36883ad522323c35d466ec185afaa9732b79587336`  
		Last Modified: Tue, 07 Jul 2026 17:44:08 GMT  
		Size: 51.3 KB (51284 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e567ae6abb3a1d04fd04c2d414dcf60e1c750559192b874786d9875e5f34f791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92008507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc58f35e70ff14dca1314b576d498263bc8dcf284e3e5b81e447bfcbcc0194d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:47 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 17:57:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:57:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:57:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:57:59 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:57:59 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:57:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:57:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:57:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:57:59 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:57:59 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:57:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477ebada7e6f2f60f47b48a73e047a9e680b70fa6135252e6614f373c66411ff`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ef3e84751fd1e7aae0f04cbe2251eeee00c908543fc610a2519ad38cab43fe`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 5.9 MB (5932362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc98a6e6101d7000fc29ebc14c91d2eb02650411e27198b543aa026ed8de0cb8`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 1.2 MB (1227499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27dc7180ce0893e1653df9d4f28d8179eb555565e43c7ef81352b5770f2368`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 8.2 MB (8204341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3345bbc8d92e136f56830d687f387b498ee317ad5b67b745f251f8db318a90`  
		Last Modified: Tue, 07 Jul 2026 17:58:13 GMT  
		Size: 1.3 MB (1317317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae9825d9ce3a803d580ec25574e56506f6e43c8a003192495598b4bd2556475`  
		Last Modified: Tue, 07 Jul 2026 17:58:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf121a08d57821eadeb882c42067c40fedb77baad90d777fac480ccb1c462a49`  
		Last Modified: Tue, 07 Jul 2026 17:58:14 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5a82107a2c661049191656005ce3170030571c9958bc37a7feac91b5bf59e8`  
		Last Modified: Tue, 07 Jul 2026 17:58:15 GMT  
		Size: 47.3 MB (47335491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a917614cfb6abc363bdd2e3ada99cf33b5c1eb68333117e62aa84e87a12ce6`  
		Last Modified: Tue, 07 Jul 2026 17:58:15 GMT  
		Size: 21.4 KB (21422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e186e26ad752c2ab62db174b5f7c06dfab493b0e778026ea946951cec4c99a`  
		Last Modified: Tue, 07 Jul 2026 17:58:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e2e0bc137e33e3271a1283b02e5481e342f5d1eac4de1020381fc31c1dfd9b`  
		Last Modified: Tue, 07 Jul 2026 17:58:15 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3553138e0ce908e8dc8f0b93dbec240b82a6f320b1c220c8ff78751a01daed5a`  
		Last Modified: Tue, 07 Jul 2026 17:58:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:24308ba46fc663957f0795825b8ff77333cee9b07548f6aece578778cec57bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5179602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9706bd861ca652dacb4420ae501823dfef80ba6346569ef0115ea61c426b65`

```dockerfile
```

-	Layers:
	-	`sha256:34eb00d4ddb2eaa4f7c3a80b4b39f362174c71c2d533a6a693272c50818f6950`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 5.1 MB (5128129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5398139517b160ea9295f51687cbfa75a15d7eb49ba2ca2a2a4e6103c47fc600`  
		Last Modified: Tue, 07 Jul 2026 17:58:12 GMT  
		Size: 51.5 KB (51473 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2c811bc1dfb76c112bec1980744b1c8582d04031b4c3af2b3351181453c70967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88282076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371223f8e1ff7952854270d7c68c5d86bff7b777a1e9b7fd04a7534af6be2240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:00:15 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:00:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:01:12 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:01:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:01:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 18:01:19 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:01:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:01:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:01:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 18:01:25 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 18:01:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 18:01:25 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 18:14:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:14:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:14:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:14:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:14:05 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:14:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:14:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:14:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:14:05 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:14:05 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:14:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8a20a9e58a0e48213d5e0f97d113c94a6b21d7ac7a2c6144171db8b4e07420`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53196c7825336127e9c73682be36852eaa423fc6fabaa389f13c5286a4dd0718`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 5.5 MB (5497307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6daaa38ab2267252c90ba98d5e2fe3941a496f43eda681d8c2b34aacec848a`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 1.2 MB (1222381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b15888edd5ed8b5080c726e82520456697845ce2f92143de3100fdb9cb22450`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 8.2 MB (8204031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098b5e2c39ac0d59ae9ced930f21f82004cd87e15d095dbb2e48053e3ae225dd`  
		Last Modified: Tue, 07 Jul 2026 18:14:20 GMT  
		Size: 1.2 MB (1172623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34004567a69fda7ef9c89febbaad3f53b1b5d2e91b697ea0f9b96f24a0af9f22`  
		Last Modified: Tue, 07 Jul 2026 18:14:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c84e1f789d0cb717921ed7b3af1a68196e1e65e727c6c177bb1697721366f0d`  
		Last Modified: Tue, 07 Jul 2026 18:14:20 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a99ac1b79726bed45d90baf2fbe82579cabeb3c1a2107e3bbbd8fe8f86619a1`  
		Last Modified: Tue, 07 Jul 2026 18:14:21 GMT  
		Size: 45.9 MB (45942394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96c4add9a9d3f3b609649873126970e16c2d743d77dccbe2bdf3e4c4455553f`  
		Last Modified: Tue, 07 Jul 2026 18:14:21 GMT  
		Size: 21.4 KB (21435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be2d9968dd511cef16f0a58991cbabd656b2ffaa575458e1410ac5c4027d2a1`  
		Last Modified: Tue, 07 Jul 2026 18:14:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d34dc5bdf92527823f8f45f42075dc9fd52b90d9650fdedad03b27f2f4f0a3`  
		Last Modified: Tue, 07 Jul 2026 18:14:21 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f27e5cfb7cb3c91e29e082b0eb6a86711df662fe27316ded4e730875caa97a7`  
		Last Modified: Tue, 07 Jul 2026 18:14:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e445f7ce06f48cb969ef6243f8c61dff504b0c924834666a3cb7cf588abd6af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47455cc4392b6ddc7b30748fef800e9b4fe626e0bb8437c005d2b34634aaaff0`

```dockerfile
```

-	Layers:
	-	`sha256:24df59fc86c2900ff3aa9e597bb81db7c9a0a43efaca27f33aea009eb7020c97`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 5.1 MB (5127434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f496c927ecc624558d9a05f605a36e673f98bdb665e51ef2b089399a0c7404f`  
		Last Modified: Tue, 07 Jul 2026 18:14:18 GMT  
		Size: 51.5 KB (51472 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7b8eaf34b10c0cd4f25bf40d059b4bcfc98f7015c86d076b3155b12ee483257d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162205380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2058f3f4d8e94c2a172f85a932278fc1ac15cf53393edcbcebc180a954202a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:42:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:06 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:10 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:10 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 17:43:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:43:31 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:43:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:43:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:43:32 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:43:32 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:43:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec4a0545825fa0c12d2d218897b2a681252fb483c3c976c4614e909668b66e9`  
		Last Modified: Tue, 07 Jul 2026 17:43:51 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379c90ac79d7dec3233a8b4dc80f28bb9efa7fda6686f7c87ad560acdf1c3e5a`  
		Last Modified: Tue, 07 Jul 2026 17:43:51 GMT  
		Size: 6.2 MB (6235081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b607af72cc7b15d860fe993a8544adbde20c74d9d76dc3c1be2887da7a2ea8e3`  
		Last Modified: Tue, 07 Jul 2026 17:43:51 GMT  
		Size: 1.2 MB (1209603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fa2fb7a08f203caabb157046e811990245aebf71934673bae9c7a8be4223d4`  
		Last Modified: Tue, 07 Jul 2026 17:43:52 GMT  
		Size: 8.2 MB (8204066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78c82c0646f6adbfc2e03e88e7455ef21c6727d59469a8c3a394ba2e7af4f50`  
		Last Modified: Tue, 07 Jul 2026 17:43:53 GMT  
		Size: 1.2 MB (1220588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5dd67886c7487450561dec1a980df373527ee2416996709e928e47b06b8b61`  
		Last Modified: Tue, 07 Jul 2026 17:43:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4c6eb1cdac43542dc887a339af18173f8e3c7f432e87a32ba7bdbfff268504`  
		Last Modified: Tue, 07 Jul 2026 17:43:53 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543f01b06d4b142a7b8819955b5adaef10083939012192cba4000e16de8b0da7`  
		Last Modified: Tue, 07 Jul 2026 17:43:56 GMT  
		Size: 115.2 MB (115155217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb056b1ec24ca55ea4376118998ccc7ac412bdc27317797beda18703de9add49`  
		Last Modified: Tue, 07 Jul 2026 17:43:54 GMT  
		Size: 21.4 KB (21421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08dafca51e5e3c6aa455d27cf79e30187fa219a2a93af80d04b2996f30f0048`  
		Last Modified: Tue, 07 Jul 2026 17:43:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455e8ad7ac2945eb1b7128c68bf6ac119e9c3a328b754fb72987dcab132cffe5`  
		Last Modified: Tue, 07 Jul 2026 17:43:54 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7413467f5ef8e7863b580b6a937ebeda1ff74fd0d5a2fe990303fd09362344a0`  
		Last Modified: Tue, 07 Jul 2026 17:43:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:90ed142d641d78d027b90e8628355d9e19233cb4fb97ca2890bec3f4882a59eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dceabf88cab2c25f3fbddb7a461cd2a6edbe6248f893817738e138274a3ee68`

```dockerfile
```

-	Layers:
	-	`sha256:faa597c2d3c0508fbdd27733d3382eea6a72721f30d8ac24a3e896bd14070d58`  
		Last Modified: Tue, 07 Jul 2026 17:43:51 GMT  
		Size: 6.0 MB (6004202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1df6b6b746b747c0137237bca051e43b0a39dd83d70c98a34f3bbfe6f2770299`  
		Last Modified: Tue, 07 Jul 2026 17:43:51 GMT  
		Size: 51.5 KB (51514 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; 386

```console
$ docker pull postgres@sha256:38908c35b9be9fa2ff3f0af6a9570d4f59e648a43bd3c4a238762e9417bc3ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98195899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713e5a093f899d7495cf5aa8ca8111ea2513a9673c02f460cb7a16dd906e88f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:23 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:41 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 17:52:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:52:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:52:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:52:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:52:39 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:52:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:52:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:52:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:52:39 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:52:39 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:52:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:447a49627b8fb374ad99d50de8ac7ebb4e03a7653c507cf5058159a0856d79ce`  
		Last Modified: Tue, 07 Jul 2026 17:52:51 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1e05dc9c1b1f10a6e7af96b01f19a966e18dc176ffafcb23499b35bdbbcb7c`  
		Last Modified: Tue, 07 Jul 2026 17:52:51 GMT  
		Size: 6.6 MB (6631398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a107b4608c7867f4b74b37f729ab8c3f9e986ab27adde38f1e7cb73b0205e3`  
		Last Modified: Tue, 07 Jul 2026 17:52:51 GMT  
		Size: 1.2 MB (1225854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a5bf3ae51dc07f5c4d78718aafab8816c69f31f7da8273bb8234469b9f3984`  
		Last Modified: Tue, 07 Jul 2026 17:52:52 GMT  
		Size: 8.2 MB (8204063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6ce0400f9051915081feaebe969c02703baa3e3aad72a55aa0017d7f76d705`  
		Last Modified: Tue, 07 Jul 2026 17:52:53 GMT  
		Size: 1.3 MB (1308270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9cbed99fb54c41793267dc03c66ee42a5831cd7320dbefcbd1d417722edea3`  
		Last Modified: Tue, 07 Jul 2026 17:52:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da29d63421056e7856d9706e394efda5e6f55be5b2ed5ddbbb96898c5a7b44a0`  
		Last Modified: Tue, 07 Jul 2026 17:52:53 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ea7959f5c5b7f375f8cccabd4602be186a4bbea759978d3dbd5574ce11a7f7`  
		Last Modified: Tue, 07 Jul 2026 17:52:55 GMT  
		Size: 49.5 MB (49492831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e233e29342ed1a96c6e894db350d2e01a1308013c3184db4464e77630f9157`  
		Last Modified: Tue, 07 Jul 2026 17:52:54 GMT  
		Size: 21.4 KB (21423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60f59ba291c06ff9af9085e50476c7e0c8af0cbd1a5c6e5fb2bfe395eb23097`  
		Last Modified: Tue, 07 Jul 2026 17:52:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67244a08421118fdfc8dc039919f06cb7137cc52bcec6764dea356f4fdbcb96e`  
		Last Modified: Tue, 07 Jul 2026 17:52:54 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc2b0f09910b3c9f391f9064f162585a27fbcb9e0d077c488daa00a89811ea`  
		Last Modified: Tue, 07 Jul 2026 17:52:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9449338ed69f48eb4b7bbc9adbd7f99a0bfa60dd4cb8799ef931000b43ff01e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5174750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abed30b6881908f21d6b20659971010bb96a5d690c2d2dcc15873a9272a72d6`

```dockerfile
```

-	Layers:
	-	`sha256:019a62ca439e268cc926296987d20ad491303a25c64cc493f662c1f2712566fe`  
		Last Modified: Tue, 07 Jul 2026 17:52:51 GMT  
		Size: 5.1 MB (5123514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1399e59f60339364bab2bc83d124cb32a641c09edd545e923e537af1b92d8e21`  
		Last Modified: Tue, 07 Jul 2026 17:52:51 GMT  
		Size: 51.2 KB (51236 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:29eff29ee70c285c45ec5482670c6f2bf8fa3a57fe2619a6b3b7beb2c81f8476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176125768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e94afc0f54d176f15c875174aa7d825adc88d4ddf0aff389941392b15efd57e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:42:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 17:43:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:43:47 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:43:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:48 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:43:48 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:43:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:43:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:43:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:43:49 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:43:49 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:43:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adbe4418c0b6864f61e0d3c466f7e08148e1772041c9e14a7a3d76d38b37d87`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7adb798b8b0bc7f7e18eb0a00a71d5e10f860c07a42898ec35d890d39f2a77`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 7.1 MB (7076786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d285cc3dd4e9e4681d990133b75a2835e43fe7cd95765d71827fd41299614be`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.2 MB (1214766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efc6ef561ed1986a6495c3966a8510a405e7b07b2e7e4a90a6c93878e44f33e`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 8.2 MB (8204056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b14c05003b8ff9c715c518223caa999b1659e6481c65528efdf2a93410799f`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.4 MB (1394897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983d4fa8eb70a2541c88adf68fdf0ce6449c909b93a882090a00f8198675b7f5`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0f59fe84db0f783be123e5da057a9ede885eee659608db2af6cfcd6a247d8c`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718df4ee2b45552cd12a75c22866dcfcc67f25c75e95d24dd1c6adcf41fefef4`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 124.6 MB (124596604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d491a995313ce5a3615355f0ceb096a51463d51966ef3a11c12022b9390f59`  
		Last Modified: Tue, 07 Jul 2026 17:44:33 GMT  
		Size: 21.4 KB (21415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeb2ea2206ccfe77e9ef5ab9c79cf0a6f8a36af6dd1c95791aeb7c92c102a0`  
		Last Modified: Tue, 07 Jul 2026 17:44:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b35e40dc9b69d37592eafbd534fd4ec0deb10824fbfe63ccfd3ce4041363d1c`  
		Last Modified: Tue, 07 Jul 2026 17:44:34 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ed063ff9abe44a11302b9dd6d6784029ee209c14a165913a64f441edc4e7cd`  
		Last Modified: Tue, 07 Jul 2026 17:44:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:c868bdcb53db18264fcfcc31987d22e6f369a6c01d3776cb04eee72eec3de50d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2256a61a6b10b39884a5767bd231ac5e0ed7c879f618bab45d57682dd720291`

```dockerfile
```

-	Layers:
	-	`sha256:f5660753f80c6fa8cb14f92c315c6b39f401e72e969fbb85bce5227403b242ce`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 6.0 MB (6004509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbdf5f0db1255f5404d1b8a50e744e1894058adec67b28fcd76a5ff315ef6f86`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 51.3 KB (51336 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:728817015c557bdd4ec1bfc63904d4104bc131ee13c2e0b3399aad06138f2bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93378681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20774f3a1422ef50f400a2fa55957ed492d915f806649eadd32ded677adf742`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 17:20:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 25 Jun 2026 17:21:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 17:22:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 25 Jun 2026 17:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 02:11:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 02:11:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_MAJOR=19
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Wed, 08 Jul 2026 04:21:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 08 Jul 2026 04:21:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 08 Jul 2026 04:21:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 08 Jul 2026 04:21:28 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 08 Jul 2026 04:21:28 GMT
VOLUME [/var/lib/postgresql]
# Wed, 08 Jul 2026 04:21:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 04:21:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 08 Jul 2026 04:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 04:21:29 GMT
STOPSIGNAL SIGINT
# Wed, 08 Jul 2026 04:21:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 08 Jul 2026 04:21:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adbcc74bc464c350395b0ed6c1768df2fe221b068feb6158693ad4ec07cd00e`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34ed43918633e51bd4b0dfe515e8421bf7b4d99c7a97135953368b017f8e34f`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 6.3 MB (6293016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75577e804f36a67f7f9edf858af5711ac30d48485a836696cb03b019ecd36ac3`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 MB (1202088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7531413cc31124ad057b4194a1eb2086a683b6b4d169970cf67852cdf74c7eb`  
		Last Modified: Fri, 26 Jun 2026 19:26:29 GMT  
		Size: 8.2 MB (8203759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba9732299cd167f3c39e41322caab81ba4cf1dc97565a00066527c8b3f70dc4`  
		Last Modified: Wed, 08 Jul 2026 04:23:58 GMT  
		Size: 1.4 MB (1402450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598126a52ab8a77eeae1d9a321485736e59a97fcf898a17f41e6d2e2e7547717`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b530afb3ff5b8fa2d3298feb87d3e7567338d56610ec6284469f7e65b3619003`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d39b0812cf126fc0143ca5af7f39029a6b0808318ddb2873fc0d6f2961c3eb`  
		Last Modified: Wed, 08 Jul 2026 04:24:06 GMT  
		Size: 48.0 MB (47962709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a649185e6fa97f65ad32ccf1f56267db94eb3925899bd68d34359b3c90a38ce5`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6fa2c755b7fd5905b57cdc66d9b0fa25b2e7fa1b605044580ce6b1e6d823f3`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6fdb2531df2ac219b566306fdfa40126eb88105a3cb844f9c4b4bfb0246905`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7702cfa53e2bf2da93e0d5e6bb71114f035050eff60eda9806975dda06dec1b`  
		Last Modified: Wed, 08 Jul 2026 04:24:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:a6c47f0ffbd63b9a706e79b0ba8ed92a1a355f601aa4b0c5f824db6c067f8fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5169741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97148d758dceb0f32c3d6dfbacf78e918f89bdda21ecfb6683cdc6f45d6366c5`

```dockerfile
```

-	Layers:
	-	`sha256:4c95971e4dd98535b2a8f9bd485081529bbd64fde0ca953669afda27fd127c87`  
		Last Modified: Wed, 08 Jul 2026 04:23:58 GMT  
		Size: 5.1 MB (5118410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3231d5f3d88b6c6d4244315ad2f1bb865fc5ecf07fc453cc2ea862d5f6950eed`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 51.3 KB (51331 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:8ebe4f742a1985d34079d1b4e2e853f724b760a6de25a291776901dc6269b673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178329770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:459ff0e6491f403ec8e525ac8494640470acbe4ac3e80615861c1d64bfd822a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:02 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:46:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 07 Jul 2026 18:46:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:46:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:46:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:46:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:46:36 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:46:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:46:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:46:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:46:43 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:46:43 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:46:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282ce9be50a805cd1f634c9389a8cd8dee7a81fe1ec774157ce927408f831f02`  
		Last Modified: Tue, 07 Jul 2026 18:48:31 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48998c49b8194c90afb4f6b30b050f05b50149f4fbf6afa06356210b23e1996`  
		Last Modified: Tue, 07 Jul 2026 18:48:35 GMT  
		Size: 6.4 MB (6408990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b022ce16c7772704afb8a8e7d32f537795432d923f40ed3f2136ee750650afa`  
		Last Modified: Tue, 07 Jul 2026 18:48:32 GMT  
		Size: 1.2 MB (1230675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e719395ce08d3604ff52cd471cc5ed38fa68a71373c394d29b94c339f36fcd9`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 8.3 MB (8259442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7206fb6e2cc62e787f059453a210d500e95679428eada97c80e5346fc1d066`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 1.4 MB (1398712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d631813eb57eafc30343936f1d7c6a2dbbe9dd9866986d43db8f8a751a9f2`  
		Last Modified: Tue, 07 Jul 2026 17:50:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78742538bce4e97486384439060697934fe4aaa957516d86c999011c0c6c333`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a468635db7201e0330472029b1fa9d3395fcdc4dcf89a0b04b3c74026d58ba`  
		Last Modified: Tue, 07 Jul 2026 18:48:45 GMT  
		Size: 131.1 MB (131148279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acac3e009c67576b46394beb3dcec3cbc195adb22cd34e93fc3ed4f14090a53`  
		Last Modified: Tue, 07 Jul 2026 18:48:38 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d4a9057449d2df55d0b72796ce6e13b323baeb204a1f933e651d8d4e701d71`  
		Last Modified: Tue, 07 Jul 2026 18:48:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e73277a03350d2089ad8f4f217ff95bd66f09074b2eb285ac1f9b4caa363b28`  
		Last Modified: Tue, 07 Jul 2026 18:48:40 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1a770c20886e9d1d140950209d42c999dc7df9519fb399ec27f482b76aa6b4`  
		Last Modified: Tue, 07 Jul 2026 18:48:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:105d31f2ee1b2219d6dfd3eb2ccbb8e7ce63740d96a048ff655bb1acfdda0af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6065839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463ca275c16fec60840a114b2c6db00c61161039ae539b8d4a3bcd6e2e9b60cb`

```dockerfile
```

-	Layers:
	-	`sha256:018ece39467d1735e369d2ca1f358f72804674eb391e4af56405fa0189de0ccf`  
		Last Modified: Tue, 07 Jul 2026 18:48:35 GMT  
		Size: 6.0 MB (6014555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:becb81c807d99ef6ab755abbb87c6359443acb841008438c9b055f4fdbde6a2f`  
		Last Modified: Tue, 07 Jul 2026 18:48:30 GMT  
		Size: 51.3 KB (51284 bytes)  
		MIME: application/vnd.in-toto+json
