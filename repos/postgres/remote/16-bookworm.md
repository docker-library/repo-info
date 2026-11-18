## `postgres:16-bookworm`

```console
$ docker pull postgres@sha256:ce3efec6bc404f6b15ebf5d9bed6b45a9d4655aea238d7dacc3467ccb05a1175
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
$ docker pull postgres@sha256:59ab0bbd4930fcd32dd4389836c0bfbf87431ffa87097c739a71210f7aed58c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161365211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74b11758bfe1b381b55d2628584c663bac5d029c7e40b15ee00ec631134eb2bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:29:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:29:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:18 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:22 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Wed, 18 Nov 2026 21:30:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:30:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:30:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:26 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:26 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a45321854427f58459cd34f96bc8b3b01ea8ee19962ca515fa5947eb07eab41`  
		Last Modified: Wed, 18 Nov 2026 21:30:01 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01b8211445d83795b67ac6cec57c1e8343019c5b0b6586690248da1417fc69b`  
		Last Modified: Wed, 18 Nov 2026 21:30:02 GMT  
		Size: 4.5 MB (4534258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10b97dfa536be89bd8778d60578bce7ff7fbc73393e90819e7a961fed318b5d`  
		Last Modified: Wed, 18 Nov 2026 21:30:02 GMT  
		Size: 1.3 MB (1251408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbfe9fcbe509fd1c67431e3a8debf4b9c8a3cef6c7f5404b4512ec4a1ccef97`  
		Last Modified: Wed, 18 Nov 2026 21:30:02 GMT  
		Size: 8.1 MB (8066422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6bf56a234d4721e69d04a88cfbac4fac905df180b05a108898cdf08d2b8e17`  
		Last Modified: Wed, 18 Nov 2026 21:30:03 GMT  
		Size: 1.2 MB (1196443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77f9a0500e9c0004b4457143f5e9f3918d0407a9f13acc3d2274c3660d72967`  
		Last Modified: Wed, 18 Nov 2026 21:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b8083222f25dd57f7ff32f8ff56d0ab78d4c2514c7703c05f26da226355ac9`  
		Last Modified: Wed, 18 Nov 2026 21:30:03 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749d6e80e5ad8c1621f49860e8a5880375e484a61a3f3e18ad9b1baa944270ab`  
		Last Modified: Wed, 18 Nov 2026 21:30:48 GMT  
		Size: 118.0 MB (118047632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e54a2d32bcbb0fc705a2668643ff359ff02bfb908b25ff8068067c3170e58d3`  
		Last Modified: Wed, 18 Nov 2026 21:30:46 GMT  
		Size: 10.0 KB (10024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043a89842d5e277b585feaac1d3595f2acaa875f190b45e10ac1f6f01b43a286`  
		Last Modified: Wed, 18 Nov 2026 21:30:46 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b352a837baca6c463a1a543afefcceebb15b883b817c2ef2d6c15e9114fd546`  
		Last Modified: Wed, 18 Nov 2026 21:30:46 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c64053f5050bd3cf42c28a4ab359c5a452027d5b600c4d84d7fe5344e43b427`  
		Last Modified: Wed, 18 Nov 2026 21:30:47 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c290bfca64c4609c9b5a6738ee1a699b2f0b73ca3eb8502b9576e7a59ebef466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6319421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1ebfff610f9da07b22bf4b73d02ff462bbd667bdd817925a25d2eaac4b1a57`

```dockerfile
```

-	Layers:
	-	`sha256:b8d22b609c7aa05b181f8ad8e0298803607471a8492e349dc874ddb0d6161dfc`  
		Last Modified: Wed, 18 Nov 2026 21:30:46 GMT  
		Size: 6.3 MB (6267861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:371808b8a6ed95f7c3202eee26696096d4d7074bd2a70aab5745998ba8d4ae44`  
		Last Modified: Wed, 18 Nov 2026 21:30:45 GMT  
		Size: 51.6 KB (51560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0baa39f68310360ab46f7194a087a43b5eeab5f8a27db189550f547ebec99729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87984205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4cd800bcde7ec38b63d69a9377d29c2b688418966413a1208c9dff52fe996f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:45:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:45:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:45:24 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:45:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:45:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:45:29 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:45:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:45:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:45:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:45:34 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:45:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:45:34 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Wed, 18 Nov 2026 21:56:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:56:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:56:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:56:16 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:56:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:56:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b6806c57b371a929168ab97a13e23f58cf42f5ba131cb7cb9022884823ddf0`  
		Last Modified: Wed, 18 Nov 2026 21:56:29 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07706a15d4c4272a783fb392deaca400f51846ded38340e3483cc7e2889d3da3`  
		Last Modified: Wed, 18 Nov 2026 21:56:29 GMT  
		Size: 3.7 MB (3742507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a132df7cb1ff9037cfd2de44ed76be0fc8f8e937438e80bd87a8d2a64dc9739`  
		Last Modified: Wed, 18 Nov 2026 21:56:29 GMT  
		Size: 1.2 MB (1217430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75ea95062a0d8a2390ef6c4c8a5d13112b03cd51c82d017d832c86eab989251`  
		Last Modified: Wed, 18 Nov 2026 21:56:30 GMT  
		Size: 8.1 MB (8066456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a7fa5ffe85a07dbc9d6bec4814f87b66c90433359af676d71c97a3ef7d4a23`  
		Last Modified: Wed, 18 Nov 2026 21:56:30 GMT  
		Size: 1.1 MB (1067319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04217c3483ab3e7da65dc255b7afba8c1a7111959d056c471c95cbb89d3be5a`  
		Last Modified: Wed, 18 Nov 2026 21:56:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d47023fd0107868368a565eef30a57da6f54e50d7b2550177c21dc7ca301468`  
		Last Modified: Wed, 18 Nov 2026 21:56:31 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecc688819ff06a77291bd74070541dd41aaa39e84f5b0ac0f1857786df46b8c`  
		Last Modified: Wed, 18 Nov 2026 21:56:32 GMT  
		Size: 49.9 MB (49908066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0e5666e0cbc6db0ef44f904c52c444f8f2fd78edee97300631f3fee61a9cdd`  
		Last Modified: Wed, 18 Nov 2026 21:56:31 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5f1398d3b60d8b68d66cdbd04bc94c28a47fd2315d34691a81c503f12f2332`  
		Last Modified: Wed, 18 Nov 2026 21:56:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf3b3cbd27f8c63d36c68e3b3c41f8ac0731d510a63c4c43481bd826af63790`  
		Last Modified: Wed, 18 Nov 2026 21:56:32 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ab220e09a0127ec9523fc96220e0fbfcbf8f4eb788d08fc9c7118afb5a5c36`  
		Last Modified: Wed, 18 Nov 2026 21:56:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:dcf706df97fec033399f84827600b7dcdd61fa8345d7db98a8d9b1f939d5ad6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5689082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9780a74ae88da8dd911b4efffa26cbcc2c112580169b4da8d3d307ad1ac9cf7e`

```dockerfile
```

-	Layers:
	-	`sha256:39480fcf56379ddceaac0f17ec53d168e6c4d12c4139bebebb36bd18b4aa1cf5`  
		Last Modified: Wed, 18 Nov 2026 21:56:29 GMT  
		Size: 5.6 MB (5637335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2df560e87ebf5fd55d8ec7d7b7a90d3494067d248e345e8bdd8cdd64b138c5e8`  
		Last Modified: Wed, 18 Nov 2026 21:56:29 GMT  
		Size: 51.7 KB (51747 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e78b8cd72ff9a8e6b5610a5d9a4a4f87bec3b321806bd4b93e112f0a40ec43bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159265827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c11da38bc99cd16929468473af9d066d2d66604b1882c2c7ab4c04ee50f0782`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:30:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:30:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:35 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:30:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:30:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:30:40 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:30:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:30:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:30:43 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Wed, 18 Nov 2026 21:30:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:30:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:30:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:30:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:56 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:56 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33dcb06bc6c4a78b9064470b2b1dc3422a6a190f5dd8baa2395ffc73af05fff`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe023297040bf1896076e5232801e4988b239bf1937b0e6ea8989b13e12aa7f`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 4.5 MB (4519477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cce0b356882286dfa49936929bc2fea38452adbc1cc05c3d5e72263f279649d`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 1.2 MB (1204603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5a9b61f83af7311ee95e9044dd1d9679c4b77c9a0c8055939c7bb274cc92cd`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 8.1 MB (8066497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954adacff1cceb39a5e89ed86acbccaaa881e74be80593f6a2cb4d8e348e298b`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 1.1 MB (1108963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7baa0b56d45eca0d917b3613e20a720deae16ab59444314bee382d24c63e1cf`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446b67380f00b834b584a9a401c08bdc8cb2b77b8a58bd576841c046371b36e8`  
		Last Modified: Wed, 18 Nov 2026 21:31:18 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376bbc6fe6896792b852c8632536851706931d88fc63ff127a3c4f744772e756`  
		Last Modified: Wed, 18 Nov 2026 21:31:20 GMT  
		Size: 116.2 MB (116200870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797e422708dc820c21a3bfd3a284236d9afe9897e3bfeb52e0798be7b9b296b6`  
		Last Modified: Wed, 18 Nov 2026 21:31:19 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a685e69efcd7478aa857781137e8566a5b399db65f196dc4810b7682a2d7f2d6`  
		Last Modified: Wed, 18 Nov 2026 21:31:19 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dca94555f266989fb9bcc30f84771d2f4b46a816e07daebef084ce2a90efe5c`  
		Last Modified: Wed, 18 Nov 2026 21:31:19 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0677206c04b1edec6ad0c29a7fcb5a3202cf888c132583e8a00b7e88705807c0`  
		Last Modified: Wed, 18 Nov 2026 21:31:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:287560f31e92881254926a9d8a9d07af575c01d848a12bbf36e7ca35de50f6f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6325975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f136139f56da198a189fae6ce12bc8c42def4b8b89f1a54ea767cdaddeaf0ba`

```dockerfile
```

-	Layers:
	-	`sha256:3e43f99a9d1d391b152b685f1b3c1ae9674f7ff7a7ff008830e6beb01a2d6a3f`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 6.3 MB (6274185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6628b3a6682bc0737ffbdc825312122b6b957dc268925265fd428f9ff55acb49`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 51.8 KB (51790 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:8121996e489038282ebb79659485afea8408d43613310ecad69bf4c0e5ba3c13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99065993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a885d4534f4cbba34d02efd6d6fe82116268881763c9f11abf79738abb0773e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:31:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:31:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:31:52 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:31:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:31:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:31:56 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:31:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:31:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:32:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:32:00 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Wed, 18 Nov 2026 21:40:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:40:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:40:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:40:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:40:42 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:40:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:40:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:40:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:40:42 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:40:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:40:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e976b5e338c342b9520e7e20a4ad376af9665b25b6138bae0f13fefd9602c7`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77adc5ad94f8e3611f32731dff4290b3e6da9d75cb226f7e2da19dd0b5e6d1e4`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 5.0 MB (4966196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a55cf7b07b7078b18a99002d600d671ef4ca24709e1c53cdd7f6264b7652fa`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 1.2 MB (1219626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561a6d396d3bc236da16e2438e6894405264f37399d03b415df2ee1d88f9b465`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 8.1 MB (8066483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952e7fc0f5c7955aa81fd3950c2cc127ab00735cd260c40415d2e4183e8d61dd`  
		Last Modified: Wed, 18 Nov 2026 21:40:58 GMT  
		Size: 1.1 MB (1137511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d284ece579cc3ce0ebffaae8edb46ac0ec317728d709139aa59219dae53cc3`  
		Last Modified: Wed, 18 Nov 2026 21:40:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2151fed9c86eb04df8e9c9fac14449fafe645fe534a3da2d74736ecc3e17ad1d`  
		Last Modified: Wed, 18 Nov 2026 21:40:58 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15da6bbffdf1806be4c454a09f5d702a77ca74021e54ca31f8df1ef9b3ed0041`  
		Last Modified: Wed, 18 Nov 2026 21:41:00 GMT  
		Size: 54.4 MB (54415889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d73f49769f99f921c283fd7671e8ed1845df89c968ce6806f747bd1d7953528`  
		Last Modified: Wed, 18 Nov 2026 21:40:59 GMT  
		Size: 10.0 KB (10028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015464449e63254402c9afe755603565875ade5baa071c07b2beef8df9d33c6c`  
		Last Modified: Wed, 18 Nov 2026 21:40:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0deed0c2748eea85d1b1b9f04d889d5031bb7450f64db8ea0aa13165135ddb`  
		Last Modified: Wed, 18 Nov 2026 21:40:59 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85156c37534dc0665f921b3123f622d56da894c2dc80c2afb8fdfbf3cebcbfa`  
		Last Modified: Wed, 18 Nov 2026 21:41:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:58076f902f952e6625803e67c74bd0614e0d1952db572028aa5f5a43b8aac1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5684120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b34ab1f13ed7d9cee9a3f38e10b269e3370548d8901bf64d2dddc9139927e5`

```dockerfile
```

-	Layers:
	-	`sha256:8c5bcba2df581c1fc4ff06d15122b03a72441a16913df9dd0609fead45b81603`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 5.6 MB (5632608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f7b587efd0724261c4118fc4996d66c662f49fc501a0fcc68a332c9918fe76d`  
		Last Modified: Wed, 18 Nov 2026 21:40:57 GMT  
		Size: 51.5 KB (51512 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:449e53d83a215b51bac2431595361f433193c5be109bdd8a8b6adf0064e457e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174879764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0948f1da0a5493cf12fd5e82041ccd073ed11593fe5b955a9c501343acfc61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:26:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:27:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:18 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:27:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:27:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:27:28 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:27:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:27:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_VERSION=16.16-1.pgdg12+1
# Wed, 18 Nov 2026 21:56:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:56:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:56:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:56:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:56:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:56:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:56:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:56:17 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:56:17 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:56:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7a509ce7fe5f345b05ad5716ad8d7038cace799f206010491a8055ecfa5108`  
		Last Modified: Wed, 18 Nov 2026 21:29:23 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706c9ea49fbf6033d81937a5223529367583c5e323fb46d7966162f9720c6000`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 5.4 MB (5368773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e803f6ac28f68a1d89f558208968be12336419d18f962089b8cd5ed6b3256566`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 1.2 MB (1209893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be5aa084d05392f1859725242b6fa98da0c520d5d3bfc2dfd9bdad30729bfd3`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 8.1 MB (8066569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb1eab19bd056482d6062abbaa38916082aecdc8038b30cb538c27b1f78c17`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 1.3 MB (1283725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a94274148847d72258388927118e22141ba579bff3758113e75109c08b98649`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a21522452935562e07c397a249bc561dc868c252e8e563c0470e211d019dc3b`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8280c72d2c011aac80108650180f96d06998bc5b3c0911e89df3b00fb82e092b`  
		Last Modified: Wed, 18 Nov 2026 21:57:24 GMT  
		Size: 126.8 MB (126836172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99b963b92a65d5dc7dd0d2b25f1a225dabf9fef91847350ee3c6bdf1dea6116`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 10.0 KB (10024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84e69c8209973f6ba616f67798fc23f8c4b8cd7b619208b9fe91ef95efe2e8d`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccec235d3a665edbed1406540189b7062f0d6925793fc74a4ee125da9a3e1ef`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2285a9d0ab806b22a882a8440c3eae8eeabafec4a94c8e41235d739689bf361`  
		Last Modified: Wed, 18 Nov 2026 21:57:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:10bdb6602f50804bb7d581f676b6ff9e0db1fc1ae13b34d5192e0427dab8b48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6323158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb51a367954be5ff8fc0913dc76b9367c66e6f57072bd5843f7834be8676526`

```dockerfile
```

-	Layers:
	-	`sha256:258d03aee076ef3683594837a1f26639a3fa136b576ff5f5e78e2094a6b04696`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 6.3 MB (6271547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98b4d94b3e5ccd4da9291ca432acbaba3d031df3279a88384b197496287f35f5`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 51.6 KB (51611 bytes)  
		MIME: application/vnd.in-toto+json
