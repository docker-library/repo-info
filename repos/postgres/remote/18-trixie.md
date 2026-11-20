## `postgres:18-trixie`

```console
$ docker pull postgres@sha256:eb63372c1e05c755f55fa30cbd07aecc443676fc6c0fa90b9002d01537841e1a
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
$ docker pull postgres@sha256:ec003ee60c23d320d1b81868f255a6fc724ac06d8f1ced4468532f7d8593f357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168538779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fac36945da9a4145a11bc9a6198ebc00975b8323c8d454740e477c4e84593a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 00:37:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:37:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:33 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:37:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:37:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:37:37 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:37:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:37:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:37:41 GMT
ENV PG_MAJOR=18
# Fri, 20 Nov 2026 00:37:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 20 Nov 2026 00:37:41 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:38:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:38:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:38:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:38:42 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:38:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:38:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:38:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:38:42 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:38:42 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:38:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbd9729f0d07af5ee5d3152b9fb9c0a777b8bdf58c3b4576dd02f0b6eef11be`  
		Last Modified: Fri, 20 Nov 2026 00:38:17 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b93095874b54b45905133ac119998a57b304408ef6a9faf5618430cf6eb47b`  
		Last Modified: Fri, 20 Nov 2026 00:38:17 GMT  
		Size: 6.4 MB (6442952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4393616907ef1cfd05c68983996e928f3b6c9ea60d6da41119b2021b2bb68c`  
		Last Modified: Fri, 20 Nov 2026 00:38:17 GMT  
		Size: 1.3 MB (1258027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5527ff7489a0c105cdf8a7e68748ec8dfc567f4de9fff7ab1f078aac59e614`  
		Last Modified: Fri, 20 Nov 2026 00:38:17 GMT  
		Size: 8.2 MB (8203765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335cde62193e3a84135d3c7327f52130de1889f555a421e625fba5a45bd3fea5`  
		Last Modified: Fri, 20 Nov 2026 00:38:18 GMT  
		Size: 1.3 MB (1311665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5cf0b65151def44fbc1bf5307df4060465ebda8288ca8a65917fcab1f5a2f1`  
		Last Modified: Fri, 20 Nov 2026 00:38:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6fbba58ab6636dc951c2370d6b47a66882a82faedadf2ab24549fd7c8c37b6`  
		Last Modified: Fri, 20 Nov 2026 00:38:18 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad2840f1c78a56e98683373a76eb87410d33ab8f8afb18adb2c094606eb2451`  
		Last Modified: Fri, 20 Nov 2026 00:39:03 GMT  
		Size: 121.4 MB (121435939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1837bb99b431c038312f2c727634b2d7488049010baac4db5b7d289714455fea`  
		Last Modified: Fri, 20 Nov 2026 00:39:01 GMT  
		Size: 19.4 KB (19425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f4238ff416c2266649d02d4ed9f4bf47479e4664220ba5e131e172dfa9fd0b`  
		Last Modified: Fri, 20 Nov 2026 00:39:01 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f716619e2e5061d2d810001b97580dc2bfeb595eb8f9e4c4f510f0575fe0b6`  
		Last Modified: Fri, 20 Nov 2026 00:39:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:797dbdd7be86daa5f925a26f047276424e800a38b58e8bc8f588b627a0943547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6369367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb73af21eac4f0926d02fbeb86c87433c97b8ee13f84768ce9a759c791174fa`

```dockerfile
```

-	Layers:
	-	`sha256:ed4e4f8e1aa3babe1ee55de6e717e56f946d8465a0a99850549c1470be0bfefb`  
		Last Modified: Fri, 20 Nov 2026 00:39:01 GMT  
		Size: 6.3 MB (6319077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d06a93572696017dd2b9e4fc0c27fef426ecc5f2fede400e4703f7247fe62e`  
		Last Modified: Fri, 20 Nov 2026 00:39:01 GMT  
		Size: 50.3 KB (50290 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:c3910dcb36e26b5ad15a990332db8e849382e7f5aac5ccbbe99ad5feb26ec657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97781515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f7e434fd25de6596e460d16bafa7a64ce735a3ce7ad4883fd0d027f9fb445`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 00:37:46 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:37:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:06 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:38:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:38:15 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:38:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:38:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:38:22 GMT
ENV PG_MAJOR=18
# Fri, 20 Nov 2026 00:38:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 20 Nov 2026 00:38:22 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:51:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:51:46 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:51:46 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:51:46 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:51:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:51:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:51:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:51:46 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:51:46 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:51:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905e47b144f7040b4bf7483e35a8219c2493da34f4fc9f95d5aab4ea8b08d6c0`  
		Last Modified: Fri, 20 Nov 2026 00:52:00 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed100a796a76ea19e83ee66b8b604876e104439da6d30c9f5b6a527840694e20`  
		Last Modified: Fri, 20 Nov 2026 00:52:00 GMT  
		Size: 5.9 MB (5932411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b61789cb58569d137ff0bb156062beb80b0eded227c64399e2a3f56e25056b0b`  
		Last Modified: Fri, 20 Nov 2026 00:51:59 GMT  
		Size: 1.2 MB (1229296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefebb650509d86f4cdd9dabec0523a6cbea1eea647baafc9c4e23ee358929f6`  
		Last Modified: Fri, 20 Nov 2026 00:52:00 GMT  
		Size: 8.2 MB (8204276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e19b90f3eb5450bd40f833d9219788e3948ccb78cb99e52ab5f81ed2659bac5`  
		Last Modified: Fri, 20 Nov 2026 00:52:01 GMT  
		Size: 1.3 MB (1317373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f86ca98f6f91b26df44e2c44f1b98150f84ac6cc5c896bd965f9e84d7b1cabb`  
		Last Modified: Fri, 20 Nov 2026 00:52:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bba7c6d2af8a40c3a3ed58dbd6b8ba8bfc8d53166d92175b57c9c25a7b28cb`  
		Last Modified: Fri, 20 Nov 2026 00:52:01 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb627b9e264c2af085dd0e25cad68fbcb4dc9ffa9f8abac7d20ea6805e91affc`  
		Last Modified: Fri, 20 Nov 2026 00:52:03 GMT  
		Size: 53.0 MB (53048254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7fea6d57c5f11c4dc5cd77ee9676b5957e1eb807119e7d45aa49e25978a0a8`  
		Last Modified: Fri, 20 Nov 2026 00:52:02 GMT  
		Size: 19.4 KB (19416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dae7f973707743c5b8f1a2c930fe1d3ccd6341d97a572b9c61da41f6d785b3d`  
		Last Modified: Fri, 20 Nov 2026 00:52:02 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9786b1a0bc7a2b523e6b8598851bd53bc35a19fe0e33b92aa57fee605fa31e`  
		Last Modified: Fri, 20 Nov 2026 00:52:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f0354c62ae6f483eefd87d56435f607f084080980abcba9bfedd5027953fba09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5516139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33b16041412ba282e0c5028228949b1ded0ba73e845f1ba19158089538e152a`

```dockerfile
```

-	Layers:
	-	`sha256:b9d6a75da45c8643a6c18dd8667eccf716de33081da80909585ae111ec4ec5f0`  
		Last Modified: Fri, 20 Nov 2026 00:52:00 GMT  
		Size: 5.5 MB (5465656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b5cb7bbac727710ce687ee9b36b6eae89d231eee86fb3b70a7e55bb2d403431`  
		Last Modified: Fri, 20 Nov 2026 00:51:59 GMT  
		Size: 50.5 KB (50483 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:15b40aee4ea68c796a9563ce0916f03c3d87bd4df7396817885cb0b811faea59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93691175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad664b841c8a994bb18507066fb33315a05d18cbe4ff5b4892c55ed69a471122`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 00:41:15 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:41:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:41:31 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:41:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:41:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:41:37 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:41:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:41:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:41:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:41:43 GMT
ENV PG_MAJOR=18
# Fri, 20 Nov 2026 00:41:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 20 Nov 2026 00:41:43 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:53:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:53:48 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:53:48 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:53:48 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:53:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:53:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:53:48 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:53:48 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:53:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82129d140fc9aeb192ffd121ea6e66bad5dae2713f4b0c2d5afb0f023abf099`  
		Last Modified: Fri, 20 Nov 2026 00:54:01 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce93e34872d41ec6dac6456d96941a6d37c39f39dee57b811635a177c4a5b5f`  
		Last Modified: Fri, 20 Nov 2026 00:54:01 GMT  
		Size: 5.5 MB (5497296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e7e0b33ed081e08550a95149e7208494c2294316a1f7163da1c4c3b0649c14`  
		Last Modified: Fri, 20 Nov 2026 00:54:01 GMT  
		Size: 1.2 MB (1223490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c868b95dd7e7f4e70adf4aa457c9033166304c0905e62ac062bdc2d72e0eac`  
		Last Modified: Fri, 20 Nov 2026 00:54:02 GMT  
		Size: 8.2 MB (8204064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1704097cf9706de2d8a44144312c7685128c9bcec21abd290dc2f454ca5cd1c4`  
		Last Modified: Fri, 20 Nov 2026 00:54:02 GMT  
		Size: 1.2 MB (1172679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0084ecc47dd6e6c20691f44cb1da022cec099ee2e4838181a3086cb87ce20737`  
		Last Modified: Fri, 20 Nov 2026 00:54:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed9cb0164b052bce9e324a3862b6c52f2463a9b4253de54bd97f15bd53b0bee`  
		Last Modified: Fri, 20 Nov 2026 00:54:03 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9087c599867ff133a0aea49fd057d56c99811c33f721e18e93070365730db66a`  
		Last Modified: Fri, 20 Nov 2026 00:54:04 GMT  
		Size: 51.3 MB (51290417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736aff157001aa1f6ced660725f6f3d671f35a9937851b7b3b3542cd0597602a`  
		Last Modified: Fri, 20 Nov 2026 00:54:04 GMT  
		Size: 19.4 KB (19437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e38914e7e78cf60f6b663aaae17cc04d9de4bbab9f3dc6ff9c114813816717`  
		Last Modified: Fri, 20 Nov 2026 00:54:04 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e0cfc98dc477be9f85bd063848889f6765b2b25ab0b5af6699ae24ba0a8053`  
		Last Modified: Fri, 20 Nov 2026 00:54:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:bdb9d9e1f7dc9b3c22919c9661b5bb571737d8d41e1efffa0120773dc4622927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5528840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f1009e17603eb790c9736c4c072e7b4213f587aa6b1156722668fc9493d955`

```dockerfile
```

-	Layers:
	-	`sha256:d2bc7723de419756164f9100a08d702789b22b007da0116180def93952cacefd`  
		Last Modified: Fri, 20 Nov 2026 00:54:02 GMT  
		Size: 5.5 MB (5478357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a08702b950e4aab7ea50cd7213e311c869336a48211666fc095bb62e4e562b52`  
		Last Modified: Fri, 20 Nov 2026 00:54:01 GMT  
		Size: 50.5 KB (50483 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:af98f9bf838b7b6bbc9b41cc14454549cc45b2a31addc617d3e2c74c76532acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167053127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d95273cb8aacdaa8e9f771292ba289ed877b91de7bae1f5c0f98052342d708`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 00:38:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:38:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:57 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:39:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:39:03 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:39:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:39:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:39:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PG_MAJOR=18
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:39:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:39:28 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:39:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:39:28 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:39:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:39:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:39:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:39:28 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:39:28 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:39:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c73d7a185295b22285b177a388cb2e3f247d817b9b9b47ebe28341787b49768`  
		Last Modified: Fri, 20 Nov 2026 00:39:49 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87026f07bf03be4c6bb798e5e8761b7eb952e8def729a5daf18fb73ec9ec1e3`  
		Last Modified: Fri, 20 Nov 2026 00:39:50 GMT  
		Size: 6.2 MB (6234998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9789bf7607ecd20d02910eb112caa0d64cb7d1250c8447871c11ab14576d36ad`  
		Last Modified: Fri, 20 Nov 2026 00:39:49 GMT  
		Size: 1.2 MB (1210425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfa4b1f87f79ab7d187adcea370812ef6b9ff630fefa911cc1936a16710e5ac`  
		Last Modified: Fri, 20 Nov 2026 00:39:50 GMT  
		Size: 8.2 MB (8204034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd30c7f42869c1442bb7f753174992c69b7c03a192732f3cac693fdfa741fde`  
		Last Modified: Fri, 20 Nov 2026 00:39:50 GMT  
		Size: 1.2 MB (1220696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e85a0d62105dfe671d02220b4733a5205af3423ef70fdd0a8511c8bbd29330`  
		Last Modified: Fri, 20 Nov 2026 00:39:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5af8bf50557b53607abd4ef726a4da59629b702abdfb666f80e273c3f2567eb`  
		Last Modified: Fri, 20 Nov 2026 00:39:51 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f077086da27b65c11ef073117448a09d94dbcc385788b2942a840d1a4588425`  
		Last Modified: Fri, 20 Nov 2026 00:39:54 GMT  
		Size: 119.9 MB (119938642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15060436854ed996280d910e96d7ebc982bc37431cda7b07b30669c9b41dabc1`  
		Last Modified: Fri, 20 Nov 2026 00:39:52 GMT  
		Size: 19.4 KB (19423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb79c13bcd5d07c9f1162db0573b053d08899b5c0f3b2e9c7e6a4782e29a9672`  
		Last Modified: Fri, 20 Nov 2026 00:39:52 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70f6b5f618b36dba18117969fed3779822909ae48a555644e8c1b0eaae60d1c`  
		Last Modified: Fri, 20 Nov 2026 00:39:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:69cae97a4ac5bf8db9e4a0be78a041a930cf62a05d3177f0d32f23217ba07e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6375950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedac8e8aed9859c42192e7ee41764f249adae91570218d7f189b4ce4dee46a2`

```dockerfile
```

-	Layers:
	-	`sha256:a48e643930786033465d4ca5a381ce4addb8508cfb14d15ade0cb926fd4096df`  
		Last Modified: Fri, 20 Nov 2026 00:39:50 GMT  
		Size: 6.3 MB (6325421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bae33da18f3eadafe273c6ee62237a37be496e4e14980318b777d946b962ff9e`  
		Last Modified: Fri, 20 Nov 2026 00:39:49 GMT  
		Size: 50.5 KB (50529 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; 386

```console
$ docker pull postgres@sha256:3da8b25a779d49da35766a1759fa03886510a0e883dd0ff5caf8c9d97f43e9dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103830985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31574c4ba63ac3754a07d70fff89f2105750d0cefdc9cabfbc4898e4f4e5dbd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 00:38:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:39:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:39:12 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:39:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:39:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:39:17 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:39:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:39:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:39:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:39:21 GMT
ENV PG_MAJOR=18
# Fri, 20 Nov 2026 00:39:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 20 Nov 2026 00:39:21 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:48:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:48:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:48:22 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:48:22 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:48:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:48:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:48:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:48:22 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:48:22 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:48:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb4e2636a8fc492072c6e293309761f8ba4f8fe2dea5af2074c9d0387a0ed99`  
		Last Modified: Fri, 20 Nov 2026 00:48:35 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19dc29cc189d966863f0600c1de4d7288ca7af57bf47bbc489fb4e97ff0345c7`  
		Last Modified: Fri, 20 Nov 2026 00:48:36 GMT  
		Size: 6.6 MB (6631394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612b07c6daf6f8be56448a5cb927b3bd2581cc148038ea512cf42ab4bc075a37`  
		Last Modified: Fri, 20 Nov 2026 00:48:36 GMT  
		Size: 1.2 MB (1226806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf4baa0868f514817bfd6805505ef313dba3a95c9e420cb04c26fa1f4584455`  
		Last Modified: Fri, 20 Nov 2026 00:48:36 GMT  
		Size: 8.2 MB (8204015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a51b0e51d8632f581372a7803eacf9c61f968357667aaaa0a40792f0709f3a5`  
		Last Modified: Fri, 20 Nov 2026 00:48:37 GMT  
		Size: 1.3 MB (1308308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9448159c84072d9eaa7677b38ebf9c60eec17d668b629c2f9170189e34352f67`  
		Last Modified: Fri, 20 Nov 2026 00:48:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e8e32ec7e174e8ae712221f60e4255d0b48efac3e66c065c27b5a4ba28f831`  
		Last Modified: Fri, 20 Nov 2026 00:48:37 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5147b87fd55d9164b3d182f729d9d0d6f84416057032f6cce4c42a1077491fc8`  
		Last Modified: Fri, 20 Nov 2026 00:48:39 GMT  
		Size: 55.1 MB (55059408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de909a860d2b2c2d70ca29d5ba4cda0d362bff972183f7a1811dc2fa363c82a`  
		Last Modified: Fri, 20 Nov 2026 00:48:38 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce63e8fd73849b4c1b5ea8f8f484bf55c461cad07eda9c7995a9bc55f1fe4b18`  
		Last Modified: Fri, 20 Nov 2026 00:48:38 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029872cecc6e047eb0ba85cb489852bc0cdbd589aff6f013c20401915f84563a`  
		Last Modified: Fri, 20 Nov 2026 00:48:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:11b4d576a987cb2d65f1f96a1f8b9124be409b16778e78a2407a73358c0ffc18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5524632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef7be48619b3dcd259e59d107235e2198dd916761fb92357971984cb58a1903`

```dockerfile
```

-	Layers:
	-	`sha256:2b75ead2c4496adb10a02edc0cb0b99b82d616a450da0133f2fce11a54efcb69`  
		Last Modified: Fri, 20 Nov 2026 00:48:36 GMT  
		Size: 5.5 MB (5474396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5b3ed26dc3f84aa3e6f5923f76886ba9ed37c3aa9eff1ec0bf6b7f6b7843d1`  
		Last Modified: Fri, 20 Nov 2026 00:48:35 GMT  
		Size: 50.2 KB (50236 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:3773986c8f677d16718d68676cc23152025e165660b21517d35922d558bd1f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181544312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed02d42f956fb878d4f1e5463e43dc753c4a2eddd0792db6d3470e4dde851a7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:26:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:27:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:22 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:27:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:27:37 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:27:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:27:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 02:15:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 02:15:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 02:15:36 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 02:15:36 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 02:15:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 02:15:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 02:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 02:15:37 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 02:15:37 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 02:15:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7a509ce7fe5f345b05ad5716ad8d7038cace799f206010491a8055ecfa5108`  
		Last Modified: Wed, 18 Nov 2026 21:29:23 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc69132c404060ffb7724d793248330641fa10a05a4acdabebb5cdf9e0fb04`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 7.1 MB (7076967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e2351fc08baec5db5c1ce328d052a6fdfeb892b6347c139df73c53f2d4fb1a`  
		Last Modified: Wed, 18 Nov 2026 21:29:29 GMT  
		Size: 1.2 MB (1215591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df19d8d22736c4883d41f302a8681cc196bfa22d73c8d5cd1108836f22c9749`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 8.2 MB (8204105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d976015b0a32da538d25ff6fdb67d0c1e0421df9c10abf72a608ede2ac136f`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 1.4 MB (1395000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb24b43e09a71cc62cf2083cf75f133452bfc0655803827d264e4992470f1cb`  
		Last Modified: Wed, 18 Nov 2026 21:29:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3b1a88b66cfb90075f11a9cc51368ec650b8ff1e24784b25e101e253972ce5`  
		Last Modified: Wed, 18 Nov 2026 21:29:31 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee015081898e6f25e95f2b07e0cb87ec20024c4828fc75c104fa792d8609f80e`  
		Last Modified: Fri, 20 Nov 2026 02:16:31 GMT  
		Size: 130.0 MB (129954685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de190eda11f90df2b06575bac92957837c46e9e73b45e675b2be3174e1c313c`  
		Last Modified: Fri, 20 Nov 2026 02:16:28 GMT  
		Size: 19.4 KB (19432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224f069234d7590308034805cecc9dd46a02bc406bc5c4e9e217d71a148ce23`  
		Last Modified: Fri, 20 Nov 2026 02:16:28 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d146e7cd82bc22282bc5e721ca7fb890e09f703e0892b318acb7584a139d697`  
		Last Modified: Fri, 20 Nov 2026 02:16:28 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6a029b4714641974f7b1001ce29b1a10a90d1eb62b8d7de5ddba744f678d0180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6362698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135d49e7d47c8b1cced916053af9b2372a2962a0d868902cc1f0b03c9b9b9bea`

```dockerfile
```

-	Layers:
	-	`sha256:5de5929dbc06c3484d8af487f6278017163ea2ba2dc10421fd3b7db73ed6b980`  
		Last Modified: Fri, 20 Nov 2026 02:16:28 GMT  
		Size: 6.3 MB (6312346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e33ee46b1d8ebda16d067bf68c94dbe26c4763140885978d9a999a322887904b`  
		Last Modified: Fri, 20 Nov 2026 02:16:27 GMT  
		Size: 50.4 KB (50352 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:1f9c893bd50534d8cd6a9343606b9126613aa8992a5e3cff21232a6e1c1a8497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98930563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b013afd64e8686edb0d2a3d16ca04398baca48814df5b176e1bd991168470496`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Fri, 06 Nov 2026 13:09:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 06 Nov 2026 13:10:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:11:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 13:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
ENV LANG=en_US.utf8
# Fri, 06 Nov 2026 13:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:13:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_MAJOR=18
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_VERSION=18.7-1.pgdg13+2
# Sun, 15 Nov 2026 00:44:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sun, 15 Nov 2026 00:44:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 15 Nov 2026 00:44:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 15 Nov 2026 00:44:54 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sun, 15 Nov 2026 00:44:54 GMT
VOLUME [/var/lib/postgresql]
# Sun, 15 Nov 2026 00:44:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 15 Nov 2026 00:44:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 15 Nov 2026 00:44:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 15 Nov 2026 00:44:54 GMT
STOPSIGNAL SIGINT
# Sun, 15 Nov 2026 00:44:54 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 15 Nov 2026 00:44:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bdf486313f4fab4134d55e8bc180145d8cdcba9b939bda2bfcb8dbe0c94db1`  
		Last Modified: Fri, 06 Nov 2026 15:28:18 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a0b4573c7b8a214f84d60cda732378ca569ee43d2c764d55d6d85956126688`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 6.3 MB (6293046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a315df71a26c22b72f1f246cd9adc5dd90fec5135f51fad173250fc2c781673`  
		Last Modified: Fri, 06 Nov 2026 15:28:19 GMT  
		Size: 1.2 MB (1202081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d8877267ad22a64ac4264de125ac21dd260fcb4a7c19fa1e0765661063e1c2`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 8.2 MB (8203747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83570607eed8cee879f5b6de54268c68bd13c52e23f9c7d0e9a6183927b980e7`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 1.4 MB (1402461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4a001991cd17d93226b4ef6067bb1fe5358ee92c5728d01d141329ffedb7da`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e22d45c17a29cfbff0e0dff55bb2e94aaae980b0b984d6809d618ea1bc10a8`  
		Last Modified: Fri, 06 Nov 2026 15:28:22 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e7cb8292d31958533cc2b554d75e5191ef8b3e48eff1755f73d1c390070e7`  
		Last Modified: Sun, 15 Nov 2026 00:47:58 GMT  
		Size: 53.5 MB (53452761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95eef9da6240b0824138dbf700322419b43a9be6afb60cac0d6ebfe870580cf`  
		Last Modified: Sun, 15 Nov 2026 00:47:49 GMT  
		Size: 19.4 KB (19430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6f323437c42dd6e252638adb726ecf5466610f03370dbb8df4c3bb05e8bef2`  
		Last Modified: Sun, 15 Nov 2026 00:47:49 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdbd0c10554fa1ff6af1b0749deb4fa2aab6d4a0dededba64da963ffb7ad92e`  
		Last Modified: Sun, 15 Nov 2026 00:47:49 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a233f5110b3ade3403fd4ef795b6de99635f7ec7b7e39d84f8dee40d649d7e10`  
		Last Modified: Sun, 15 Nov 2026 00:47:51 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:627ef3bd10fa209f7a7fa8c9a38cca1efb90ba76d4a12117b94a2477d85adc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5528794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aa333717308727688a778604b4344f9787248807cb0b5721ce0c091987dcfa`

```dockerfile
```

-	Layers:
	-	`sha256:3471dcb4e2cd8808cab95490a0896c61c4ecacdf75afd749cfe709747c2b32fa`  
		Last Modified: Sun, 15 Nov 2026 00:47:50 GMT  
		Size: 5.5 MB (5476244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e86631f9262a8608ed8882d37b198e3cdf02f351a9137be34c69d3bc003146e7`  
		Last Modified: Sun, 15 Nov 2026 00:47:49 GMT  
		Size: 52.5 KB (52550 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:5173e973c876ef5d42c28279bef918995ee319793d3cefbdff52b2b7b48af6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183223574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e558cac01453844374db7819e9a6054c7c1c2b96d24a65ef4e65150d0f21e75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:27:38 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:29 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:51 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:30:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:30:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:30:15 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:30:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 18 Nov 2026 21:30:15 GMT
ENV PG_VERSION=18.7-1.pgdg13+5
# Fri, 20 Nov 2026 00:48:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:48:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:48:53 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 20 Nov 2026 00:48:53 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:48:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:48:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:48:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:48:53 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:48:53 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:48:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f3b3e4a60b50a4be884e76cb6e810d6a74ec105ce67ee4052873973ed7b280`  
		Last Modified: Wed, 18 Nov 2026 22:28:54 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10b9d1af8968652595fdba1befa268cfc6c221e79a581054f94e0d0d909893d`  
		Last Modified: Wed, 18 Nov 2026 22:28:58 GMT  
		Size: 6.4 MB (6408938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8bde1d9fa53980a9d99966216db7cbe05ad322e7e0cf7136c2b0336c629454`  
		Last Modified: Wed, 18 Nov 2026 22:28:55 GMT  
		Size: 1.2 MB (1231925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aadd67ffa4559110032cba7c0b7dd5ec0b4ce4a8fe19ac1a89628426c37cbdf`  
		Last Modified: Wed, 18 Nov 2026 22:28:58 GMT  
		Size: 8.3 MB (8259353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caad98c8c93529e754593cd4c15340ac6d4556f278ab10bde4e168a9b34998d5`  
		Last Modified: Wed, 18 Nov 2026 22:28:58 GMT  
		Size: 1.4 MB (1398641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f7e7f9210250219444b271740cceeb3d7e9640b36216f0f70671b468a42d54`  
		Last Modified: Wed, 18 Nov 2026 21:32:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e649dfb8c7f52ca66714ba253a46375bfc6b10b70dea601ef57b813c696ad103`  
		Last Modified: Wed, 18 Nov 2026 22:28:59 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07681ff80209b9b2c0618691e46281bdaa4dcdaebf4b60f6dc35be26eb56571`  
		Last Modified: Fri, 20 Nov 2026 00:49:25 GMT  
		Size: 136.0 MB (135970285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3192d1f1dae9fc5dc51c327dfc4229beecd0720b24124e82d9606939d05ece`  
		Last Modified: Fri, 20 Nov 2026 00:49:23 GMT  
		Size: 19.4 KB (19427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf8645164ea2b355743585542b9ba141432c368e1dbbc418cde28301d5c2fd5`  
		Last Modified: Fri, 20 Nov 2026 00:49:23 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1162374da2de000ac4f785a34979f57278c19e84e6e0b680a436cd9f90272331`  
		Last Modified: Fri, 20 Nov 2026 00:49:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:73421caff6fba53cfcabdeb184188364e4b4a241df8bdfbdabca2e0f10732686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6370920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b00c9b7143f3a90cb93256d59757c1ef97cbb321fd7c061e3df006b1a3549a2`

```dockerfile
```

-	Layers:
	-	`sha256:4596e70208904d06a56cd747ef99c723acf19161a3b9320b2fc64f27ed224164`  
		Last Modified: Fri, 20 Nov 2026 00:49:23 GMT  
		Size: 6.3 MB (6320630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3834b67851480bba40d534cc505c47a124da83b809dd7083eee76c93cbc5faf2`  
		Last Modified: Fri, 20 Nov 2026 00:49:23 GMT  
		Size: 50.3 KB (50290 bytes)  
		MIME: application/vnd.in-toto+json
