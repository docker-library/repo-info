## `postgres:19beta3-trixie`

```console
$ docker pull postgres@sha256:80753e53cff4808be024908e8af2fe7b931e4eb7eb8afa1f6b78875c5d68cb35
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

### `postgres:19beta3-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:d28f32b8bda4010ffbb1676799ead16467aaec713dae5db922776618515865cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163767201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3263e1014fae416bd68799a83801e9ff2b8a8d86e8297d4874ced320830dc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:40:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:40:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:40:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:40:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:40:28 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:40:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:40:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:40:32 GMT
ENV PG_MAJOR=19
# Tue, 25 Aug 2026 00:40:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 25 Aug 2026 00:40:32 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Tue, 25 Aug 2026 00:40:48 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 25 Aug 2026 00:40:49 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:40:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:40:49 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:40:49 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:40:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0befb8768a38194779be6bdc7a9c0917f0eb44fec81d33af4d56abe74b1b0f5`  
		Last Modified: Tue, 25 Aug 2026 00:41:07 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6accf32f030263f028fcb812a66d142f67c245964eb1c625776a6a73db0473`  
		Last Modified: Tue, 25 Aug 2026 00:41:08 GMT  
		Size: 6.4 MB (6442987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f0e1eb7ddf707da7a0f00545b7f0c3b51416c6ba0cba82ec7f9109305e1ded`  
		Last Modified: Tue, 25 Aug 2026 00:41:08 GMT  
		Size: 1.3 MB (1256751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0163ceaeac081c4956a6bc0c2a288a69477d1fa985db0d23d2139a75a1be215`  
		Last Modified: Tue, 25 Aug 2026 00:41:08 GMT  
		Size: 8.2 MB (8203864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0694dd3a92c9bcd9ef05bf9ca116e89d6623eff38449ef672b698ef7db9480f`  
		Last Modified: Tue, 25 Aug 2026 00:41:09 GMT  
		Size: 1.3 MB (1311662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8570368ba6c2febeb88a1b2617e584b4fc4f8c6247c7dcc38ca8f8fd590e9b98`  
		Last Modified: Tue, 25 Aug 2026 00:41:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c0931829f19ddc797dbbef0917adceb4476b983592ee97f734d998bf5492a0`  
		Last Modified: Tue, 25 Aug 2026 00:41:09 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107bc2f343c9fc05486988af9e9d0a2d604f58d22fd4e4fca4c25b813e6993e4`  
		Last Modified: Tue, 25 Aug 2026 00:41:12 GMT  
		Size: 116.7 MB (116726850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691b9fe3c0d2816138e803f6e4f139b115cc7ea650ccfa8049fccce1a525311e`  
		Last Modified: Tue, 25 Aug 2026 00:41:10 GMT  
		Size: 21.6 KB (21577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506d3d29cc11113cc9f33a4c1197fd79f2bcd36d9ddb4f782fb6f8579c14eb76`  
		Last Modified: Tue, 25 Aug 2026 00:41:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5668b14f8637523a42ebf729e9e25b2ba3b03912250b4a610320a3c7d34e43`  
		Last Modified: Tue, 25 Aug 2026 00:41:11 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880b868f9c3b5b6b19b07ce38680a6d9278bae650152e9f652b448f5b2e1b0db`  
		Last Modified: Tue, 25 Aug 2026 00:41:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:232a1d54c3b63432f6b008a3d45921d3f3705ec4c8df1b6d4976a404159a1d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6049447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047b0511c208d22855e9192d1560464c1aa556b03cadb19ad73efd9699cb69ca`

```dockerfile
```

-	Layers:
	-	`sha256:21bc854d3562994661ecde1bce0a2718528535856ed14f5dd04e7303b734b47a`  
		Last Modified: Tue, 25 Aug 2026 00:41:08 GMT  
		Size: 6.0 MB (5998137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9262639c7a4c8f3c9ca41a6b6b194ce0f0a05cac2c14f45c3f281dcf26ce39bd`  
		Last Modified: Tue, 25 Aug 2026 00:41:08 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e349595c94d53cc9eb4aaaa30e93ec7094b37f89319bb7362e757d77c9aec8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92063334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ab4b52ab478a88c3414610107231170ba59523440421bbb4c73d3b483608b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 19:13:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:13 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:14:13 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:14:21 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 13 Aug 2026 19:14:21 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Thu, 13 Aug 2026 19:28:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:28:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:28:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:28:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:28:16 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:28:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:28:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:28:16 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:28:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:28:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1a375255e4df6b70746e3826a01106cc1e21051d42fec5053a8209aca99038`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fa8a1fa34a1a74be3e1b8ddffa9f6b71423fe3aa673497058eb220318acb4f`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 5.9 MB (5932356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b660a9a6751c6a3725cef3538f363372261b36f7ab1b990feb376f8a9961c57`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 1.2 MB (1227419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28db89d0198e1d5ce7c8e549a473a2e8ad6fdb1adf0c25edf6355100a0ebf2f`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 8.2 MB (8204254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c3bf042f1a99841697f4d5b865c93c56c365e3c2891cc0c875c68f7eb8d00f`  
		Last Modified: Thu, 13 Aug 2026 19:28:30 GMT  
		Size: 1.3 MB (1317349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06e51b90012714471d2a70a3b59701c07eb0d62e7e959797f5079d68012c95a`  
		Last Modified: Thu, 13 Aug 2026 19:28:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d258e0f1453782fa5af0f7ba9b77fbd67845fbb4d2123d4642832e24e3c4f806`  
		Last Modified: Thu, 13 Aug 2026 19:28:31 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f807df40f853dd3865f8525d6a70ab692e5703c12a923ee006e6766598e026`  
		Last Modified: Thu, 13 Aug 2026 19:28:32 GMT  
		Size: 47.4 MB (47394824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a87affdbcd5463cf0db60735c89df82b4abe71bedec2f80694ae398b8a5926`  
		Last Modified: Thu, 13 Aug 2026 19:28:32 GMT  
		Size: 21.6 KB (21570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38e7fd14ce41ba9edb4555eb711f463e018c3870fbd82e440464d5b3228dd20`  
		Last Modified: Thu, 13 Aug 2026 19:28:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38787582654da98442a6ef8a17629fb3d6ad8bb7b652d814837ccf91dfcf2f0`  
		Last Modified: Thu, 13 Aug 2026 19:28:32 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14bede0ee6248fc7b840dd86f06a80ad0f8e2d1a188c4241c3ae0d2d7894e46`  
		Last Modified: Thu, 13 Aug 2026 19:28:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3f287183f63ce0eb1b6c352daa717131a0e01b8d1ede8a439e9d221b4009a74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5179682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4a751f28160f4e9b6cf64ae605f89991e48a79059736f18343cd47bd6147e9`

```dockerfile
```

-	Layers:
	-	`sha256:1ae97940fdbabdf35c93b5a60b5f27a547171f1d2189d2aebc539f37f8771efa`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 5.1 MB (5128183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1d7c583ec60aa03aa636f67fc1245a3e5d980d30c959e635702fb076268d71`  
		Last Modified: Thu, 13 Aug 2026 19:28:29 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0173169c982c6677976c45e67cd8980d25c23bbea25c6548ac6658dac3ee0811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88330335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de94790153835524c72687ee82acbb2b7bb9b1d2923d22fb93b165b745a67f10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 19:13:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:00 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:07 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:14:07 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:14:12 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 13 Aug 2026 19:14:12 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Thu, 13 Aug 2026 19:26:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:26:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:26:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:26:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:26:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:26:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:26:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:26:41 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:26:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:26:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e12c0c18fa259c3278d3186b46375d1a3cc82572f9a5a4a233d96d38b4869c3c`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fd2b34f63db5a8d28e213dca80997602f2fabe703fd3c5aac4ea179fa58d98`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 5.5 MB (5497324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2334c541e44ff2fd0abf6738e9cf99eeb5d059790c4f3789d47cb6b37ce911d3`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 1.2 MB (1222350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c31339ccf45647899d2098d4bb2beb5598fab6de9027f7225c90d19f6a017c7`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 8.2 MB (8204057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec62fbf55813185130fa228dc8ef39af594f3e31c7751ee816a3aebd5c8655ee`  
		Last Modified: Thu, 13 Aug 2026 19:26:55 GMT  
		Size: 1.2 MB (1172675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9de1db8b5cd81629c91149790c1e82836ded164146d54ad15cc5b4996449125`  
		Last Modified: Thu, 13 Aug 2026 19:26:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f3772c3f5932807adfdab8bf802c635098e7621fa3aaae79859487012075a7`  
		Last Modified: Thu, 13 Aug 2026 19:26:56 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bbd344df83b95707be9f4a1aa9b4b97603c27c213cfbed6e2fe21f05f7c446`  
		Last Modified: Thu, 13 Aug 2026 19:26:57 GMT  
		Size: 46.0 MB (45995126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb81893feda49b933836022ad6525cdf9609b8a934ac32f6273a5cf950533f84`  
		Last Modified: Thu, 13 Aug 2026 19:26:57 GMT  
		Size: 21.6 KB (21582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0987cde2c5330bf174531e8f6361adc77bc14069efd1a8154a2f4b4b0ad75d`  
		Last Modified: Thu, 13 Aug 2026 19:26:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552cb79f18d015088dfb9aab480d852a444a8a0d8e7c7aa5e589e5c0516bdf85`  
		Last Modified: Thu, 13 Aug 2026 19:26:57 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c30948be96249ff0d3c58ec1dd6b185879488ecb70eecced5f0a576de8185`  
		Last Modified: Thu, 13 Aug 2026 19:26:58 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e7450fb7d3dcd7e29953f49894e4ad63bc8044f38a0b995df68bf5e1e3e8bdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf00dc5125659b0f9b510b71dd1fdc619cc54b14e898209ac6ce80ea6c160717`

```dockerfile
```

-	Layers:
	-	`sha256:106d7f78ec50bf9a220d41ff8b52bd70fd84d0eeae0ada1f6ba5f704a77e6299`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 5.1 MB (5127488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:658eb9240363366b4176fde9df463e77664a6071f128a4c67ee0721055ffacb9`  
		Last Modified: Thu, 13 Aug 2026 19:26:54 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d2803db84af749f279166b231e05a92c7d5ef991540cb292a76fb41af997ebd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162340804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:476614b62bb53f2d9fbeec8229c9abc1e58835a584b6ce6c2e53f856355c61c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:42:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:42:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:42:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:42:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PG_MAJOR=19
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Tue, 25 Aug 2026 00:42:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:42:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:42:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 25 Aug 2026 00:42:58 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:42:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:58 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:42:58 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:42:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639367129460088118729269458e1c46426f7681ba5138b37e46131c898771b6`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dc84d6a4aa2e4343efc9e5c259e81b1d79cfab554b1a56adf09d96e4c9e900`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 6.2 MB (6234961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5f4502682d00fd24ad6fac2a97e8adb1ac1ee774d13b0613dc45ad9fc796a0`  
		Last Modified: Tue, 25 Aug 2026 00:43:17 GMT  
		Size: 1.2 MB (1209587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4fdeb764c39879187fba8e6eca31e4fc67031c94bdaa6d82fe7d4edf84986d`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 8.2 MB (8204064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d76beabaee731767c11e50bb90eff93a7fa492478f7b528ea8b18556135763`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 1.2 MB (1220625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3d617a86b0668ef085e9e625bc44349aeab5634ded09264576a801c9f84f32`  
		Last Modified: Tue, 25 Aug 2026 00:43:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c6f60102f8f948ed732666162d06e6eb97342e5f362cf7c218cc5c61816f8b`  
		Last Modified: Tue, 25 Aug 2026 00:43:19 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f32b3272b05b9d936718654e34d7d61d5033f006d5089f863b7b0c3cd68fd9c`  
		Last Modified: Tue, 25 Aug 2026 00:43:22 GMT  
		Size: 115.3 MB (115279554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32babbf32641e7a6f82a4eed9ae58fc4a5daaa31937bc0457e086c3d11edfa3d`  
		Last Modified: Tue, 25 Aug 2026 00:43:20 GMT  
		Size: 21.6 KB (21577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277e9fc319462e3a1811f18d1be4ac802749e3e171b0521e1ed41735ec803245`  
		Last Modified: Tue, 25 Aug 2026 00:43:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870ae5d26f529619392cb1c49e6774499cfb5fe4117b6c2b5493d5139544d9c4`  
		Last Modified: Tue, 25 Aug 2026 00:43:20 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da18691a673f99670f9dbea736d292938f079160516be8b0545c72477e3ce5d`  
		Last Modified: Tue, 25 Aug 2026 00:43:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:5d197a4c954ee888a827c7e9a44849db0a1ce636c2df900d3d9c3a36b2808a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb183db52f53a0346cd2176bef89d4cb839e0b222f910c380721e8c664831c66`

```dockerfile
```

-	Layers:
	-	`sha256:01fd684c23a38938befe064989ca7b92a2fda3b8cb4851946704c4298ff2edaf`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 6.0 MB (6004454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c363339295c84e05efd3d29b7f50249215d244d5f1b66b1c331ad696361559`  
		Last Modified: Tue, 25 Aug 2026 00:43:17 GMT  
		Size: 51.5 KB (51539 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; 386

```console
$ docker pull postgres@sha256:c9ea416c317875e6bcdbd197f9bc1f73d587cfa8c474831a8bc203629368fb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98254265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9ae404f2c48f2421942faed731186c5c1e3179eaec79e402eb066b4dea81df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:37:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:38:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:38:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:38:11 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:38:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:38:16 GMT
ENV PG_MAJOR=19
# Tue, 25 Aug 2026 00:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 25 Aug 2026 00:38:16 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Tue, 25 Aug 2026 00:48:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:48:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:48:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:48:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 25 Aug 2026 00:48:52 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:48:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:48:52 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:48:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:48:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc52532983bc1a2bd0c4d79dd37d1c8899f2705b7c1dbffc2df70f6ccfefbea2`  
		Last Modified: Tue, 25 Aug 2026 00:49:05 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef27ee1e2afcdb29e59064a6c5fa85afb7dbebb51c6d6e1b7fb039df8f3dffd`  
		Last Modified: Tue, 25 Aug 2026 00:49:05 GMT  
		Size: 6.6 MB (6631334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3d9b8923598ae738f710cfb4496acd18b23063c6db3aeac10788425de4efd5`  
		Last Modified: Tue, 25 Aug 2026 00:49:05 GMT  
		Size: 1.2 MB (1225841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a78a302a28d2953ebf1e96a3d981f6397751077cb3d5a0e7fee0cd1d2e7b2`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 8.2 MB (8204060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfd47f87d5f95366404d4fafc7bc6c1f131c79c8745e44d1955c39d3ab6ec7c`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 1.3 MB (1308302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5966ce6139b6e42743696f13d59d166a3d123d502615b2fe436c7fd9e86595`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2388f14071f17cd89255c0b232653d88a0a829f8d9e1e3b2039503a7cf04909f`  
		Last Modified: Tue, 25 Aug 2026 00:49:07 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f050aa26b4ed374ac4c22cd418d75310699e08ba077ff6b6761c2cbb521af179`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 49.5 MB (49548908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91bec5288ccef413373476bce37b636efc192e7d3e2f324cbc01eb63ddbc741c`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 21.6 KB (21572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78102b6f08c942a15fe2bc1d20ea2d60bea9bf0df5a91ac7738de1675abebb7c`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d814d4787595dc62851f55f0a9c4470ef01bf89f87506056e72516fea9e837`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5915d327ab4e8f9f2e275198691edeb845e058da67f7f5832fe5e4d57a8b97b`  
		Last Modified: Tue, 25 Aug 2026 00:49:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f108442578dc0ebfbae90e654f2523f99bb12c2733bfbe5b3d5b8db4e234dba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5175051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3b41eaf00bf9dfc72e7440797dc8ba00dc10809705d720996887a2bff0ea22`

```dockerfile
```

-	Layers:
	-	`sha256:370ca3507b4d300dc714fbc40ca5ad8de8aa83519acfb3dc0f2a7cc0d669a448`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 5.1 MB (5123788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3279338edfbe0feb7571a90f5904faab1f75e9043f75a204f785821eb8331f0`  
		Last Modified: Tue, 25 Aug 2026 00:49:05 GMT  
		Size: 51.3 KB (51263 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:600d821f8febc6fc05aa67b20ef6a870aef9cf7c4a4e19df9e297fdfdb95717f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176255635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d4b019ba6fdcf761138545720fec95b99d78ed211de1b4fae34d06791d5171`
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
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Thu, 13 Aug 2026 19:13:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:13:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:13:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:13:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:13:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:13:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:13:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:13:34 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:13:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:13:34 GMT
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
	-	`sha256:d46852bbff85f9854546c09b61a54395a6a4d0a48d4beb07ca4f565a92948cca`  
		Last Modified: Thu, 13 Aug 2026 19:14:19 GMT  
		Size: 124.7 MB (124731431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69db9b5c2b65ff88332640b5f5b8ae801c3e0a20dbd53925b49de98803c25bee`  
		Last Modified: Thu, 13 Aug 2026 19:14:15 GMT  
		Size: 21.6 KB (21569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c77e3f33d68d85b6064c08eb3395780cf14fadcef6518f559cc28f4e304238f`  
		Last Modified: Thu, 13 Aug 2026 19:14:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a719f86e83ae7dd3ed79015f9bfeeab07e3ae95a3f5c69a696a9aaba2aa03911`  
		Last Modified: Thu, 13 Aug 2026 19:14:15 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cde9c6cc0437ced2faaa33f2cf6bcb88674c9268e0161e63f98d959fc36cfe9`  
		Last Modified: Thu, 13 Aug 2026 19:14:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ceee5ccf129db697e1937408d72fc3faf2aa08383526f9535243d5cdea27a178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858c0cc2636a258640a06ffd32db12d5b9357e10f8238b9ccbec7c4402a974c0`

```dockerfile
```

-	Layers:
	-	`sha256:843ae9b07400226dd45ce9e8ed8b9f8fe63a0ffb51bf30c6642bdacbf0e7297e`  
		Last Modified: Thu, 13 Aug 2026 19:14:16 GMT  
		Size: 6.0 MB (6004563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:676bebeec1c31edd6ee9328dfbe2c67b516aa44d0c358a7a7674f4f2088b7f6c`  
		Last Modified: Thu, 13 Aug 2026 19:14:15 GMT  
		Size: 51.4 KB (51362 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:cee5e610e18b4032ef59cb3d2d3a1b677d7179b891a8913a31a55663b7bc7f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96500280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c75e1296f31c0ef60a0c19df29a658365a37df9874b49d8c450b8ae1fa8f8e`
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
ENV PG_MAJOR=19
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Sat, 15 Aug 2026 15:22:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 15 Aug 2026 15:22:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 15 Aug 2026 15:22:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 15 Aug 2026 15:22:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 15 Aug 2026 15:22:52 GMT
VOLUME [/var/lib/postgresql]
# Sat, 15 Aug 2026 15:22:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 15 Aug 2026 15:22:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 15 Aug 2026 15:22:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Aug 2026 15:22:52 GMT
STOPSIGNAL SIGINT
# Sat, 15 Aug 2026 15:22:52 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 15 Aug 2026 15:22:52 GMT
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
	-	`sha256:6c9bdfda77bb890bfc58d7f89a3012c36844e8b12941349681e3c98c6328c80a`  
		Last Modified: Sat, 15 Aug 2026 15:25:33 GMT  
		Size: 51.1 MB (51088533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8e18aef7fbe2d63f8621600a694da06f2f6efc017a939d7c787ac6f5a1ed95`  
		Last Modified: Sat, 15 Aug 2026 15:25:25 GMT  
		Size: 21.6 KB (21583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301893f3422a17e22e86f945356ef36744e98d31dfe615f3df3c11f6f9667e91`  
		Last Modified: Sat, 15 Aug 2026 15:25:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfaf5dbd09dc5995ba60caee8eb8267b32fe1dc1c764a2dca06ed75b7dd9279`  
		Last Modified: Sat, 15 Aug 2026 15:25:25 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0106736abbe53aaf23a53023f4bcb139dd367c2a05b3b41158890987ac00c16b`  
		Last Modified: Sat, 15 Aug 2026 15:25:26 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0bbbd585ed5f3dc2622a964958fa2c0cb447e783a62be1975213f533c84d572d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5170041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f958ef0adc173dc0b912ed1bb00ad6f642484aaa6aaf1d6c5881bd4e2da1bd3`

```dockerfile
```

-	Layers:
	-	`sha256:9d5df4c2abce7a003e4a4b4e1320cea97df78c8de0dcd5af4ed2fb17963d22ed`  
		Last Modified: Sat, 15 Aug 2026 15:25:26 GMT  
		Size: 5.1 MB (5118684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca8edadfb0c7b7b96f2ff49eda75574db27a410fc400330263d0fd69b17e0f26`  
		Last Modified: Sat, 15 Aug 2026 15:25:24 GMT  
		Size: 51.4 KB (51357 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:9e19b51c834f045af8256df6ba1dc3221f57b3c0f6899f51caffbd3998612eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178441615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1a320c6b57c12acc861e353a6ba0bc95bb84661e0ea166e9c1db0735358dfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:01:35 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 01:01:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:01:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 01:01:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 01:01:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 01:01:58 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 01:02:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:02:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 01:02:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PG_MAJOR=19
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PG_VERSION=19~beta3-1.pgdg13+1
# Tue, 25 Aug 2026 01:16:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 01:16:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 01:16:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 01:16:09 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 25 Aug 2026 01:16:09 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 01:16:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:16:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 01:16:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:16:09 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 01:16:09 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 01:16:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a711bfb061edfa1be8b6ee1f43c5c8709e12a324425f2bbf3e601a2fe7975b`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f79e2ffeb9dc03bce71a85fdfdeae755e6c45d3b566abdcd5f68e4533b59e25`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 6.4 MB (6408467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb853d5446e08ea9412c016f4719dfb269c2e45e5e4c467ad2bf5085cd67a7`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 1.2 MB (1230233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827fc02dc4fb2bb5adbc91ab17826cfa0b3be1846e334bd68423843d9aeabd98`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 8.3 MB (8258996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1121bf664bda86d0ce7ca17802bcc08b7340fed487f9357f7c465195ec7a7d88`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 1.4 MB (1398239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5264a5bbe7f735c501e09e8ed18de956324f0fbf90330495b83816c370b159e`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8af369ae617dd7c3714d9093ef4a92979888bd8db58b60932204dd1fdb9cc99`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ece7fb08ca36489d55a3994eb9a6e2784b83b5d87988cd0246df073e6608202`  
		Last Modified: Tue, 25 Aug 2026 01:16:48 GMT  
		Size: 131.2 MB (131245530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9526e9691b2f6f44e080e8b57c5dc77a0e60c66eff853565a19cedd9647f4df2`  
		Last Modified: Tue, 25 Aug 2026 01:16:46 GMT  
		Size: 21.6 KB (21579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45261f962c008e88d8bccc0ce79334b2f91a48b3244f28fa1bfa3385c47b7d31`  
		Last Modified: Tue, 25 Aug 2026 01:16:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3350e5f494e4a3a567c1baba1f27f85704e0b6c981f14b5d74d4a240a8101e51`  
		Last Modified: Tue, 25 Aug 2026 01:16:46 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843d713d947a5c4d931604734ff0718c7cbde0fdded66584323bd4ec5e348db3`  
		Last Modified: Tue, 25 Aug 2026 01:16:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9a84f966f8827404a04bcd1a2500f6a49725e144a1410dd333e8420a96ca75bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6066139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b7eaf318e8d702a3280d36898f0b4ccb2ff9e1d557204fc9edcb4959514078`

```dockerfile
```

-	Layers:
	-	`sha256:7a6541127141d4c95190dcd39ad7af5df0f9003ea124f4507c1d74dbf3b859a2`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 6.0 MB (6014829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfccfe21904f76e3b9ef96597f6bd83bcf1be0f84c058db38417d00b93b49325`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json
