## `postgres:15-bookworm`

```console
$ docker pull postgres@sha256:539ceaaae49b3a7c8a04467cf00cc6788d8e3f1675df41860d86eebc4c40524f
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

### `postgres:15-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:f745a757e86d94fa6d10231186af7eb14501ad689c85a32fd25c6f4288902ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153029728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528b08e086dc42c1be204928bebfe37240216ae6137c6325c483c56c16cb0694`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:36:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:53 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:36:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:36:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:36:57 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:36:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:37:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:37:00 GMT
ENV PG_MAJOR=15
# Sat, 19 Sep 2026 00:37:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Sat, 19 Sep 2026 00:37:00 GMT
ENV PG_VERSION=15.19-1.pgdg12+2
# Sat, 19 Sep 2026 00:37:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:37:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:37:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:37:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:37:11 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:37:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:37:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:37:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:37:12 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:37:12 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:37:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92d0583ca743dafb6783ee0718174238f8a939a831a527de4408c3daa859372`  
		Last Modified: Sat, 19 Sep 2026 00:37:28 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ec1afa3dd42a7df473626377f719e9e84549257a5548d5c7c04eda1261223`  
		Last Modified: Sat, 19 Sep 2026 00:37:29 GMT  
		Size: 4.5 MB (4534246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f53b1251dc00c14ef3da0b90d66d209ae6303be7d0fd321e805182d4522d7e`  
		Last Modified: Sat, 19 Sep 2026 00:37:29 GMT  
		Size: 1.3 MB (1250079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42109c5c4bd8e02b3f576a6185f5b1a861670c36ba312a1ed856a5675fe1ea0c`  
		Last Modified: Sat, 19 Sep 2026 00:37:29 GMT  
		Size: 8.1 MB (8066426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f7f33908388e483ec5b8e9becf5ce66e33b65ab78d77d3bbad02ba7712b3f0`  
		Last Modified: Sat, 19 Sep 2026 00:37:30 GMT  
		Size: 1.2 MB (1196443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5760802a305fdb6c187d84135042879970c68a1b082235f13748fa3ea1082ee8`  
		Last Modified: Sat, 19 Sep 2026 00:37:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28a64af392f1f244655db34505e39ab7f90d4cfe0780972f30d9ef21b95cad5`  
		Last Modified: Sat, 19 Sep 2026 00:37:30 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375d1ece1ad19085ccf7dfd7a04492b779cfe9e70f439c7e0daf1bb300656fd`  
		Last Modified: Sat, 19 Sep 2026 00:37:33 GMT  
		Size: 109.7 MB (109723249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f2e5c4db4ddfbac3ee71be9b8acf6577317eda84678c7a95f4cf9045fc1a19`  
		Last Modified: Sat, 19 Sep 2026 00:37:31 GMT  
		Size: 9.8 KB (9829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2709c582ec45cab325a5ce5341eee72d925e5d3c4fc8ae46e5be0b8094790ffb`  
		Last Modified: Sat, 19 Sep 2026 00:37:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50774035f690b39c56edcd415496bdc4f733ff3e94a7d15d5134863b881d3021`  
		Last Modified: Sat, 19 Sep 2026 00:37:31 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768b15b15c5b2607c62dd3df9105f4b5b5d9baf207ffb1983faffd8f674573cb`  
		Last Modified: Sat, 19 Sep 2026 00:37:32 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea33071ac1814190192ab35388194a3d14352914e434fd8fcb4b2a2bce38f4e9`  
		Last Modified: Sat, 19 Sep 2026 00:37:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:3a50002a88ef35df503ac21a9517dce34d9c8b9c174e98761a54c6d36b7ba157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5896752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de8453fea36e4e458680766ef8a174901265a1eff7a61d0e2479fbb0658a633`

```dockerfile
```

-	Layers:
	-	`sha256:7ffc60019065ce11aa9868732d127856f626f5fc49c593ef6d87a31b9e589619`  
		Last Modified: Sat, 19 Sep 2026 00:37:29 GMT  
		Size: 5.8 MB (5843456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85bd3a74f188093fe1861071ca4ca2759b7b717e23e004bb990c05cbd148875d`  
		Last Modified: Sat, 19 Sep 2026 00:37:28 GMT  
		Size: 53.3 KB (53296 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6ff3ffb53d81c5b8c26890ebe6c603845ad4c9e81e54ebbb5fcdb3d32ec3ee59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80625192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73fb1137748804ec5d7e94951234323fc82d430fe7ac801bc46d84f561d497d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:22:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 01:22:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:22:33 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:22:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:22:39 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 01:22:39 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 01:22:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:22:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 01:22:43 GMT
ENV PG_MAJOR=15
# Sat, 19 Sep 2026 01:22:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Sat, 19 Sep 2026 01:22:43 GMT
ENV PG_VERSION=15.19-1.pgdg12+2
# Sat, 19 Sep 2026 01:32:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 01:32:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 01:32:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 01:32:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:32:58 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 01:32:58 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 01:32:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903d7fc71c05c7a5c0bb16464f64fea6b4668fa764ab4ec0ea0ac4027d9d3f5f`  
		Last Modified: Sat, 19 Sep 2026 01:33:10 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cb3809438b3ce339694403761aea6d92a5c47bec3554f805ce1f4c3ac407e6`  
		Last Modified: Sat, 19 Sep 2026 01:33:11 GMT  
		Size: 3.7 MB (3742699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bd1d1b2667ecc39f2882ac56a0d222d7bd939522ceb26b294997a3a60f8397`  
		Last Modified: Sat, 19 Sep 2026 01:33:10 GMT  
		Size: 1.2 MB (1216553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09525129c59fc7d152e70a6f6ca4b8714dabdacd8b0ee32858bb8a098625599`  
		Last Modified: Sat, 19 Sep 2026 01:33:11 GMT  
		Size: 8.1 MB (8066404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d378fa4972ccc0de1ede6a01462bd94a965503071bf884fdb24104d43317298`  
		Last Modified: Sat, 19 Sep 2026 01:33:11 GMT  
		Size: 1.1 MB (1067296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81200c125020afd27cc25c8929c4af3488c299c546e3cf909d989eae51dcbfbc`  
		Last Modified: Sat, 19 Sep 2026 01:33:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61703dcd10c2d5167788c876cc4b5b2e2601df5bea213140765dcc4ba92ff249`  
		Last Modified: Sat, 19 Sep 2026 01:33:12 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc6982a6adf65623f2ffe7401680eab7483c93ac97482b53520e213a2f9d89e`  
		Last Modified: Sat, 19 Sep 2026 01:33:13 GMT  
		Size: 42.6 MB (42568281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4f4352bfec2b6b55d6936dccb97491eadab2dad1438dd4499f52f28d3ebef3`  
		Last Modified: Sat, 19 Sep 2026 01:33:13 GMT  
		Size: 9.8 KB (9830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6339e1a3ec6824a96ef74b5fe35662404c672d003bec3752e61939ffc874aad8`  
		Last Modified: Sat, 19 Sep 2026 01:33:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82515359bd67cb448739fb2d8f0147697b033ea99795503fcb8b2a8eec12df2`  
		Last Modified: Sat, 19 Sep 2026 01:33:13 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc833756521ddd1612dcb8c9d0c527f288ca76659807461003229db39133c08`  
		Last Modified: Sat, 19 Sep 2026 01:33:14 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af77e3cce32df1a065a54c2891e1ff46add57b2d4e3fab4d8221187411171a1`  
		Last Modified: Sat, 19 Sep 2026 01:33:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a3ff102ad4be49843bd69960fee24db96e3e2f2a9862a4f557e85a3ce0c048c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aea6333bb499a39f7c19136711f3473f7ae4355d52e67839e3e78958ab3a1b0`

```dockerfile
```

-	Layers:
	-	`sha256:51ff2d024873b1c32a3642aa9fc577433fe995050ca5f9c328898d42635273d4`  
		Last Modified: Sat, 19 Sep 2026 01:33:11 GMT  
		Size: 5.2 MB (5221931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adaed69c988e8915da9ee49d6c2118b3a5d66b534381a1f411662ad67ed02549`  
		Last Modified: Sat, 19 Sep 2026 01:33:10 GMT  
		Size: 53.5 KB (53497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:71aa07c17957577ccad2beed0af5bcbb336159c9896635d693ed74ec674cda76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (151045482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8092a7f0cbf3976af96b8f020b7c1c86f3eb2f33324a52a4be1a0e063546a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:38:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:38:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:39:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:39:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:39:09 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:39:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:39:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:39:12 GMT
ENV PG_MAJOR=15
# Sat, 19 Sep 2026 00:39:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Sat, 19 Sep 2026 00:39:12 GMT
ENV PG_VERSION=15.19-1.pgdg12+2
# Sat, 19 Sep 2026 00:40:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:40:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:40:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:40:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:40:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:40:07 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:40:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:40:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:40:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:40:07 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:40:07 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:40:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16af2c618a186b329da603bd1d23a9312e7ce3e4ac1f81952e4488dfa3edf7a`  
		Last Modified: Sat, 19 Sep 2026 00:39:43 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1baf26efc72c4531a36aa81b99063ff62632aabf7f66cb5bdf61d599078d5078`  
		Last Modified: Sat, 19 Sep 2026 00:39:44 GMT  
		Size: 4.5 MB (4519477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8fc550a4bba4f69309b0a5c58edb5ebee4acbc938cc82f4eefd3f7d058cc29`  
		Last Modified: Sat, 19 Sep 2026 00:39:44 GMT  
		Size: 1.2 MB (1203807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e409b93833aaffc374ebd2b443a6cf68d3fad9d026f64bb6ce0b935ae08dc32`  
		Last Modified: Sat, 19 Sep 2026 00:39:44 GMT  
		Size: 8.1 MB (8066475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a6e7126a3be6e3cb0358e91d1c939b6a898d2a175efe26ddd7b463ce60e50e`  
		Last Modified: Sat, 19 Sep 2026 00:39:44 GMT  
		Size: 1.1 MB (1108966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c881f05b5da1eadca1eac108d44ea2666437289a517ae8a9720b30e0f9bc4eec`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9855164b00e9ca6176e021f7a6c8562731079af6d566cccc51f31f9c31012b57`  
		Last Modified: Sat, 19 Sep 2026 00:39:45 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8377f858c872fced3c42be6ed8407d0eaed5397f005480bcd305a78a7522a5cc`  
		Last Modified: Sat, 19 Sep 2026 00:40:27 GMT  
		Size: 108.0 MB (108002240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c937dd9c815a9352d7ed7d5afede3971bc485976b7097e9f72036ec1e5fd98`  
		Last Modified: Sat, 19 Sep 2026 00:40:25 GMT  
		Size: 9.8 KB (9830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8caf00968c2c9ecbb34c8bbe01c5f2359a15627bb2735ccd119f4efb1d93c37e`  
		Last Modified: Sat, 19 Sep 2026 00:40:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d575a70455d1cf2dcc39cbf06ac20cfd773603c5d106f7b6089eac35c14c279c`  
		Last Modified: Sat, 19 Sep 2026 00:40:25 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4d23b48b46826108995e8401c9f1f9e3fe153cad9d4fe4f4f8a72d2a1e381f`  
		Last Modified: Sat, 19 Sep 2026 00:40:26 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a1d5eb27d3015ce14cd2027d8b010e179dda58a048bf965dffce4355885696`  
		Last Modified: Sat, 19 Sep 2026 00:40:26 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:90d3fd77cb5bf9631b9aea19e8e649e90d65f2ff6a89abf91303232220a9874b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5903308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547fbbe17fcc1b26ec775667082969655a7dfd07a226f6d02c2c3c817567724d`

```dockerfile
```

-	Layers:
	-	`sha256:6b43cd81a8dd0c5a38d5d705fb6e5d2829838c00e18ed9a6697195b57949e863`  
		Last Modified: Sat, 19 Sep 2026 00:40:25 GMT  
		Size: 5.8 MB (5849767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2162786b3940da4735303af4f0040a07cf724bcdbf5954ac32a485712f2bff16`  
		Last Modified: Sat, 19 Sep 2026 00:40:25 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:5069858de8bbc118ff62ee350e3517c242de2adbba3ca9da2574b8c914d3f06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91077561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430ab1c83bab90aaf7d34651740b2def605d6a1cf54b0fc8f99acfc754503307`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:39:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:40:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:11 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:40:11 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:40:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:40:15 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:40:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:40:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:40:19 GMT
ENV PG_MAJOR=15
# Sat, 19 Sep 2026 00:40:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Sat, 19 Sep 2026 00:40:19 GMT
ENV PG_VERSION=15.19-1.pgdg12+2
# Sat, 19 Sep 2026 00:48:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:48:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:48:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:40 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:48:40 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:48:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ea1f14bdb72f2bf3adf093b64f65b6a8579146b38c39cf14d70e86c9a422f2`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83e07ed0e901287ce110a4e87adff3f89c010d5e50d587c429de806530b3e33`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 5.0 MB (4966126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae979eaa45670f450c0d25333c8082de8cfb9b94ee026a4dcb89d90f501128c`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 1.2 MB (1219061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab93c6018a0d11288ad7ca342ef54a8a678107fa7d6fc085c2728371123744d`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 8.1 MB (8066517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3773d90f228718a7869bdfe139596ba49069222ff83e11acb1636eea9a8575`  
		Last Modified: Sat, 19 Sep 2026 00:48:54 GMT  
		Size: 1.1 MB (1137494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05e14bb9d92ef1d08f96079fbabb4a302eea52a06afa95252e1cc0269e40bf6`  
		Last Modified: Sat, 19 Sep 2026 00:40:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c0ec283daa2b5af72cf255edf79ce271e0c8317f725fc615a17b5bc3b22a7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:54 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478be661d8ddcc90255c1e4304ea3d4e897070862a0915199ba7bba70d81a84f`  
		Last Modified: Sat, 19 Sep 2026 00:48:56 GMT  
		Size: 46.4 MB (46441407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3563544b3e7ddff4821a6960b436b3d11ebce4eb143ffe470ef0ac9e7c1d77a0`  
		Last Modified: Sat, 19 Sep 2026 00:48:55 GMT  
		Size: 9.8 KB (9835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e75e3f409236305f895ce17fa59385f5c6b9fcb6b96529f31e041a853cf9d1a`  
		Last Modified: Sat, 19 Sep 2026 00:48:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308a0b11cdf4d1374f078bb371466f691b48c6cd98753d8ab44718335d77fec3`  
		Last Modified: Sat, 19 Sep 2026 00:48:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c61fb7008c58e75309ba3985b47f899203a7175e63ba8bb201f7da73cd71bde`  
		Last Modified: Sat, 19 Sep 2026 00:48:56 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849bf4db8f4a018d2f8a35c4542596f159a3af3d6afdb6027d6d0a6d5f76fcd6`  
		Last Modified: Sat, 19 Sep 2026 00:48:56 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:dd69e52d4c91b07608b7e4f954fd82099e3ab9d6fa6195445b085ce483217956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5270515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e063c469ff79713cf74f424f9506b6b26d429d04d039de150375fcc308cd8d45`

```dockerfile
```

-	Layers:
	-	`sha256:2d7ba51af5c4bcd6f4c38c361971b6f341edf56c5b47b74973adbe0d8fb01230`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 5.2 MB (5217269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc61e3bd4eaab2cd1afb0ff525e516da3edd10994e45b0d53b06e54ea9827934`  
		Last Modified: Sat, 19 Sep 2026 00:48:53 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:8eab2497224e233c022a1510953e327b98e9a0b405126715a638925f6512b219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165765016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2938267a816ddddb6d84b5f33a54619ce9aa8b1312ad6c982918b22e6f5567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:49:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 02:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:50:16 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:50:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:50:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 02:50:29 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 02:50:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:50:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 02:50:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PG_MAJOR=15
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PG_VERSION=15.19-1.pgdg12+2
# Sat, 19 Sep 2026 02:58:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 02:58:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 02:58:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 02:58:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 02:58:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 02:58:53 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 02:58:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:59:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 02:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:59:16 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 02:59:16 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 02:59:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8584767bf71b85a57e3790474614301ee2547a4ff036c58e734f56193088d17`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597388a7e3236ed97793a679dcd74bd53b0b33e57f28455acf1b5932bdc4fe44`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 5.4 MB (5368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec124b8dc125aa16a812791ac0bc94078801ca076dad8479be9a4c2dc2abef5d`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 1.2 MB (1208877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c143b02ba6a964fd67fadec24ce562a41affdb2e5326cc965b415e9a49022d`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 8.1 MB (8066567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6041579a1eb178853160fd0b10ba09bedef3d9f67f645cba38a820b4fc6de916`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 1.3 MB (1283633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a200523b23b2d60f96c00834e832cc3914cbed344f421d54fd63e61fb78a6d`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd824d7d4b31ebdbb235380e31839df559205055c55888dd7ceaddea55ebeab9`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f16d62a54edfffd2bbdb47de01c44cf1ec02f895519a84da251afb8b2350c0`  
		Last Modified: Sat, 19 Sep 2026 03:00:19 GMT  
		Size: 117.7 MB (117732912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a26cea987bf8bb9e8ca59ad6ea152053c281bc6bd66d246c60b493706323f6`  
		Last Modified: Sat, 19 Sep 2026 03:00:15 GMT  
		Size: 9.8 KB (9829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681ef33c612214b26e2f2d14111b6070fc64c8ced3e44d4029ef8e697f915d71`  
		Last Modified: Sat, 19 Sep 2026 03:00:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2a5b34e82ef884478bec04b534c22d1428dca580519990a46116c6816ba844`  
		Last Modified: Sat, 19 Sep 2026 03:00:16 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897366390e286c23b0a72f2c19ef7a3b52c46d3810061a99c6dd583fa2d05337`  
		Last Modified: Sat, 19 Sep 2026 03:00:17 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83842bd7674cb1e4fccecdee67310dc22446b268b1204a2b6165308916c0b58`  
		Last Modified: Sat, 19 Sep 2026 03:00:18 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:97ee032b460b2d04cf93d1760440c5581af2c1507ac7f45c1aa0894ee28eb0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5904167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa090d4390b972346aa3df133c78f2270ee41853c561e7b643b10cfdf1bbfb76`

```dockerfile
```

-	Layers:
	-	`sha256:2dcd2a84aafa03d68a76c69444b31067083272138633a5ad7ffa949cf3513b52`  
		Last Modified: Sat, 19 Sep 2026 03:00:16 GMT  
		Size: 5.9 MB (5850817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a29a2d07beb9f3f56dd957999497930409bb46db9d159e593b8c75a1cd3c985`  
		Last Modified: Sat, 19 Sep 2026 03:00:15 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
