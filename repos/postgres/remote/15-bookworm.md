## `postgres:15-bookworm`

```console
$ docker pull postgres@sha256:72ccb1ad4dc9d5813ea40a8c1c87af746f16658fb029c17fe570ea9b881f68b3
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
$ docker pull postgres@sha256:e924003122c1459b25ebe2af0f5b8becc8b50ccee1354b304e5ba7ec1e0bb42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159384313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4368ffd9b43260bf9794d9c679495b2a2504da70c0af38a0397ec79fa9e1fa98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 20:58:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:58:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:58:59 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:58:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:59:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:59:03 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:59:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:05 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:59:05 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 20:59:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 12 Nov 2026 20:59:05 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 20:59:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:18 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e5787a533b613902e3ffd341565e345447827d4813fe728ce29db329e47598`  
		Last Modified: Thu, 12 Nov 2026 20:59:37 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c747244b8d45c47457f3e91d67366f0cb5d093fc0c02406077a73d3f2a9ca80`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 4.5 MB (4534169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd2c9d21180735e5cc6016a20ad86e94e7b4713cfdfe8b88b434188befdf302`  
		Last Modified: Thu, 12 Nov 2026 20:59:37 GMT  
		Size: 1.3 MB (1250030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd3e62004ef358f2ab5f43b8ef77aa240897b02dcc25567b74b4fb6621e0438`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 8.1 MB (8066427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6d45847b743e090152116e25161b97a524cc65b58a4f7b4e666329874157a3`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 1.2 MB (1196475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863bde57662dda722c7df405243965230bfccb02928c74c7da35db9ca603764e`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90b607236cf5356468bf459825d3e8f80a7fe43f2caf919bb8766ef07fdbdb0`  
		Last Modified: Thu, 12 Nov 2026 20:59:39 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c3c9c7884a6f0dbbb8415cb5a49befb99131974c0023dfbb8b0f5502f154e5`  
		Last Modified: Thu, 12 Nov 2026 20:59:42 GMT  
		Size: 116.1 MB (116068375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da15dae2a0981d179c3e0506d653b5720b888ab61c510d62906f5d167c2bb45`  
		Last Modified: Thu, 12 Nov 2026 20:59:40 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f5ce160f23d14c83ac6ba983c22ddd4632038ab47049b066d1625238039240`  
		Last Modified: Thu, 12 Nov 2026 20:59:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433457657c78926137a8e1e440bc43cb96b7ca53cfe36bd2f32436e5435cbcad`  
		Last Modified: Thu, 12 Nov 2026 20:59:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c88b3f21a05be49a379e9929cdaea7395fce6328988f845d1e4c81f2b1add5`  
		Last Modified: Thu, 12 Nov 2026 20:59:41 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be175adffea81c33332df9a3aad5292e225decbb72730bacbc8677067c6584d`  
		Last Modified: Thu, 12 Nov 2026 20:59:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:980b1cb6ee6710513e0e9d5a2d13be98b61da7dd516f572b651b71bd33570a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571069f319a627d67f6127660c67639436a16f54755c7f16947c3c0305dcac4c`

```dockerfile
```

-	Layers:
	-	`sha256:d4b92fec986c8848821f6f3e71fc1021d4d8d6fa38c20325321f20279b01f805`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 6.2 MB (6216858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf1b2dc7d83c712e970060ae17fbe74cbd7077cb9e80df7e0c9ec2f671812e46`  
		Last Modified: Thu, 12 Nov 2026 20:59:37 GMT  
		Size: 53.3 KB (53296 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:5f465a4a37589defe9204044630aa6cc2eaa9e803faf9da2c5527233c4a11150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86487993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94174ccf44edb470733d7acabb243a36691959a462923ab3c58eec64e354c08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 21:14:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:14:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:14:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:14:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:14:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:14:49 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:14:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:14:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 21:25:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:25:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:25:21 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:25:21 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:25:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dd5abe654fd616b05ed6794e07640e2843040b5abccc5939f057edcc5f0dae`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29013807bb6d939f404835f9a745e2da1584d08ad427ddaeabbf552c6b7b678c`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 3.7 MB (3742500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8d223bb8cac5c1d886764a52906906207a2c6f2189e39fcd508ba0933aeffa`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 1.2 MB (1216699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cf766cd1f85b07e3feeb591ff4f2e6b60c83f4fd3291946773c65021b81352`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 8.1 MB (8066420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f89385215f7a801ee280bfb0ccb51fc71e58fc529a54a5c864b107643eac6f9`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 1.1 MB (1067309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0658fbaa123f6251fdcafb2f6fa7a49c2d45defef698910879e56c0929418816`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf384689b8d8bf0e196af378c80c9267ddf34db550191b050536132c3fb6bd2`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712c4c7ee70aa2b75567e3d7b98d4a146613dfa846fd699130599494144675be`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 48.4 MB (48412851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723c5859c3fd5247d6fccbf43a5e51732d9b1c24d75513bc34aa06243b7feb56`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 9.8 KB (9838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d1cb843100e4f89c993442b2570f47d2cca301a196ffa36aacee123e8d8a95`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544e2d557e2963d63a4d21bc61aa8db43d86f9a3f01608668d5748887f6e3d50`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bc056a3531fcf81b7c9f42becb0f53837e9f54e868c4b910ca74097e54a189`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9957c039ede7f75c7ba13dec4e05ff4caa8489998185ddee59b115458cde988f`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:da25c24c98c19fd11e77df0bc62b81f56a654b60f5e9dfea7c4da02fd9ef02c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5648401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7050b81c2507fd09fe47fb9c5b6c2ed20bdb1c99c67f673e839456b09d4014`

```dockerfile
```

-	Layers:
	-	`sha256:48930d0027eeff198d15b5818160f464690e48f034b385dcbb189ac440626ea5`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 5.6 MB (5594904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e8b45961e52747acd02952a2d81b5eb1725816ab80456692439c545129499`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 53.5 KB (53497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:737fc4195f69c357467faebe99c6bbb76ffda987aa4f23c6942af6f8d111d377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157301613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d83aa3da39a34b0cbd1f1dce947f07205c2c2fa686d13c7af5da12b7f82e3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 20:56:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:56:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:56:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:56:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:56:56 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:56:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:56:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:56:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:56:59 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 20:56:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 12 Nov 2026 20:56:59 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 20:57:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:57:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:57:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:57:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:57:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:57:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:57:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:57:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:57:14 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:57:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:57:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b9c168b556beec9f5f5b709223bb6a67e8e437453ab817e0410f60b86a76e0`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb5339ab6d500cbce42fb36d6c5ee5bbdd390c4ccff27b69557253a5a1c4a60`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 4.5 MB (4519533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e14809aef9073d28a71eefd720a474e033abeff134c346fbd70826df32c9a2`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 1.2 MB (1203857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a448030115e6b86560c3ed2b51d4884785cb492861507cc4b0e4badb20fcb3d`  
		Last Modified: Thu, 12 Nov 2026 20:57:34 GMT  
		Size: 8.1 MB (8066489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69444aecb37ecfc5aa9f6c70b684da4e5e3c5c436e839fb65209437ff847d2a7`  
		Last Modified: Thu, 12 Nov 2026 20:57:34 GMT  
		Size: 1.1 MB (1108972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc6d25363d9469b7aa784da6957c15434a10399f2a6ff7bab70fe05bbff6415`  
		Last Modified: Thu, 12 Nov 2026 20:57:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d4b980d2a1c513166c7296b53267083ab38db03fee04d1082a0526d4a34829`  
		Last Modified: Thu, 12 Nov 2026 20:57:34 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711ffb5b9d0b9daa03461e808896c6c37f7017a64930704153353b49f0adffa7`  
		Last Modified: Thu, 12 Nov 2026 20:57:37 GMT  
		Size: 114.2 MB (114237555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5918c092617e4a0e4af3d475833f0b44cb8dd68dda29e4059ea7ab4eb023582c`  
		Last Modified: Thu, 12 Nov 2026 20:57:35 GMT  
		Size: 9.8 KB (9834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c67d4a9f067ed35400e25362faa4f436d68a4d88483a0bdb374cc9bf46b962b`  
		Last Modified: Thu, 12 Nov 2026 20:57:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662f1f9596210dbfa9f3af977be3b3f52242b74746acd1b5944a1a55b129d15e`  
		Last Modified: Thu, 12 Nov 2026 20:57:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8069a975f2ed72a0564d2cfb3990c2c3ab814bf8bd468039aaa6491661ecd4`  
		Last Modified: Thu, 12 Nov 2026 20:57:37 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e459f4cb34e1d01a5faa0d7c4b74ac1498ac4b6d7af68d8c543f4487f87e793e`  
		Last Modified: Thu, 12 Nov 2026 20:57:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c915ba83026cc66be73f09a1f9d73a8a523e7be63afecfa1d27a69f10b224c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6276723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1582eeeea69af12f5354c1e5efa77a543da980a2f20a6e7cdce8f72752caae1c`

```dockerfile
```

-	Layers:
	-	`sha256:8923cc5949c32bfb5f09570b67dce3341ac75b713e79f028589f9941c128f9f1`  
		Last Modified: Thu, 12 Nov 2026 20:57:34 GMT  
		Size: 6.2 MB (6223182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3bcb4e018ccf760bce4653cddf21e458c822a1846848b494ec93d1bef5476b2`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:42e37ea60dee52d9707b8cf700b84180581012709899158cb30f9d75ce68419e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97540964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238d219afec5e9dbb14eb3596aee8d92a4583370fa51b29c8aec3f53a83724f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 21:02:34 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:02:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:02:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:02:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:02:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:02:48 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:02:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:02:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:02:52 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 21:02:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 12 Nov 2026 21:02:52 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 21:10:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:10:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:10:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:10:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:10:25 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:10:25 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:10:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f22f1e2d21984165b87d78dba416f0729e4a6047fee215763dfc78d47a16983`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e407ebd8c722dddbeafc1694b11d36d82ccb639489d14c6414c057578f3dd3f0`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 5.0 MB (4966044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cadba8530703279fb178e15684a6454d58ac0cf06939ab1f8d0337e39ab1c6`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 1.2 MB (1219020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4e115e8364bf8c47262f3f9e5a80e35a6dfe9c3c4e19eb2b63ef99913b0a17`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 8.1 MB (8066461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71d84f98573139cd293ee32dc6889a833e31d68ca35798006ed6aeb6064dcea`  
		Last Modified: Thu, 12 Nov 2026 21:10:39 GMT  
		Size: 1.1 MB (1137484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74078aa33790007e933d18205f8351069b993945c845360d62fc6d16ffaebf80`  
		Last Modified: Thu, 12 Nov 2026 21:05:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7133cc3e8fc93aee530912fd84c1f4d5b62ed6a28e83d90fe26ad605a58a25a3`  
		Last Modified: Thu, 12 Nov 2026 21:10:39 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f038aadd8e98523cfd0a31b1f7c54fbef8cd665788113332ca9c867c84f28d0`  
		Last Modified: Thu, 12 Nov 2026 21:10:41 GMT  
		Size: 52.9 MB (52891880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fecf38399d603ac6df0b05f8095b0568ac59e0ec85477d4c79dd90f3bfa82a1f`  
		Last Modified: Thu, 12 Nov 2026 21:10:40 GMT  
		Size: 9.8 KB (9841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7268011042dfa57b533c0dadbf7660c191911961865fe28aadabf43901c93d9`  
		Last Modified: Thu, 12 Nov 2026 21:10:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee02b2686996b6c8017e6ef717a2cf19a43d48e94b5a896b047a2de6e9fad130`  
		Last Modified: Thu, 12 Nov 2026 21:10:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270b280b0704c34b0665339c0bf03b9101ae538c869ec3fc185f88b512e75b4a`  
		Last Modified: Thu, 12 Nov 2026 21:10:41 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe9eaafdae0ea800c6e0c096a442d9066d86cd01de8ae0cdc7729925b716796`  
		Last Modified: Thu, 12 Nov 2026 21:10:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:bd1b1d8833db9fae6e69d29290cf809cb1a37c5830815d640732b8c1a4a43da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5643423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df112c1e079738eab0243a7fa3f95685291eea3235e5ec35d5f7e846bb1d3194`

```dockerfile
```

-	Layers:
	-	`sha256:9fd9cc39ca32a9ded6f3d0bc9bdc44b0550630ba096fe88ba4b10bd9140ed4ef`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 5.6 MB (5590177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ee51b6dcce773044b3caf4d05aaae23a10236e2728cc586fb6d60fb2ba3d7f0`  
		Last Modified: Thu, 12 Nov 2026 21:10:38 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:9ec71dcb2bde97a0a1e582b14c8a5eb87bead55874327f5b940e57af6f67437f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172893016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003dcca05ec2e6dc1a04240fa20b2782248330dca34578c331998b910d092103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 09:44:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 09:44:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 09:44:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 09:44:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 21:46:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:46:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:46:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:46:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:46:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:46:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:46:40 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:46:40 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:46:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fac527a03b12a4ef061fe86cf9bf9f331d9d2a646faeaf4f6bd742e4be53a3d`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb68f2b74629f7bc2883b1d76171acd260559f506e70bf9873842421ba639a6`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 5.4 MB (5368619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512f9b881453b2367731d8c27d57b873d280d48d033dad92c81cc684e645a0e1`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 MB (1208860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b4a019a3eda5638f0b42104cdca5674729d9dced8eb98954805ccbae47a0e`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 8.1 MB (8066557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d2accf232231cf51ad68e11a9d1f928917f05dcb5a5fc230b816bdc66372ec`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 1.3 MB (1283640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee084a0d1299770ff481a2aebed29dd162772793bb7d8cc8f2dcb4cfce56edcc`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da62f174315f3a2e4afd0843362834a16a2c34ca556e654e368ac25c12b7f3b2`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5906c5fd489c3bfb8508d6b1559c2759eea66472cb704e606da75cdcdf9ca5cd`  
		Last Modified: Thu, 12 Nov 2026 21:47:47 GMT  
		Size: 124.9 MB (124850915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e77e49ab1d32ce4c54cef24fddbbe6dce12c8054f9de054f940ff90b6986fd7`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 9.8 KB (9843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1294cc01ab18ae32f220c816df19d2b319ab0f5582a69eb9d2ec489475c3a9`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee8c4db30c6e620fb05799c6f5e5d4cf685cb34da3829d78b6d5626eeb9928d`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5d38c5305292048c7f6f1773423d67d4b25a94f9bcde29054527fe0dbf2036`  
		Last Modified: Thu, 12 Nov 2026 21:47:45 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba791197497f26da28080724a9f96cc6961f0790618ee0d67674bd244a85745`  
		Last Modified: Thu, 12 Nov 2026 21:47:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1b7b7a92407c6a3339be790801e980e82253f5b7f7cd1f9bd76a64a3a8ca8175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bd5b2d4d31bc34b9a21ce2776edf295b807974f892f892cee07a568ba8f3bf`

```dockerfile
```

-	Layers:
	-	`sha256:1ec58eec62a0c8335a2114a7efe9f836270a978baf2b6233af34c9c9746e5731`  
		Last Modified: Thu, 12 Nov 2026 21:47:44 GMT  
		Size: 6.2 MB (6220544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a01ed60d4b32cc8236e044cf3b836b77f854f385d27762f6b935b0cda707dc7e`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
