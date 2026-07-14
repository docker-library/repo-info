## `postgres:19beta1-bookworm`

```console
$ docker pull postgres@sha256:72da6d3b0722f0bf776092e2787c8cd07a4f03b7c6abd72c40e0ec2741a3ca05
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postgres:19beta1-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:782efd06e7138731cb6e83adfd1622f3f2c3ad25ec9f9f4d48d5cd494f383c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158466169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfa63722ce6f400f2593053a77c3741b57b5459f21ea2311cb28aa5062e5c15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:35:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:35:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:35:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:35:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:35:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:35:35 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:35:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:35:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:35:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:35:39 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:35:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:35:39 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 01:35:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:35:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:35:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:35:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:35:58 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:35:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:35:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:35:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:35:58 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:35:58 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:35:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5b087de66ced43cab2be2920bfe77616e7a9ff87ae7a7c31ad43689bf11153`  
		Last Modified: Tue, 14 Jul 2026 01:36:18 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23840aae082b3826046e4e335bbdd5c603cbb9ebad1ddac1ab3e35997ae6fc0`  
		Last Modified: Tue, 14 Jul 2026 01:36:19 GMT  
		Size: 4.5 MB (4534236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ff59ab8758ab34594b502b329ef58e0611a988ffaf74318b276f7bdaa2e2ac`  
		Last Modified: Tue, 14 Jul 2026 01:36:18 GMT  
		Size: 1.2 MB (1249528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a7f88e6af35f24205790ed72a08620f63b7bd40c076597803085154888ee54`  
		Last Modified: Tue, 14 Jul 2026 01:36:19 GMT  
		Size: 8.1 MB (8066449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1301929cb886075a773f52e0c0aee1974bbcb44245313bff4b63580f044d07d7`  
		Last Modified: Tue, 14 Jul 2026 01:36:19 GMT  
		Size: 1.2 MB (1196443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7576c3391c0315bb9bdb4e40fc30e82e71a24092fe1ba97563c724650b0d9d`  
		Last Modified: Tue, 14 Jul 2026 01:36:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2696f9726517dc59ace76079b413d179d4e4eb3bbf0ff1239e8bf7175eea4850`  
		Last Modified: Tue, 14 Jul 2026 01:36:20 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4343cb1543948fd0c5ad75b399c14292cd5ea8f02591bdf5e72b7e607e6c19d6`  
		Last Modified: Tue, 14 Jul 2026 01:36:23 GMT  
		Size: 115.2 MB (115154709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc04faf338a4a3229f64f315652be58b5f87c5998a0c5ace9032dda42dbe295`  
		Last Modified: Tue, 14 Jul 2026 01:36:21 GMT  
		Size: 21.3 KB (21318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0f082ad9221fc3baa0e3719fda26cc2ce493f96fc152ec52dea51f42252ab2`  
		Last Modified: Tue, 14 Jul 2026 01:36:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:161f060fd79a287d71eeba8a6dda480b21c12a6814482141ecbd137d4227c3cf`  
		Last Modified: Tue, 14 Jul 2026 01:36:21 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed6ec3e5036c6251670bc696769dd8a10c69737fd251d010c90a993a08dc8ca`  
		Last Modified: Tue, 14 Jul 2026 01:36:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9b09f719a9d519a677b009676ce9cae551c47c11cec66f13d7fa71d4891dbeae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6249099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b7ba45fcfaca5ea9685df545d5aa981b76cd41d7f28c14d61de65ffdf3f4d9`

```dockerfile
```

-	Layers:
	-	`sha256:3a18ba0cda9ed13559ac9694bd9999c0cb3968e6c387c84296cc0a42f61e789a`  
		Last Modified: Tue, 14 Jul 2026 01:36:19 GMT  
		Size: 6.2 MB (6198097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcea1fe8dc74d9dd68b8797a4957e6e5f0d8b0568fdde87500ac5336d3cc874f`  
		Last Modified: Tue, 14 Jul 2026 01:36:18 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm variant v5

```console
$ docker pull postgres@sha256:06671aaeaf313a1e8a43bf1cc4cb27b8be4827d4ba3a28366c0997278b9453c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87765726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5ecd51944c959f3ac79d831a67c917a780645ed925fa28d63dc760d2ad1192`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:49:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:49:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:42 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:49:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:49:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:49:49 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:49:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:49:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:49:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:49:55 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:49:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:49:55 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 02:02:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:02:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:02:44 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:02:44 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:02:44 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:02:44 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:02:44 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:02:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:02:44 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:02:44 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:02:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1c9b9cc9660939ca6a733102f55ee8694e0218bfc63bcd2cf72f4093124edc5f`  
		Last Modified: Tue, 14 Jul 2026 00:13:52 GMT  
		Size: 25.8 MB (25767982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1a66b53f641c0396b53d126f8131e8aa5ec499ae504c3ed92920df82edba58`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8560faa2544e45eaa50c020daeb2f037f7dd5b1c04075f440af595d11f56645`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 4.2 MB (4151288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0df63c598152b73a5da45712f433df3d8468e577d96d9fc2b9c60dddb6add1`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 1.2 MB (1220262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f4d0ba129267589525bc046e08e696303a81a4eeedda6004ba063fdef50d70`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 8.1 MB (8066573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb69052eac68264606e29bd6d59d9c1714da68721b011f30efdbf633428ef5d`  
		Last Modified: Tue, 14 Jul 2026 02:02:58 GMT  
		Size: 1.2 MB (1195146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e26d2e8eb4644d01bb8c85f57ea3f15cccc5b2ca82e371ae41789b5abfc7a54`  
		Last Modified: Tue, 14 Jul 2026 02:02:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20f6f0fc9c21f7c0210efc830f5253b71ca0107c9db47006586e999880d0e12`  
		Last Modified: Tue, 14 Jul 2026 02:02:58 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3df51b271873e07702198335fb404d1cd30d684f96b0b812ca3964aaf70b091`  
		Last Modified: Tue, 14 Jul 2026 02:03:00 GMT  
		Size: 47.3 MB (47332312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b422288c61be3eea899f0362d9bb7a810fbb2be1bb8d525eb2f2d3494974e4`  
		Last Modified: Tue, 14 Jul 2026 02:02:59 GMT  
		Size: 21.3 KB (21322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63391211d8a10458c9174b7a9373f5276adadf6d0617b48c31581c9654bd2a0`  
		Last Modified: Tue, 14 Jul 2026 02:02:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf8d510f373bdd18392327ea25009354ab77dfc29cef8cdede9ae7207230e4`  
		Last Modified: Tue, 14 Jul 2026 02:02:59 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6169abce25feeeb0072f5b879b9cb9e92ad34fe69350c414bc5bc6cb0639e93f`  
		Last Modified: Tue, 14 Jul 2026 02:03:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d7c6200f4ba9fcf978692f16309dcacc1abcfa9fe787166af14740bfb759f872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edda7f7121fb196e31a58904d678c8e2e782ae96b482277c90778f1298623e8`

```dockerfile
```

-	Layers:
	-	`sha256:4a6fc30fb47d3b79722fdc12c899c325eba42d32ea81d5b0a64e829733c8de58`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 5.3 MB (5325733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8db0d74098d9e95c9c7fab6681fee127b2beea11d929e78ff8435ec18214693`  
		Last Modified: Tue, 14 Jul 2026 02:02:57 GMT  
		Size: 51.2 KB (51183 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8f6cf5419601b11747c92a35c62c74d2ef1e9f7f8fc8e5373d72c6b554bc865d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83842932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950418858c857fafc248f7489f5dde9aa1cecbea122d449dec9d0de3be2a61ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:53:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:53:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:53:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:53:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:53:55 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:53:55 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:53:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:53:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:54:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:54:00 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:54:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:54:00 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 02:06:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:06:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:06:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:06:08 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:06:08 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:06:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:06:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:06:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:06:08 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:06:08 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:06:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d91ea05324dd22ce42093e1822a6a2853b43f0bb5b41a7cea2da54891e54cbf`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb4a910b4e27e34fa32892a591e13d426192547bf529cba11fde0efb62b0870`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 3.7 MB (3742697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2dd3030a7a39b8f8a4dbe85fbdc66f3644a40e51cefcd1158c3f1d90617df94`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 1.2 MB (1216170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c334f67251be2f8d349bb66c41534de20821cb1a9936ab269a509054cb36388c`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 8.1 MB (8066462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01aa81588c1d22179de14f133bb6e92db9fd0aca71fe08472f65baf777c503e1`  
		Last Modified: Tue, 14 Jul 2026 02:06:22 GMT  
		Size: 1.1 MB (1067277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d349b28ddb81f6602445d198961290e167feb172344799f61c9c72725fdb9f8f`  
		Last Modified: Tue, 14 Jul 2026 02:06:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31a5650a483c78b7085e6a98ee4a4480f721c5b9a6181af9126d0b96dddf555`  
		Last Modified: Tue, 14 Jul 2026 02:06:22 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ee7245c6e09f25cfb5a0af9ecf0a93ec54fd8f22d9c3761c0feb7d2d3c71aa`  
		Last Modified: Tue, 14 Jul 2026 02:06:24 GMT  
		Size: 45.8 MB (45778371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3824f0254de04146652cf266e493cafb7686027d8f349cd44f573f4fd66aa7c7`  
		Last Modified: Tue, 14 Jul 2026 02:06:23 GMT  
		Size: 21.3 KB (21323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3b5400948320e49b82bbeb2178215d8458d304e5cc2545ffc18194b76c086e`  
		Last Modified: Tue, 14 Jul 2026 02:06:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eab1d220713c743c58a798036da821bef3dc583eee4accb4fcca1a8817e7c14`  
		Last Modified: Tue, 14 Jul 2026 02:06:24 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089826e4aee7163621b90dfe45e62246498b7203bb97a2e30329b2dd02787b0d`  
		Last Modified: Tue, 14 Jul 2026 02:06:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:3c9cf42d6cde536d40082b17f8716ab08cfc0c40e83c38640050a234bb13b70d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a00cdec43f10cddbec42b721fdedeb4556eb9a3c2939832de55b2716ac5441`

```dockerfile
```

-	Layers:
	-	`sha256:3fce204e45d366025bf0d63aa67cbd6e93e3233bd49e1eaec0fbb8a471c946ba`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 5.3 MB (5324984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a30e56ad8b53c4879b5bc9b370b7024b5ed37f7395eb3e90b989fd4e258841`  
		Last Modified: Tue, 14 Jul 2026 02:06:20 GMT  
		Size: 51.2 KB (51183 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:baca0e544e9b52e356d0fe90d08277b65b756819c9d97ee3b561fb6a85392f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156414094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2697760d64c518fed74f4a2218a4052edff67e866ecbfad60ec4ad0573a128`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:37:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:37:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:38:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:38:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:38:06 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:38:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:38:09 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:38:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:38:09 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 01:38:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:38:30 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:38:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:30 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:38:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cca85dc26e8b604ed6ae91deb42c734b87a01f9b641fd67a3c6302b0e444023`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0216a74e7e3fea93ab6de2890b07343352b49cda675e424a0d595f5e5697069e`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 4.5 MB (4519537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649591ccd16ae0f8c20e936c1b276e4a4b42c4580e74dbf9371393ac2914bd66`  
		Last Modified: Tue, 14 Jul 2026 01:38:49 GMT  
		Size: 1.2 MB (1203316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2013957682392c047a50aba1a7c1014770c940167a6d06734bbb003b7097a130`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 8.1 MB (8066481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4d790947636df9de3fd0451f71251b2fddaabf90f6892820a98d953225ab77`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 1.1 MB (1109012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9264d7a27c66557c109a78c16de3a6f5047362fee93caa9005303ea8199f93a`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67f180f628da010a190bab08921dc7eebf2cb40fa646a4fe3756867f77aeeb2`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5862704c0fb551e78ed14e00974abdd86287446dececf473f844c119b7d90dd`  
		Last Modified: Tue, 14 Jul 2026 01:38:54 GMT  
		Size: 113.4 MB (113366331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378c1e5d720da076377fe637ce23891b7cb956baa362b1d986f5630418b6d005`  
		Last Modified: Tue, 14 Jul 2026 01:38:52 GMT  
		Size: 21.3 KB (21318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826f3f9c9bddfbded8eb4478b5f77325d6f7b8c0749083532aa76668dce5a185`  
		Last Modified: Tue, 14 Jul 2026 01:38:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef02b413071fb2cbe60a6787575a3df7794c470065b3e356b28edbafa946f916`  
		Last Modified: Tue, 14 Jul 2026 01:38:52 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3917bffbb112714a7aded2b9d01d6a9af5f36f8b2cac10d4ffffd2a2e5152f62`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c1308ac03afdc4b21c5055a08f1935a679f80d01f92fe741e5f49d5f3aeb0d44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab009205eba229061db338cd97857993d0ab27a7c601ef05bf71ab3f5228f3e`

```dockerfile
```

-	Layers:
	-	`sha256:724e2981ffdb1881336ae85f4c763e099b67ee8d1122902833f990c52cc4dee6`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 6.2 MB (6204398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99710dbc17e4fa2381e55c768d6d0c1adebf3d898eaa569c1535d8d32ba4b078`  
		Last Modified: Tue, 14 Jul 2026 01:38:49 GMT  
		Size: 51.2 KB (51220 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:1bd700e5c126e9ff74c247996ad27504654cb99ea27f8fd85bc011adeeed64f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94615363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a591c13be9a46de1769c64b2a5e5e97a38a913d43614692310516eedfe14c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:32:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:33:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:33:10 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:33:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:33:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:33:14 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:33:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:33:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:33:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:33:18 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:33:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:33:18 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 01:42:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:42:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:42:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:42:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:42:51 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:42:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:42:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:42:51 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:42:51 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:42:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50bf3e2bd91d921c3060c2d5a30d44052f0f27ac7a2e16a2ac737f527f3683c0`  
		Last Modified: Tue, 14 Jul 2026 01:43:04 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5f2ab2de2fef642ecfd6adfc958edd88b3ce9726e710b588aab19b7f1f28de`  
		Last Modified: Tue, 14 Jul 2026 01:43:05 GMT  
		Size: 5.0 MB (4966088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa7e3531a9e6a052e9346825e024f2b1e2fd3cfd19412c10a4f774b83de21ad`  
		Last Modified: Tue, 14 Jul 2026 01:43:05 GMT  
		Size: 1.2 MB (1218637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93350518dec904d4ddbb0cf8f3f18db7a157eb83b788ba059ba4f3b477058fdf`  
		Last Modified: Tue, 14 Jul 2026 01:43:05 GMT  
		Size: 8.1 MB (8066455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3d27ead7595c560cba568e02a6c56ad4d31cf142acab4def3c15cee96ab794`  
		Last Modified: Tue, 14 Jul 2026 01:43:06 GMT  
		Size: 1.1 MB (1137486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4aaea61a169e4b383b4e66e94d32473a8c5e77632a158a45e11b75ee2c5262b`  
		Last Modified: Tue, 14 Jul 2026 01:43:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8512401c2ede930807735ee41f2a5793aaf32fca3bfacba06d12ef84574bb4d1`  
		Last Modified: Tue, 14 Jul 2026 01:43:06 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9592db46ff5db6ad5808c19c57b808ed2526aea09ddc41c6bbb14fecbe226c45`  
		Last Modified: Tue, 14 Jul 2026 01:43:07 GMT  
		Size: 50.0 MB (49973475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696d6b92f5dd518134dafa3921caf17a540c9a1174ed07f91cc28f420a7b7293`  
		Last Modified: Tue, 14 Jul 2026 01:43:07 GMT  
		Size: 21.3 KB (21320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27285da0618ced21483f77776ad63b8869be5663fabc8ff7c3e2d865397de193`  
		Last Modified: Tue, 14 Jul 2026 01:43:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b356ba051f93187141653e92eec3124d1c76b13cedabc338e662ebf53b071ba3`  
		Last Modified: Tue, 14 Jul 2026 01:43:07 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f242d43301ff58e7627164d8ae29e52a267a2506a4e0e78b8b7e62c95bb5ba8`  
		Last Modified: Tue, 14 Jul 2026 01:43:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e50cc9c30dd779dc92e83194a28261efc9d2313b01e5830dbe9885e40bce5da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8180850985b9989471cd085f76bcf180d37cff443d6495539aa1f9c2aab978`

```dockerfile
```

-	Layers:
	-	`sha256:deb620fbfb4ee122b836204f31eeac1d8f1649b1813530b690141e08fe548f22`  
		Last Modified: Tue, 14 Jul 2026 01:43:05 GMT  
		Size: 5.3 MB (5320325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89945135419af0c7a5c73df3b255a24d0fec833a507420ef98aa77dbc6764476`  
		Last Modified: Tue, 14 Jul 2026 01:43:04 GMT  
		Size: 51.0 KB (50960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; mips64le

```console
$ docker pull postgres@sha256:e74a84163f30d62c5edba7a0c88c9f8fc673f01c71f72ad1584b10755b22d04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157291643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a44ef054b02e70af4032f64a54818714a35e1c24dd618b1ceba3a35b027c0e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 07:41:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 07:41:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:42:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 07:42:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 07:42:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 07:42:57 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 07:43:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:43:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 07:43:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 08:57:35 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 08:57:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 08:57:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 08:57:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 08:57:39 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 08:57:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 08:57:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 08:57:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 08:57:42 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 08:57:42 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 08:57:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d21b0b947b634d95463968de77b75d10281e25c61d8caed6ddc0fca630368421`  
		Last Modified: Tue, 14 Jul 2026 00:13:36 GMT  
		Size: 28.5 MB (28523225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15c646e0d51c0ac640171fddc89b7a4d230d65543fafab70e8729fd96a1149f`  
		Last Modified: Tue, 14 Jul 2026 08:59:43 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827ee61e769a03c1f5ba821c4513dbdd18ece78b6e9e528fd81f7ccf6a79bbb3`  
		Last Modified: Tue, 14 Jul 2026 08:59:44 GMT  
		Size: 4.5 MB (4475169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749d12796792952bc94045d72f04d0c4598c872634e6664f3531a715b2b4227`  
		Last Modified: Tue, 14 Jul 2026 08:59:44 GMT  
		Size: 1.2 MB (1159228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b817be9e7cb468ca31ad71419bb38707a069a87ddf131708ef6d123b2561d8e4`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 8.1 MB (8066663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83317881d43c3df345bd7a5f14539953e6ec58f1e5d7f5570095ed3c52cb412b`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 1.2 MB (1182920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6235b650f46021bf4b4dc41969bba96369aa20548df0f81e14cb8d08f11be0d6`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c4fbafd561a158b37f14aeb1e6d43d077e33f0c47edb8db5f07ee5f477e0fa`  
		Last Modified: Tue, 14 Jul 2026 08:59:46 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494a623bed89dee3e7a0af1dcf95f4eb3d5b55cfb361ff79e75a4cd853aa85ae`  
		Last Modified: Tue, 14 Jul 2026 08:59:58 GMT  
		Size: 113.9 MB (113852261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d30ca9b6e793b3e713cd2e5d24991bac3c30c6743869752cdbb958c422e65a`  
		Last Modified: Tue, 14 Jul 2026 08:59:46 GMT  
		Size: 21.3 KB (21325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3589fae85f60da9bf88d8c2626b6f42d1a54d2c29016f30d74fd389f97c101d9`  
		Last Modified: Tue, 14 Jul 2026 08:59:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30a04efd9131fd1cbcb222414019b5ef9455c97d7d3746836d642fa4ca0765f`  
		Last Modified: Tue, 14 Jul 2026 08:59:47 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fdf464cc601ace7a05decbc27346a3b1f7bcfcf1e6ad6ba78357a1242f653f`  
		Last Modified: Tue, 14 Jul 2026 08:59:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:ef60243dd14140178f410fa742e2e41f57325d51b4e907fd5c660a96a7cb15fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 KB (50856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d567c8f3941568a98945a1d16f03a42f67aa8305e68c4666ae0546778d92f2`

```dockerfile
```

-	Layers:
	-	`sha256:ab11b62b895c1a440ebfd660a74a347ed48e3637d1c4e7767012e958d2b4b3ca`  
		Last Modified: Tue, 14 Jul 2026 08:59:44 GMT  
		Size: 50.9 KB (50856 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:c55c074be17ec7f8f0188bfb7099b3bbfb5778c06274393ce5cf4abf8a764af8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171451410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ed9d7d2690a8b4cdb9fcc389f92b1188d989269df37802619b8578de9d903`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:24:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 03:24:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:25:15 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 03:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 03:25:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 03:25:26 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 03:25:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:25:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 03:25:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 03:26:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:26:46 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:26:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:26:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 03:26:46 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 03:26:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:26:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:26:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:26:47 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:26:47 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:26:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20acb8bded812c5804f95dea74ef2dc2101c8f147a395bc8c72022f073292ae6`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7da70dc4ff776eaa7b80eb0209d54e2a3467a7baf66486f60394518b20922a`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 5.4 MB (5368678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dcaf7e146d7ebdbb827690b0282db8d65ebe20b174f6710e277990361111e2`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 1.2 MB (1208271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4af0c50f138658e95a850c4e79b907a3a189083e680c841d1e92b5fcdc0bc1`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 8.1 MB (8066567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fdbbf47d14f7976e34442e335b036234bfb8a0aeebcf1df9c1b15c4518aab0`  
		Last Modified: Tue, 14 Jul 2026 03:27:36 GMT  
		Size: 1.3 MB (1283670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90933cd6f802b7c837bc275af6b2a3611e8770c76d8b5d3d69433d307fed80e0`  
		Last Modified: Tue, 14 Jul 2026 03:27:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6b2f55a0188cd12323678e9ab20c5dec70b64c53b8a93916f1600bbdd4fa97`  
		Last Modified: Tue, 14 Jul 2026 03:27:37 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd40c6dc6e4c5ba328780cbab870b30f768618f817691a3c491f4209ff3ceece`  
		Last Modified: Tue, 14 Jul 2026 03:27:40 GMT  
		Size: 123.4 MB (123415640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6174486fc5bb6fd60ece5b857a7d96d0e07e17df8c52c05df7b604a5ad48bf`  
		Last Modified: Tue, 14 Jul 2026 03:27:38 GMT  
		Size: 21.3 KB (21319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e479453aed6ab76eec1447cf5f90cca1e0685cf27d8aaf633c50a3225f0d4e`  
		Last Modified: Tue, 14 Jul 2026 03:27:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef9d0e70fe94d2abe419223d25a0a1cbf740aa80c2dc70a19f12d99a228aefc`  
		Last Modified: Tue, 14 Jul 2026 03:27:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9613d88f6e81e7c224d1de20f2896f3116c5555faac0ad1ea815b8073a8ba8`  
		Last Modified: Tue, 14 Jul 2026 03:27:39 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:dee1af66402dbf8558538e23bf3c45e4f2d26d0fd22e6f8d31aae58895c0afe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6256517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad140c4b79e520e10df5188c5bb44bd60812ce38d25914d7e12eee90404fed9`

```dockerfile
```

-	Layers:
	-	`sha256:1f570ebbc27b0a0b54f400e240c3d8e708891c5f785656c45267e8f6a0e0ec8a`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 6.2 MB (6205470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a806aa8e375d3d43bb52c513fe3b5b936804ab1866e9f769be278e0fa72870f`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 51.0 KB (51047 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; s390x

```console
$ docker pull postgres@sha256:9985b5946f2bc61a11bd710ac53b1548fee9e9537a1944cec915fb747e099d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167808387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd4d5dadec2fe596d3453340b32bcfaf9f60c3bad2838df02b808542914bfc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:20:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:20:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:20:42 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:20:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:20:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:20:47 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:20:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:20:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:20:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 14 Jul 2026 02:36:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:36:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:36:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:36:03 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:36:03 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:36:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:36:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:36:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:36:03 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:36:03 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:36:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3a455e8c21d2bc475846b888f0c2ad2e57d49bf3e3386598436709b88f2b29`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7717bed772ad4a48ef6e5028b898ebc1e14f1799e668308ed1c439c3c83534b8`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 4.4 MB (4391213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf4d0c955b2bf39a0bba638425f0050724f2c1c181928dac1e4b278697bc261`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 1.2 MB (1222817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96057a86d9388db41c384c27de421f76377dacfca779723d7734b900ec91e144`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 8.1 MB (8120755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a21301481b96a18b24b1a31cff440936467c10d577172cb159188af94d6f6e5`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 1.1 MB (1097074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27cf75dc2e665579a5d74c515ee5abfc7b416ff8b1be39fc630a08f9b50d250`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a2ab9a93f8f2221ef8353c2d66ca42ddefc32cb323f2f9b902ddd303ba466`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3813157438c7d523219bdebe0840dd80334875857c78fadc3c8ee7666de6776d`  
		Last Modified: Tue, 14 Jul 2026 02:36:37 GMT  
		Size: 126.1 MB (126056095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adedc1e6e211c5b6cbb9331ad935113b75762f436736119a281b26b3eb1c8296`  
		Last Modified: Tue, 14 Jul 2026 02:36:35 GMT  
		Size: 21.3 KB (21317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d978577b19610df60fe9036c95ce8fb887f83b494b37a0eadf825ea6f5e71f`  
		Last Modified: Tue, 14 Jul 2026 02:36:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017fea0d0a06fea440f9a7fc29a02dd406159671ce3cf5505a62d92270d33169`  
		Last Modified: Tue, 14 Jul 2026 02:36:36 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89e9348e059cfeaedc74c1aca9c213b17752dee9f0330b103a3f479c13db87c`  
		Last Modified: Tue, 14 Jul 2026 02:36:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:cfafeb57144cbfd79789dabea430843f918b64dd3ce0be053fd8098113fbb144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de4c0940193f27afcdf360bda0a105b0855cee14f3edf4c4d7833c11207b9ce`

```dockerfile
```

-	Layers:
	-	`sha256:6eba35c6d9e01926210a8ddddadb4c4dbcc356599a5ca4d28ff3b0913e2cc06d`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 6.2 MB (6212755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e865edc2d998877af53fb909e58c14ce55ed6e5feabaf233ceca1c0267c01fee`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 51.0 KB (51001 bytes)  
		MIME: application/vnd.in-toto+json
