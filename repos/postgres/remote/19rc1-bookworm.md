## `postgres:19rc1-bookworm`

```console
$ docker pull postgres@sha256:ea49812690367937ccf96d3c6166201e167923ce8285931d962658c4f76f48b6
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

### `postgres:19rc1-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:4c74513d4dbc82fcf9a52652077eecd07942fa5a64590a427c96682cd1b8321e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (159006280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467a39280ceeedbf90ad42318c60dbe88fa9285b9d728312447003e8798f4ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:36:23 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:36:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:39 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:36:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:36:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 21 Oct 2026 00:37:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:37:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:37:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 00:37:05 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:37:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:37:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:37:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:37:05 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:37:05 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:37:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dc53399d0cd70f9790382fee9a64d2b227aab5cabdb67df855b7c40674fee3`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40cea1fa6bbd4c3254f9e21f78d7223722a3bd7ad51d880dcb9be0fed6344e55`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 4.5 MB (4534247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee0ed38c31fc020028614090875b8434dc93fc4788586f223c07303c33a5171`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 1.3 MB (1250043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c72a87d33ea98be8e521d750bf5d122ca2c14187c44ef15f6c4cc8ae6e6858`  
		Last Modified: Wed, 21 Oct 2026 00:37:26 GMT  
		Size: 8.1 MB (8066494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129fbeaf8d31815a2ab82571ded1512b7f003c28f508b8c60ab7d33c8109bb54`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 1.2 MB (1196453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba80acbeaa1f14b2ef79a0b57edfe19ab1ec6e505a3129b7b0384aba7a6dbd`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8603b138f7f67c07eab6b647c421832542d8ecec69c65a301d98ed78c6e330`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd0f69f7b6f481f2627961f7d101045a4f39976e43851eaadb6ba1276c9ac6`  
		Last Modified: Wed, 21 Oct 2026 00:37:30 GMT  
		Size: 115.7 MB (115678737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94eccce3cbf1d0941e4e3d9095858d1e9fb8aeb2be51d6f8df9b30a6d335f7f1`  
		Last Modified: Wed, 21 Oct 2026 00:37:28 GMT  
		Size: 21.5 KB (21521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3941af71a04dd7468b44d1b63e1311624b5b738cd00a6ac2b5f6abdd3c9cf6b`  
		Last Modified: Wed, 21 Oct 2026 00:37:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ae902b07a97c82658f9dc65c304f174ade43397d52b98aea152054d844f6c4`  
		Last Modified: Wed, 21 Oct 2026 00:37:28 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5125fd864cf4ab260bdc7ff09402d90968f689ae9369e9427c8b0ed2ca4cdc56`  
		Last Modified: Wed, 21 Oct 2026 00:37:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:4cac6742c71cd6698b2cf2f6b9ab6e16cd542671c10c9d94f986c3a30e9d3de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23919ed20b8776448491d5047b3dc3305aa19c9875779745e9797f91ad3bea18`

```dockerfile
```

-	Layers:
	-	`sha256:957870d85a0be158c877031d4e566c41482cea13cc9131c078da6c80e85cc275`  
		Last Modified: Wed, 21 Oct 2026 00:37:26 GMT  
		Size: 6.2 MB (6202958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6da0d196d67684dfa2881a70232b037d43cf1caf4700bc4a21b8ef54bfa6a7c`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 51.0 KB (50986 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:f58ec821efc7baae3bf11aad9200a4f7d6724fa5c7d21533c5ff0c4cd4e76323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86575477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c5cf2ed003528e86e387b9e98c382752d8338255a72761aef1d93519fdb887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:27:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:30 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:36 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:36 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:40:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:40:02 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:40:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:40:02 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:40:02 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:40:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bdeddb952ace706077206d32d0ba2cc42c31645d2c8af75bbecf5e1107321d`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbc23f5481f2f70e17d4b53ee483b3b4b4d9a4f073f86cdc492092e0e5e80f0`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 3.7 MB (3742703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783fa095e66177488591f4cb6c7c15f6ee5f716f84739f27fd3dca58a9a44b79`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 1.2 MB (1216496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389d29e9d2f6f82952160b59c260e543c5c5186f31994f6d03eae4612257d413`  
		Last Modified: Fri, 16 Oct 2026 20:40:16 GMT  
		Size: 8.1 MB (8066402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0200ad417a3c7da769b13e71b1c1db7405bb8f7d85033bb0a7179c7159b1cacb`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 1.1 MB (1067284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d539793bc7f1d5d9e12efbcee53776520a7ffd0675d9be67b37bf15ae8ac9fac`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b146b9889e42db4d550d3ddef1eb4c9e4e2411f33d6dca7f0e078a18cba5c9a1`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea299e9f19743cce9a269f6db75dbbbf39256495392a7680ee9da0243f48a6b`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 48.5 MB (48493661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524a98d5ce75592001bf7d6b785cc74dd47540f62a85ad03a7bc573e4df458c6`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 21.5 KB (21509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152395f474f570edd26501d51301812a02e06e6bada04967b8709355241717e0`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cae4a47ddb84985d404453259c654cdb62e73e71f5cd07b01cdbe4244eb2ada`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbb4260796be0aff07f0d06efb7df63f31d09df37fb00526aa74c47bab57e57`  
		Last Modified: Fri, 16 Oct 2026 20:40:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:0fc1e42e85e159730ef06c2ccd15785a62fbe6d573f719f9d90f8a6e0e507592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5385133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8172af3f8b1137e599ded5c0fa13814a89d0f25e45ff5638bfe4fcf93292844a`

```dockerfile
```

-	Layers:
	-	`sha256:1aa32f15d3d98e5f90a8cd5e8a4e12451c79314a000c33fd64d9b1a2a77b7cb8`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 5.3 MB (5333966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ced4c18ed111f176a3e66669e2f1b6a98ef471de0dba63de6368f4cee4af2ff`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 51.2 KB (51167 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a1ec164437b50065b21b4387866da9eb760f6b25f37b321675f8e447cbeebff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156949009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de01f5c20c4a9d8338ad3463377542c8ab69f74b3953ab78e677f1ff68e6a80e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:28 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:39:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:39:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:39:33 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:39:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:39:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:39:38 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 00:39:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 00:39:38 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 21 Oct 2026 00:39:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:39:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:39:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 00:39:58 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:39:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:39:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:39:58 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:39:58 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:39:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3ea5173b898bc238a456ca4b91b5e7538e367ddc88deb051906a72f72f2149`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7226d037c37e14c15ac8f7aa4ab8e3002f6fafc376146477ee6b4a1f28dac029`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 4.5 MB (4519558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951d7675622158472e3229baa37f1c1c19b83fdda70d225413456dc9fcfefbe6`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 1.2 MB (1203772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eacdd74a0deff340f44f78674348b5b3c99c671ad618593f51a71234525c19b`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 8.1 MB (8066457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42c24c7d1640025ec8c0ceaca9a6d63211d1e3b9a2d0003266411382df13aa6`  
		Last Modified: Wed, 21 Oct 2026 00:40:19 GMT  
		Size: 1.1 MB (1108970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7fe48a73c853d09d332575e449d40900403b195865ffc8628c3415ae4a2296`  
		Last Modified: Wed, 21 Oct 2026 00:40:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddb78cf0b966fb9d8042360181a82ec3ca2a3d8d42a2fc33c1e7402e14028ea`  
		Last Modified: Wed, 21 Oct 2026 00:40:19 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e279ba78934bab1ae56c869e7bef521a17412b37c40da83f206aa3ae7e77b7`  
		Last Modified: Wed, 21 Oct 2026 00:40:22 GMT  
		Size: 113.9 MB (113879461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8476b966d85f655a480554d9fed21e47a91ab37bd5f78d226abfefe012ed8721`  
		Last Modified: Wed, 21 Oct 2026 00:40:21 GMT  
		Size: 21.5 KB (21514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebcd0719b370b1e9b7bd7691e009feb20ef3bc70ebc4b09691639071a8767a8f`  
		Last Modified: Wed, 21 Oct 2026 00:40:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfbbac0b4808181e5ba51cda83ab6230c69e819d3e5e00622f06301018a106b`  
		Last Modified: Wed, 21 Oct 2026 00:40:21 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a2d4931a2530546413d8f50384bbae8b866ca4869bd86210f72ccd00af60c4`  
		Last Modified: Wed, 21 Oct 2026 00:40:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c6db8b21ca9c43342732219efea381c7b4c067e809eeeecdce353306909698d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6260463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47acbdcd6b25d577232483d3b4efbbc6e9b5e77c5c78200198b84a39b86565a2`

```dockerfile
```

-	Layers:
	-	`sha256:54dd8f3c37f695a15e8ca6621fb99a7cfc8d0a38eb05bf0dbd81a318d69c9642`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 6.2 MB (6209259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:635102b9dd103ddb3281a98ce540568c61297e08e005ddab6c91701ed9d991e1`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 51.2 KB (51204 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:b66131469732c7b086775a8773db0ff1a2fb16d8867ebccbe1268df1db9b4b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97708499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba633f9dfa43c8d38f1d0fa98708cd39ddcbd37f0432c59cb1bedcdd0022101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:27:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:36:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:36:34 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:36:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:36:34 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:36:34 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb92ea389d84d22cd4d374220a42aa39d848c4a81ad315993ef6f4783e4b0a`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a70d2751d475f9ab00f0c1a59adc2f7e4c06f2ab0cf85075ed60cf5f52aee73`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 5.0 MB (4966140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da56bf92374e893c353917c2c926e0e40dc251b4a79fafdf2fad412a190d2d`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 1.2 MB (1219049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a280d8df5a0e6fa3d2a7f922beeca6c1e9f26f5a33c9821072c1e02ab3c0f38f`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 8.1 MB (8066488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d41f870ffa706b773dc892d44a016aa8c914870cf27966a17dec70491116e1`  
		Last Modified: Fri, 16 Oct 2026 20:36:48 GMT  
		Size: 1.1 MB (1137508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7f65a9acc1c669f842a73b61e43a2aa4d95da168605221b742d63e82e99009`  
		Last Modified: Fri, 16 Oct 2026 20:36:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9223616b5d94f7b087e582678a6f3d78fe7f2f3048bb62eef6421b60855bbe54`  
		Last Modified: Fri, 16 Oct 2026 20:36:49 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1355606179ae460b52e87b74d03b8b3aef0bee288326b3979794221bb71c81`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 53.0 MB (53047577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cfd00bbaf73632e69647d160a4def1561161108068f2fc333b60bc1f23fa91`  
		Last Modified: Fri, 16 Oct 2026 20:36:49 GMT  
		Size: 21.5 KB (21517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add16ad47082bf67134682ab98a03ecd6751d662b12d5ca36a87aff9ae1ccdc9`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d127e28bc215b08714e7d42276ec130676ae3958680b1ab8b29a0fa29c4ba`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454739a692bf54a992b1ebbd97dea3a454edde27f3ad9b272be3fb4d475218df`  
		Last Modified: Fri, 16 Oct 2026 20:36:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b01b9a2bfcf256e06ef3503fc5c1fc8fc94a185ecf5168869c6581aabe79efb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5380250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb72501cdf1f6db93f382c18c4b205d610e06e3b76301078a73772d22fdb830e`

```dockerfile
```

-	Layers:
	-	`sha256:2eb0e87cbc0080f21f51bb51a72c4610df4008219b3d74c4970878c0fc176a8d`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 5.3 MB (5329307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebbfc9fe369ada4dd9274dcdea42e3a4bbd9f907e9153c50a710755e7355a7de`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 50.9 KB (50943 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:82523304482c7da2ee5837bc31753f2482c1c7e0804285a4860dc87df1d004f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171993222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7129c0b05059aa377bb225fa6a1bae4a0b77f525a77a000a6fc08554426f389d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 03:50:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 03:51:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:51:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 03:51:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 03:51:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 03:51:45 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 03:51:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 03:51:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 03:51:53 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 03:51:53 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 03:51:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 03:51:53 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Wed, 21 Oct 2026 03:52:48 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 03:52:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 03:52:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 03:52:53 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 03:52:53 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 03:52:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 03:52:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 03:52:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 03:52:56 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 03:52:56 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 03:52:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e48ec870e16dc44657b96273e07297e5de7d94244274fbe16811f173fe7c90`  
		Last Modified: Wed, 21 Oct 2026 03:53:51 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c08def0723683d84fee1eaa9e7c2d739363df43e064e76801e9551882dfd5e`  
		Last Modified: Wed, 21 Oct 2026 03:53:52 GMT  
		Size: 5.4 MB (5368709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1385f8983a1f05c344b0c3b8c26f73104f5ed5b4d7bbe06af4dd112eb5d56bd3`  
		Last Modified: Wed, 21 Oct 2026 03:53:51 GMT  
		Size: 1.2 MB (1208942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d62c6146a2e5f44bef28832ec789d2fdb635a6a9436cf55d470196fce4d632`  
		Last Modified: Wed, 21 Oct 2026 03:53:52 GMT  
		Size: 8.1 MB (8066574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a55bdf3f864bfd67cb0d39a48522587ee7fc3c7d04c7946e695ee33fff5f97`  
		Last Modified: Wed, 21 Oct 2026 03:53:52 GMT  
		Size: 1.3 MB (1283716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54796ae0dd08a924f3274fb2ebc20e24bc8e1cab9d90fdfb76de2ede32e563a9`  
		Last Modified: Wed, 21 Oct 2026 03:53:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2965f323f3c38eec55f2a85907557c94cdc8dbbf7e994e01dc059e7ad26263d9`  
		Last Modified: Wed, 21 Oct 2026 03:53:53 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43160c5cb3b5a6d62422d61339f83217de03bee3ab2af78a26ae054a509c6f97`  
		Last Modified: Wed, 21 Oct 2026 03:53:56 GMT  
		Size: 123.9 MB (123939703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e818305944da88476181ff2a0c0b3cd70dfdb26402efc88d80c340054fd52726`  
		Last Modified: Wed, 21 Oct 2026 03:53:53 GMT  
		Size: 21.5 KB (21517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3de57f7cd910f000033be8a87e6dc4449e7793a4350ede30e8df03dd98275b`  
		Last Modified: Wed, 21 Oct 2026 03:53:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ed6aa387149c027a731c55b46d732e553570260de9e1b6b719cfd14328054d`  
		Last Modified: Wed, 21 Oct 2026 03:53:54 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85934a36d1ae7b9d6232315a6ac4ed3b0c05ccb0de8ef406610a06bff0e406ae`  
		Last Modified: Wed, 21 Oct 2026 03:53:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:6056379b964a89488515998975771e1f3dda64cfb6e25af02f08049c1aaef613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6261363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfad1bf0d9471de3cf002642dba496b50df40a4c95b3f3c3773c080e0bffc1b`

```dockerfile
```

-	Layers:
	-	`sha256:18efc5ddf3937b0d995af8c11e4a71050a32cf0a1c7c1b7bf041f88b9b60b398`  
		Last Modified: Wed, 21 Oct 2026 03:53:52 GMT  
		Size: 6.2 MB (6210331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:115931d24cf7d5f7cffac7026302b79c5c572db9dfaf0c607222260c7b9c4e07`  
		Last Modified: Wed, 21 Oct 2026 03:53:51 GMT  
		Size: 51.0 KB (51032 bytes)  
		MIME: application/vnd.in-toto+json
