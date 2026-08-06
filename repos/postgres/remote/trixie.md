## `postgres:trixie`

```console
$ docker pull postgres@sha256:a02db8cac496f15b094798a38254f14d6e00741f709360e5e00bb6668ea31636
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

### `postgres:trixie` - linux; amd64

```console
$ docker pull postgres@sha256:4cc13dede823cab4e05290c7fb3350fb4e599ecabd9b07e6706b5d5e8f5bc929
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162351946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b87d5343a0e499eea33b6c19ec152a3ed4a0d1a453eadd26ff415a406821a6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:36:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:36:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:36:23 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:36:23 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:36:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:36:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:36:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:36:27 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:36:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:36:27 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 00:36:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
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
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db2b7edf527f081a260ecef821b440ed1c4e11b003317b2d298ca8a2b1feb38`  
		Last Modified: Wed, 05 Aug 2026 00:37:04 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130549402290405a478adedd2e14bf54504d90b21f8c1275ae05d89e93d139ba`  
		Last Modified: Wed, 05 Aug 2026 00:37:05 GMT  
		Size: 6.4 MB (6442929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8241f4a143196e6b132776cb3cced649a6a9aceb7c0025628e9b266c77c65ec6`  
		Last Modified: Wed, 05 Aug 2026 00:37:04 GMT  
		Size: 1.3 MB (1256729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4dcdc0137d7e97a1ea0fb395989176aaa1802b3ac453bca048e97853649934d`  
		Last Modified: Wed, 05 Aug 2026 00:37:05 GMT  
		Size: 8.2 MB (8203885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1052e262c2e9c5ae99c759fb374148dd8b27025560641fa26bd45a1d0fc14f8`  
		Last Modified: Wed, 05 Aug 2026 00:37:05 GMT  
		Size: 1.3 MB (1311671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39762d0b4bb22fb28e7a42cd8b9cca6a18447391cf4d0524b944ea9365dcd689`  
		Last Modified: Wed, 05 Aug 2026 00:37:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38639b9be6a64cea811b63317eba2e007bdbc35f4e3bc8dc98fb7d4d613d0b04`  
		Last Modified: Wed, 05 Aug 2026 00:37:06 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6c52c74256575fda337aee8275a7a5ceb3fc1d10379302280f77d972bb7a98`  
		Last Modified: Wed, 05 Aug 2026 00:37:10 GMT  
		Size: 115.3 MB (115325793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51baa0c6c0d8a7c2d3c958365c33e840a7f9d04e5552956273bbcdbe83c3a04`  
		Last Modified: Wed, 05 Aug 2026 00:37:06 GMT  
		Size: 19.3 KB (19324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88bb22edda9bcb522bc1fd99537f044db3ec9032c34b19c45185eb1d372ba7d3`  
		Last Modified: Wed, 05 Aug 2026 00:37:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d54729e84b7d110a2fe30a2207bd237acd7530fbfdabd1f828e6b69e7cdbed`  
		Last Modified: Wed, 05 Aug 2026 00:37:07 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90dd111f2e536ce9f6ea373cc0019cd8c79de260096f01d300152d777a0c6b0`  
		Last Modified: Wed, 05 Aug 2026 00:37:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:46f3d8bfc8087fbba738fd45a8617bd6dd4eef2d6dff04bd6ab5c0d989ca681a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430dc9430b8dd4cc74494a450e3bd169cd0f944017e14a3330b452cbc69a10b1`

```dockerfile
```

-	Layers:
	-	`sha256:817fb2bde76e59ff030156814243f91777a394e654381c6ac9082e7d5d481826`  
		Last Modified: Wed, 05 Aug 2026 00:37:05 GMT  
		Size: 6.0 MB (5956993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a143915fe2c23421d485c3c3fd229047e72b65c059146ac60833fea3b634429`  
		Last Modified: Wed, 05 Aug 2026 00:37:04 GMT  
		Size: 52.5 KB (52480 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:1464d11a6f842657624811ea9edb070d105be0bf28a2aa6903021b396def5e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91491762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe30869b8d9da94ac0d73e4ff560639f2c6dbbb0e355a2fe4e35570930ef2db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:29:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:30:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:30:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:30:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:30:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:30:24 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:30:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:30:31 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:30:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:30:31 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 00:43:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:43:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:43:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:43:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:43:42 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:43:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:43:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:43:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:43:43 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:43:43 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:43:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401d738b4e4665b6f5156e6f1ed528352483306b40d56c6ede95c4a8573a8726`  
		Last Modified: Wed, 05 Aug 2026 00:43:55 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda434ff181bb8df80cc84b7dac03ca0079e23f80a4b7d799fd4fff6075a3a4`  
		Last Modified: Wed, 05 Aug 2026 00:43:56 GMT  
		Size: 5.9 MB (5932352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9fb43f44fcacb4c1145c6691f8c5765761af29a40be66633e5199bf633644c`  
		Last Modified: Wed, 05 Aug 2026 00:43:56 GMT  
		Size: 1.2 MB (1227422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dfb654374e31dd3eafa2bd0c0e7e04155fc0cf39bc728cf4e4d67bfbb322c8`  
		Last Modified: Wed, 05 Aug 2026 00:43:56 GMT  
		Size: 8.2 MB (8204340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff713dde8be3482d13c9edcd7089c9e0c4e892ca1e3bd12cf6b9eb3e210ad29`  
		Last Modified: Wed, 05 Aug 2026 00:43:57 GMT  
		Size: 1.3 MB (1317349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6750d81bff7cd13bc01330d676f0529a25d2fd1a6b955576af15276d728026d3`  
		Last Modified: Wed, 05 Aug 2026 00:43:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09f65293e1dc64e27a46d42d5045d3679538c3df030c206ba42838a3387c4c5`  
		Last Modified: Wed, 05 Aug 2026 00:43:57 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45650dc97d7b1e66b29c640cb5d91874b13a0a08541336cd0a8cf9f348d433af`  
		Last Modified: Wed, 05 Aug 2026 00:43:58 GMT  
		Size: 46.8 MB (46825417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fa020981387afebf32a85d1d00c84f56a0322629c00a5752efea31ae49d53f`  
		Last Modified: Wed, 05 Aug 2026 00:43:58 GMT  
		Size: 19.3 KB (19316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ab4e5d88f23069d06bfa47cb883d3c9ac4c44d5cf8c4704656093880d8c87`  
		Last Modified: Wed, 05 Aug 2026 00:43:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb027613beaed94abd4756c47368cd4d17f1a8afbed28f7dfc05ddc21581840`  
		Last Modified: Wed, 05 Aug 2026 00:43:58 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca50fb96c77ccd7e68a2807ca18984e2a06c67c6fb56eb76e827be975323ba78`  
		Last Modified: Wed, 05 Aug 2026 00:43:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:da06928d47500238c7c7682291643d1a9f60b33cbfea7cbcdcf3ef09d06f0d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7397743049862b5d7738aa4975a55fc3a3d8b85a6a91836c3fdb9dfd742587`

```dockerfile
```

-	Layers:
	-	`sha256:30ec69ec4c9dc191fb55b80f312b64284d9c5447ef3358344dc54c9f12be25ca`  
		Last Modified: Wed, 05 Aug 2026 00:43:56 GMT  
		Size: 5.1 MB (5120136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3ccdea66409c80bc31c01b4c8c2f5571353c952acab543e4a00e87a8bf9a752`  
		Last Modified: Wed, 05 Aug 2026 00:43:55 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:83fec4f39aa9f363fe24c71ab1ba9e0774df4fcb9295c8ff073ba2d6f6f7340e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87800001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2262928d3fa6b18d382923b22b2029383a0a705a0a4e5d64d475b93f2ccc7b92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:06:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 01:06:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:21 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:06:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:06:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 01:06:28 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 01:06:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:06:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 01:06:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:06:34 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 01:06:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 01:06:34 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 01:18:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:18:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:18:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:18:25 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 01:18:25 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:18:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:18:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:18:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:18:25 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:18:25 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:18:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db86a351ec7800eb6bcb72200e1d1fbb7b6c4a62248f6ae86e4019329cf7364f`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328fe94bcae1ddf6431e7d25dad65470463e7f699420ef0169ccca226107ad44`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 5.5 MB (5497329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a84258d34df03f874be5d8cf08c78e87e4c537e3ad2a880877d23ff195d1d8b`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 1.2 MB (1222366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855bd8dc912c87dcc250ba73d646dadac47e066198fc2a0349a90634b98caeb4`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 8.2 MB (8204038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aba305d1cdfe8d3bbf79cd3d1af4ffe545b5d8182f617f3ac5860a37831bbd2`  
		Last Modified: Wed, 05 Aug 2026 01:18:39 GMT  
		Size: 1.2 MB (1172642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d09ef449986f3792fb78bb69940c0e00a04485c8258f29cbadb00db5d27392`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8ef8c69652c0d04c7c8e1e7d34335535f9b3d9d758bf5ef5065a719dea9d46`  
		Last Modified: Wed, 05 Aug 2026 01:18:39 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e9c7a46c70231398564d4612416de4069296467e84968f10c54f3a7a78ebbd`  
		Last Modified: Wed, 05 Aug 2026 01:18:41 GMT  
		Size: 45.5 MB (45467065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4d1942da3d3b5661d2fe1e9453ae76b7bdcfeed3b44ff799f6ea424ab3fecc`  
		Last Modified: Wed, 05 Aug 2026 01:18:40 GMT  
		Size: 19.3 KB (19341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc94c8c524e28b5667eb0a8c2459b8d20646e5027329a916f66bc2ca35f9758c`  
		Last Modified: Wed, 05 Aug 2026 01:18:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e4c99469030f57cdf147294e9db2bf863697b43395ac7ef73c8ddedbd790db`  
		Last Modified: Wed, 05 Aug 2026 01:18:41 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63ae260ded96bca664d1cc82cca9871201ffd0dd2de5f82466c393dee5054ac`  
		Last Modified: Wed, 05 Aug 2026 01:18:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e21c873ccf62a816514b93824155ec7cd8d383d56d0c46ffe3d83f5af8c54c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb985adcd6f7cf34f375f7b3cd81ce7015ed95ec37ea70565f8226189cb3ade5`

```dockerfile
```

-	Layers:
	-	`sha256:3ac5fce20c6c9b1344f9494388679d4e1df7fad69978209ff730cecd99297250`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 5.1 MB (5119441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bbb3c8fc6c6a15b6dffc021702388b142a5b182b9fd808a9b598bca11f2acc3`  
		Last Modified: Wed, 05 Aug 2026 01:18:38 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:0826e5f2996099babb925e09fb72bf2c6eb5d187cfcae20aa9291af1612307e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160958174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14be09d80346e5d7716a191b61a60347be1783e177e52da118bcd40bf426f14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:37:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:37:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:38:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:38:04 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:38:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:38:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:38:08 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:38:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:38:08 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 00:38:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
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
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304ecb9cba6b8905c4345f2017a6ad0d586998f7dd5c6454466f816cdd1fcc17`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f105ba8498e2a5f65b10cfa18d6705ffa5fe396fbbdc48d1ec881022670736f7`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 6.2 MB (6234969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b344fba029d4f08f3bcb7239b4e8687daf58685d13ebe7af9fb58549e53ab788`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 1.2 MB (1209567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7282707cef8d52b1ed7b248c033306b72707de9585e90a0625bea1c8348876e2`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 8.2 MB (8203969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0dd5fc435a2e66da4f43f2757ebafa813f7c9ce7a5671e3860811facd840b72`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 1.2 MB (1220630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e29ee9c6935bf6ec4343e513c410fdf1bad9d97825e958545c2020c8b0a6a6`  
		Last Modified: Wed, 05 Aug 2026 00:38:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e464afbbf96ea41b337023f194df01bdda29897a75720e6c37acb3f002cc2142`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eda280140f2aa8e700524bf1db86ea0a86e448e17eb2c22e6437fd8e2dcc65e`  
		Last Modified: Wed, 05 Aug 2026 00:38:50 GMT  
		Size: 113.9 MB (113915254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da0d4578fc4391ab5d930e943ae67ff508ded7902ae8585eb88326eb218ad3c`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 19.3 KB (19331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a2ded159fa899a1aa01e788ef59daf86df176de9b2391ad6bd1356af94cb96`  
		Last Modified: Wed, 05 Aug 2026 00:38:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e6124e48e150d6c1e1f03e5b96457d1b20d51f615d665141f089703c7939f0`  
		Last Modified: Wed, 05 Aug 2026 00:38:49 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759b7aec44327e7b5f920ad99156c456b3b523ea80eb6bdc68a5fab0700d18b1`  
		Last Modified: Wed, 05 Aug 2026 00:38:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9dac0dfbdbfbfe56bf94c4e062738c3941026cb00e5a7db61a992e121b80abd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c780b86a9cc4c00e2f0866dcc523ad764850cc935e94f3b1b214b44f8fefb0`

```dockerfile
```

-	Layers:
	-	`sha256:ea6c61de6790d4f512973c1895d2477d9f315654fc30776c0ac42286cb66a220`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 6.0 MB (5963358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30024eb9cf706f181862b6933fa6acf4bc6234cab3568dec2efd20531c155625`  
		Last Modified: Wed, 05 Aug 2026 00:38:46 GMT  
		Size: 52.8 KB (52758 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; 386

```console
$ docker pull postgres@sha256:42efb85711da35711de35b9a4e4c918f94751656e64c199a638f90d5b8085a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97620328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88b66507133e4070e01a013dc98738e43261f62776ba9f7187ebedc803071b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:33:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:33:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:33:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:33:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:33:38 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:33:38 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:33:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:33:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:33:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:33:43 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:33:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:33:43 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 00:43:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:43:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:43:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:43:21 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 00:43:21 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:43:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:43:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:43:21 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:43:21 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:43:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9498ab39d52ab9f23405588019c4d40cc2187bcbff410d3fb496f2ad0a2d1f80`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad54e9add48d2c4c39a78d01ffa14b67fac3f3b3062c5725836a2f91f0c394e`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 6.6 MB (6631435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e622665edb4ebd2125c2cdea7fdf8710306a0e855bdd74dd237e3d6ac1364d`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 1.2 MB (1225880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805494b238ed959b076da593d7bfeb7faeee6ba365d3ed65b329e124181cac42`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 8.2 MB (8204094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1353207b7d9f1694339c340b461eb972e7e1bf2b85b5621ec288597c4896cfae`  
		Last Modified: Wed, 05 Aug 2026 00:43:35 GMT  
		Size: 1.3 MB (1308280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81559d01f9fb7779fb6fb92477641d139d12be17fb7f6934086d2694ff6742e`  
		Last Modified: Wed, 05 Aug 2026 00:43:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ce62969bb28b6d1dc7bbef370ea6469d7d2467151ccb914680b97b21abe377`  
		Last Modified: Wed, 05 Aug 2026 00:43:35 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb3821841aff14a39f8e8dcebb40f550cd3b0a8146fb3661a6b2d63c943026a`  
		Last Modified: Wed, 05 Aug 2026 00:43:37 GMT  
		Size: 48.9 MB (48924196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014446d660a333fe7a3261e4ae89de7795fa2dbd9782adbbe5ecb42566f04b42`  
		Last Modified: Wed, 05 Aug 2026 00:43:36 GMT  
		Size: 19.3 KB (19325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aedd3a7d9c38dad966189a979e7ba39c5ad2001d60aa76c7056719bbd64778c`  
		Last Modified: Wed, 05 Aug 2026 00:43:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a9fffea6b5c699a9ac9fd11148efc5ceff6a84093ea65faaad2757ce118299`  
		Last Modified: Wed, 05 Aug 2026 00:43:37 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa65d8e2b40126ba15d8bebb62de65045617ba6b996379a7a96f4c7dedb1844`  
		Last Modified: Wed, 05 Aug 2026 00:43:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:c7426f7930efe1ed93139040854c8075fa994ed1ae8bacd22428944bbe9e02e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5167882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34289362dbfbc6604db08302b962972ab95ed24dd8f6201db7879fb175513f69`

```dockerfile
```

-	Layers:
	-	`sha256:b442ffcd905417f4496d62fe24a4edd1cabc8a20f231fb65c4b47863c1528181`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 5.1 MB (5115469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed0ab46ed9ef4983018191bb40df8e343a46cd9d3f98815615dea629f37451de`  
		Last Modified: Wed, 05 Aug 2026 00:43:34 GMT  
		Size: 52.4 KB (52413 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:46421b6efacd33e4ba67e32bf4d2073aa95657bb911f1c64130354584d762a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174766667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8a8b577243a2309d95f17b34d482a032cf8aeae96836fa07bdbde3a6dbaa47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:08:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 05:08:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:08:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 05:08:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 05:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:09:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 05:11:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 05:11:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 05:11:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 05:11:24 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 05:11:24 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 05:11:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:11:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 05:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:11:24 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 05:11:24 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 05:11:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3846916550f018cfe33993b7f9e7dd5270071c23265ab42a5041620985b36c81`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36081eaa4e526775ea5b73541ecbf8cee639252b5797b761e2f4b7a9f54696d2`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 7.1 MB (7076742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b907106d2bf40fe1ee65b30a10fbb1862cd5bc540db3f938d5e5e5a2c91c534`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 MB (1214752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdac8ebc21b578869c6132422075e263a611b0bd6102aff8d9868182da98097`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 8.2 MB (8204037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224b54dd0f8a69a9169b45e682b6977200c26f882792de7d28c61112829a3e8d`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 1.4 MB (1394915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582055b833c5869c5a74a91e5025fc373936fdda5a472bc4735ebd873c12497f`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b521b9b7eacb8d458604e3590dec4f41c1f54542dcb193b970b524ec6e24db90`  
		Last Modified: Wed, 05 Aug 2026 05:10:38 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb301d71873c4445c64588ad449d566584128a760d494b4f706f37803c3ec44`  
		Last Modified: Wed, 05 Aug 2026 05:12:09 GMT  
		Size: 123.2 MB (123244702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d221cf6e49c04614ca432788b2473c9cd6deee16eca52662ec06ea1091ddcb07`  
		Last Modified: Wed, 05 Aug 2026 05:12:06 GMT  
		Size: 19.3 KB (19330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785c50c56d87abf004b00e0dfa4d911983ab6f6096920009dc7e65fea58fd2c`  
		Last Modified: Wed, 05 Aug 2026 05:12:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff21125bb2301c948cb353babbe54258da92909ee24c83bb7340f29afa94480`  
		Last Modified: Wed, 05 Aug 2026 05:12:06 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e220366b27c16de0e241d83ce9cc955701ca303caa5ad5588b578ea05bb37d`  
		Last Modified: Wed, 05 Aug 2026 05:12:07 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:c6b069f569fce55d70600b74624f7503faa3b1aa73e32bb6186252f0e213ba11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac1bec6783b4a121698578a705179a701949bee512c80ec5b3dd737d2a91065`

```dockerfile
```

-	Layers:
	-	`sha256:f0cf3262d772e707bd8af23ef13da3688a1313cf0db8afac78d29fba46ef4c93`  
		Last Modified: Wed, 05 Aug 2026 05:12:06 GMT  
		Size: 6.0 MB (5963641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:645feb86dc7e83b08af11c458212edfaee94b48d5a9bb312f7d202b7859307a0`  
		Last Modified: Wed, 05 Aug 2026 05:12:05 GMT  
		Size: 52.6 KB (52556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:33d4ee98282fbc3aeab17197d18339189490dfaa1870cbd332d104ade7c77a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92899499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52eb3223784c028bb731bb86006d2de989a1d035a6ad4f57e1b2d662cb4433e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 13:08:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 06 Aug 2026 13:09:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:10:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 06 Aug 2026 13:10:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
ENV LANG=en_US.utf8
# Thu, 06 Aug 2026 13:12:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_MAJOR=18
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Thu, 06 Aug 2026 17:24:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 06 Aug 2026 17:24:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 06 Aug 2026 17:24:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 06 Aug 2026 17:24:08 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 06 Aug 2026 17:24:08 GMT
VOLUME [/var/lib/postgresql]
# Thu, 06 Aug 2026 17:24:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 17:24:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 06 Aug 2026 17:24:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 17:24:09 GMT
STOPSIGNAL SIGINT
# Thu, 06 Aug 2026 17:24:09 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 06 Aug 2026 17:24:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8234640d76d9ee39c0850ea0ce2ff6e2bf02ab20d17fd49ce1d879a9bb1d2cbb`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95ae142301719c95ea9a0668becad9cca827c09dd16c07a451e87edd27b0daf`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 6.3 MB (6293014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea5606f6dcd7d25fb14aa15a29153dc194c311662e8698076744b7799a318f`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 MB (1202052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db687f06ecc62cd292a4f24aa58d78afa6ccdab55d0298b1d4faff8b63e72908`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 8.2 MB (8203731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cdc5eec12fb554145f0f0f4815fd0018039fb881621735263b0086e39c3c91`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 1.4 MB (1402398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417eef1f2a8721ba60c3f585f6271da959f6604a996f8f74d2577b42a344f77`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58cdaca0ed0e94f37aed2f774c1a88e9bd5af048fc301684e12e08c2f8ec44b`  
		Last Modified: Thu, 06 Aug 2026 15:21:06 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b792a2bc4689af9c95df04995ebd33b9e9aea43e1b8f26875b5c20b2bff8841`  
		Last Modified: Thu, 06 Aug 2026 17:26:43 GMT  
		Size: 47.5 MB (47490007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c832a9d126c7438bae378f6ef91d4a4ad947cab8dfa039daa8ba954e212139`  
		Last Modified: Thu, 06 Aug 2026 17:26:34 GMT  
		Size: 19.3 KB (19329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27000e1d00d2823b5a69ff60baad6330fc216386c25ec60e72ef135869b86c67`  
		Last Modified: Thu, 06 Aug 2026 17:26:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc6eb8b23063d5f3a0c6f4388c1abd0d8313bd3afa0472fbc44bc26b611098`  
		Last Modified: Thu, 06 Aug 2026 17:26:35 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546be122966bf3530099349dc5bc78cdf3fa5911a2586d1c85d2661d05091e5f`  
		Last Modified: Thu, 06 Aug 2026 17:26:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7470a2c8a1a7bed68ebd1551587a200ce44e038a0a6ebe300ea89d7c6cbba86f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5162959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5736efa97f15ec379839327fe247a602ec580f1948d258aa4b98b35f529872b`

```dockerfile
```

-	Layers:
	-	`sha256:afa2062b522e2869f60c2c1febd2fefa5da740242879a5f208b516ea92d16a8b`  
		Last Modified: Thu, 06 Aug 2026 17:26:36 GMT  
		Size: 5.1 MB (5110409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbcf2df857c2ad6b42fcdb9722e7476caa8826535ddc0ea2e60117682a3efccc`  
		Last Modified: Thu, 06 Aug 2026 17:26:34 GMT  
		Size: 52.5 KB (52550 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:trixie` - linux; s390x

```console
$ docker pull postgres@sha256:d2d09b9d0511c6db7f6fb3f0399668781d86dcb43049db0081ef7ba4f3374153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177001035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940f8b9b2afad77d0df1958fa83e1c0a367648cd46d9b7520f3f0108d41acef8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:46 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:45:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:46:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:46:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:46:08 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 05 Aug 2026 01:01:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:01:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:01:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:01:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 05 Aug 2026 01:01:28 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:01:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:01:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:01:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:01:28 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:01:28 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:01:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc5760df17e7eaea5eaff6a76c5bf439b8d2b4173f7590699d4d9447c462752`  
		Last Modified: Wed, 05 Aug 2026 01:01:59 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf525c2433051107ebc29acbe1f88ba17b6394da00dfa871d932ebcd83858ec`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 6.4 MB (6408481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250da161f668495ffeea56ef00efcf1cf1fff10e551548996eb00dbbcfc447ab`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 1.2 MB (1230239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62656c62de6d9fdfa2bdbebc7ad4bc81f4e5dca779332d3b6eadd2e1f51445cd`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 8.3 MB (8259005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9705dc18dc3a00461b9f5733dd477ee48668e0b5cb9f7c908fa5336bb97dbabe`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 1.4 MB (1398240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fab28aa27a8f94d8a8d64077c7d121a383dfc878ff272a5821c6f76de2308c`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09817e32acad2e71e7765956ca2ef8292edf6602b71e3ffc34aaaad56c1f83f`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c6ae86d46422fff9a2b9a66d4a9fae591c979136ba8b63e60b1d4bb71eee8`  
		Last Modified: Wed, 05 Aug 2026 01:02:04 GMT  
		Size: 129.8 MB (129828320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa574a08677e6d0a49e4ff374a6aeae7cbaa742b0ab4b2869105e523fc2e819`  
		Last Modified: Wed, 05 Aug 2026 01:02:02 GMT  
		Size: 19.3 KB (19329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf928a66701214451d70523ea5d8984c6e63d903cb20b506e82f8a797c07abf0`  
		Last Modified: Wed, 05 Aug 2026 01:02:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af0429259bff6c900eb13f5352338ef5d5887d487f497423c59a9506ec8709f`  
		Last Modified: Wed, 05 Aug 2026 01:02:02 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5462a61f864cf4acb7d097c87aafbe21e492cfbabd4ceb478bc7119410e817ac`  
		Last Modified: Wed, 05 Aug 2026 01:02:03 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:29eaedaebba6a1753dc2014f2af1d3a79ca81f04f5fd5169ff546012a5bd14f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6026142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494d53957c9d9c8763cb917d01b46ad255870a12175ee596f27726cb4a7c6643`

```dockerfile
```

-	Layers:
	-	`sha256:c67a9a383031f76e620839a52f7230c73d7d098c3f405037172c74f7f527737b`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 6.0 MB (5973663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b8f3114d83cc4416806e5d637bb4261b532fb23ae0f891b19b96e14100a76de`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 52.5 KB (52479 bytes)  
		MIME: application/vnd.in-toto+json
