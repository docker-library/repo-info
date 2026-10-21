## `postgres:19rc1-trixie`

```console
$ docker pull postgres@sha256:d03306cc6cf0108dbf28377ee6edbcb1241fb118fc5329572473f1d03f0fb748
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

### `postgres:19rc1-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:124063bea11dbb3edbe6922fa7e53ac186698353c87371eb55f82a05c163ffcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164233533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a5d673564d822eef31ca15298d7a5a697aa3316d27c339c59bbc8199e00c42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:36:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:36:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:36:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:36:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:36:17 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:36:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:36:21 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 00:36:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 00:36:21 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Wed, 21 Oct 2026 00:36:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:36:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:36:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:36:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 00:36:36 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:36:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:36:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:36:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:36:36 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:36:36 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:36:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0428ef87eb889d4f487073625c72ff382113f5e03de6e7348e306e7cbda3953`  
		Last Modified: Wed, 21 Oct 2026 00:36:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b382b1f732a16b95426b8ea9025469ea5748c7fe138bf8733529c23d17c29d`  
		Last Modified: Wed, 21 Oct 2026 00:36:57 GMT  
		Size: 6.4 MB (6442939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6d195ee34511f506f9a1e140cb0a3579e2c11b54aa2470b2d37f5024af389c`  
		Last Modified: Wed, 21 Oct 2026 00:36:56 GMT  
		Size: 1.3 MB (1256745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b142a2d3aca2dc455b263f41505aeb4efc0d34fd89d44c871e458b33d2623d`  
		Last Modified: Wed, 21 Oct 2026 00:36:57 GMT  
		Size: 8.2 MB (8203805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab475e318db9061b345624bac6fa0e530648e4d0c30248260f3b643611ec082`  
		Last Modified: Wed, 21 Oct 2026 00:36:58 GMT  
		Size: 1.3 MB (1311706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee16f784947d11ac5f777aabe34afafdb2163ba84858bde233d3a106b530fc6`  
		Last Modified: Wed, 21 Oct 2026 00:36:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:633cb79824549677619cf46b06e40c98de9842d9d8e4536a4cfb6bfb59690fb3`  
		Last Modified: Wed, 21 Oct 2026 00:36:58 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cada17cd5b33e47f1922db4260a2444e1012d6045d7e19af4b066dd2f8b4b1f8`  
		Last Modified: Wed, 21 Oct 2026 00:37:01 GMT  
		Size: 117.1 MB (117142291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549b0e7ab57869491e81fb6fe34851937e52833ad52cf54799d70188a537ce75`  
		Last Modified: Wed, 21 Oct 2026 00:36:59 GMT  
		Size: 21.6 KB (21615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84997359f83dd5eb3ff2890dace26f6ffb936eee47e8a67f54d2f5b95307d089`  
		Last Modified: Wed, 21 Oct 2026 00:36:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ada4dbf96dc8672b31fcb5804ec1cb7b5737ac06b0a25c26756142c50b94759`  
		Last Modified: Wed, 21 Oct 2026 00:36:59 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932fca902259c2585ba299b66e1550ed638133ae7d152174cd73c96f0eb4f211`  
		Last Modified: Wed, 21 Oct 2026 00:37:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1d4d074635b005462a7255fc1330cd5198ff48f4a8ddb514d1d63922c62b4096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6059994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a621da7488a7840e00dcfbfda6874e5040d3d778d952a43038c81f73d5862668`

```dockerfile
```

-	Layers:
	-	`sha256:787ade33f647c4453884f6c2e1c53eae238ab2fb3221cae843a5297142663e39`  
		Last Modified: Wed, 21 Oct 2026 00:36:57 GMT  
		Size: 6.0 MB (6008704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0149345aaaa77c3a0b81624c5d796e24af33aa00a24d1c0b096a5ddc8a2e3404`  
		Last Modified: Wed, 21 Oct 2026 00:36:56 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:78238e2f9c3fb581c8c1b0f3ffc734006fcb4fcf81b0ec3e9b5164270dc97038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92702505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1380137757f8cdd413a9df9bdae954aee214d5f527b17e5427230042ebf4eed7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:36:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:18 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:37:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:37:27 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:37:27 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:37:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:37:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:37:35 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 00:37:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 00:37:35 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Wed, 21 Oct 2026 00:51:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:51:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:51:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:51:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 00:51:25 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:51:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:51:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:51:25 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:51:25 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:51:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9235c31c3f44c71298cc6258512323c40061a18203305e4f2f79fb40e5a444`  
		Last Modified: Wed, 21 Oct 2026 00:51:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c4ed3a1f30991207f645cc65114a7624c2c96a070ad6c4082d0aa39c6494f9`  
		Last Modified: Wed, 21 Oct 2026 00:51:39 GMT  
		Size: 5.9 MB (5932388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0196194951d46576736d32fa1fd2cee15fcc50d65e2db86c056a9596f1a5e803`  
		Last Modified: Wed, 21 Oct 2026 00:51:39 GMT  
		Size: 1.2 MB (1227462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef149c59fcff017c1b0af8630363c9ea6962a2c13d84a0a6d60c12118a502e1f`  
		Last Modified: Wed, 21 Oct 2026 00:51:39 GMT  
		Size: 8.2 MB (8204201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff38f3844a53892e1ef70b50b9c8382c9a24b570d6e8f5aeb72c7799457fe4fe`  
		Last Modified: Wed, 21 Oct 2026 00:51:40 GMT  
		Size: 1.3 MB (1317352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22119c96170a6fa5100a88832f5f9652ffccd6022a5ba20e352d43f256a4b1a0`  
		Last Modified: Wed, 21 Oct 2026 00:51:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b327d3c3345da0989ec120a59d124d73f1729ef7a591fd1a8c977b38d4762a`  
		Last Modified: Wed, 21 Oct 2026 00:51:40 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9b2d6f090b624de716b28a271f423c9ff1d36ccc1d2f60d5337a72ea2e1f7e`  
		Last Modified: Wed, 21 Oct 2026 00:51:42 GMT  
		Size: 48.0 MB (47980846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4033169c8da6dd6fe752d44f37cc3165afc0a2b625377ed68d8996f6f0655173`  
		Last Modified: Wed, 21 Oct 2026 00:51:41 GMT  
		Size: 21.6 KB (21610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c6635513b5ddb402008cbc3917ab4a4a63d49e327fa739edda2f6876337d3c`  
		Last Modified: Wed, 21 Oct 2026 00:51:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a151313ace8edb3533eadee41911833a8d325d8eebdc214cc7810a2bfc415a3`  
		Last Modified: Wed, 21 Oct 2026 00:51:42 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b015b5ea5a3d37d47876bd389c234a8b113ae12388c7568d3a755715c44dcf`  
		Last Modified: Wed, 21 Oct 2026 00:51:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:39a184acafeca1534a868bb7e221180410812e0f3ba0d4fb1527e2db59da77e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5194569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a8dda16bf1c81de4deec9091a88980be2e88bd2ac2ae4c862d36b871d9abc4`

```dockerfile
```

-	Layers:
	-	`sha256:afaf812e065465849fd24a51f74539043dd165717e08aa1b8c69548fc2ebca97`  
		Last Modified: Wed, 21 Oct 2026 00:51:39 GMT  
		Size: 5.1 MB (5143091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b75d4d9b8995178487d2ee8fe8f6ec6e6172ce9d734685ad3d12dd3b3d5741b`  
		Last Modified: Wed, 21 Oct 2026 00:51:38 GMT  
		Size: 51.5 KB (51478 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0516448fa86bf50cfbde57e1880883f8c073cf7528f3ffa737e222fbcbaa1e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89063491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6394b74d211e302090f2f92303296cf3e3f7c6d5c97f0f07f18a288a519abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:40 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:39:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:39:39 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:39:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:39:39 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:39:39 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:39:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3162ab99b5fbf787e4204e44f12a3c8f3fd6b8bba25c89290b46767aa109b23`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71082576df47c91ce0b432fe4f0628f0879645108a54f073ded65d06124de96`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 5.5 MB (5497244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa607c89a69b726271cab53bcebf0788d7b894d2193e20dcb26bcb3b8d1594c3`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 1.2 MB (1222311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b7012f9d6d166c388d8cbacb591a6fdb76d837038d0b597ae93de49d680d79`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 8.2 MB (8204085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f00f4e62a55c8165af614418237afd1ded3e9203b6ea99fc30a6822911c66a`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 1.3 MB (1264375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a30edc903271ad9fb230d96ca71c8897bdcfb809d7582a751fdeabd9a94a9d`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0030f35c3e8aacf8f6aef3e7630519c595e4e667dafc1fe8510cdb1c1310fbab`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4eeae3f00e3be5a4b5634f2a335427fc4f249418d78894780338491d60e90a`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 46.6 MB (46584827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec368a5b9ae856fe94e4b6157fa5ef82dc55ee81c57652fc7f0776c378ad2579`  
		Last Modified: Fri, 16 Oct 2026 20:39:55 GMT  
		Size: 21.6 KB (21623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44afee1531a11d0fafb7bd18c10a59c8724404a5c6c7fd4aeb01959a011630c`  
		Last Modified: Fri, 16 Oct 2026 20:39:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e50779c533f92fd973fed05f4ae00879aa6264fea2be40c3d3eb8a6061a831`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c8691cc10415396faed193c3733585576af49c8df766b9501c5f831b20c9c7`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:84fe85cd24cac964a49b452360dfbe0e885e73f160a768c5cbad25fe5d355080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5193874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d3837b6cb890089c7ac019e829f923284c43954c265cb06a2c68e705dae598`

```dockerfile
```

-	Layers:
	-	`sha256:55ebfccdc794d88b3199fec11d2f9ffe90b781741ad0c700b5abd1959f246f37`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 5.1 MB (5142396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58e866dc4f81b7c3512ea4773e0bd3be58ecfe4961760d1fe23a484056be2b2a`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 51.5 KB (51478 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1a1af56a9939d5b822f683ac5358ee535cfdbd3fca0eded6856ccf108224b477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162828373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016b6ae9118b03180e3dd5f494d00426efa9cba64c224fca1017f0c6fa533f11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:15 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:39:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:39:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:39:35 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:39:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:39:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:39:40 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 00:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 21 Oct 2026 00:39:40 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Wed, 21 Oct 2026 00:40:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:40:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:40:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:40:04 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 00:40:04 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:40:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:40:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:05 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:40:05 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:40:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f61ce45ffc3f76421ae678c7c594d7547aefc141721c77b779d9ed49185807e`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c739b4c3a7e3311a198e74d4e419d0830953ffa2bdcd6b527d535c63597d709d`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 6.2 MB (6234970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0cdad27c88f3dc2a79338e5997bd3b406b77355b87d2183c5a7ef4735e927`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 1.2 MB (1209608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accfd81bccbd24e2a7b21fe39105b083d94c3b72f48ded5ee99a5913e3d058b6`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 8.2 MB (8203959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d70632d5abbb0af3d134439368ec8401555fa3613f88745caf8bc6567b4260d`  
		Last Modified: Wed, 21 Oct 2026 00:40:26 GMT  
		Size: 1.2 MB (1220664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2035207825e15dd6a4f4a133e8605d518f4bea3e222546b4dc1eab0d5bf66c6`  
		Last Modified: Wed, 21 Oct 2026 00:40:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de26969292f8135da286087150d54638984e53ab9805eb1f7b14c481a732bd10`  
		Last Modified: Wed, 21 Oct 2026 00:40:27 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70daa0a47cc7bc8324b252b131c451b6519acd4ea3680086e316a3612872467`  
		Last Modified: Wed, 21 Oct 2026 00:40:29 GMT  
		Size: 115.7 MB (115726228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151d32fbfc733eef7b546312b6b26a58d652e8a48ad8d9d51f985c854ad7d4d6`  
		Last Modified: Wed, 21 Oct 2026 00:40:27 GMT  
		Size: 21.6 KB (21614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764d016cf58bfe40765a6985885e1554bfca0f049f269c70a8a2e54d21a11234`  
		Last Modified: Wed, 21 Oct 2026 00:40:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7549b3b985e134da298f3a4d5505c2e780ac71189cda8c32642374b4508dcec5`  
		Last Modified: Wed, 21 Oct 2026 00:40:28 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81793c1b40d1087cfa77a9f7cfd01f9708da68ad5564a33d164f46483662439e`  
		Last Modified: Wed, 21 Oct 2026 00:40:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3c6a6ce3c746284425acb285fedad6889897475deba7dda0a35a7c03835b37ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6066541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faaeefb7c9f660c845ddee2bf19a5c78484c66c51e91322e77a7c394f400f4f8`

```dockerfile
```

-	Layers:
	-	`sha256:90e515b07e9856d2ebbe34450feab2dc5352b2982fd0f15dbfe4bb2500d7ec08`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 6.0 MB (6015021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a11ab9fab3e1330fb9e8cdc6a47bf9b9d6a4e39d24787775b561859bd572540`  
		Last Modified: Wed, 21 Oct 2026 00:40:25 GMT  
		Size: 51.5 KB (51520 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; 386

```console
$ docker pull postgres@sha256:121189b4c8ba8b6f9e5273464a76262f694cbb11fe58b1c06f047da0c28edef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99012432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0dc08c17db0d762ee9395f8893a6c36749a7b8107e0957b08b8f3a6570b6161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:44 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:37:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:37:16 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:37:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:37:16 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:37:16 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:37:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e810c9fc62cfbe6492d100e0786310a35f233f713e9c74afcdf794912dbb4c2a`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f2094cf8cca0237a0bd5c353ae485bde90c46387f42ef338c94ba62d9d8fb3`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 6.6 MB (6631425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a58fbd3074059d0ddba9c9b4da35ddc2c04989521c1b62e6a451e9efa72d256`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 1.2 MB (1225853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a1fdd2f0f674e1d10b2e1ad971b20934f2f86b638d7870e9b342aee44f75a8`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 8.2 MB (8203975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b010081f83bb9be18366845e78f043f13c55db32833b3d8147c6a3a1f09397d`  
		Last Modified: Fri, 16 Oct 2026 20:37:31 GMT  
		Size: 1.4 MB (1429467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96080af8bd9ca8b9ddcb0bdcfe34c7481a1f2724be9572242a9a812f8003a78d`  
		Last Modified: Fri, 16 Oct 2026 20:37:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e593e5e1aa0304bdba31e18af4dacb5e39d76635ba8d29629322318f7fe3b9`  
		Last Modified: Fri, 16 Oct 2026 20:37:32 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ae3bdb270ab8eb73d4e561229bbb8421cdfe4762b3b66fb019839406c558ac`  
		Last Modified: Fri, 16 Oct 2026 20:37:34 GMT  
		Size: 50.1 MB (50135951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8691a0510d5ecda5da2aa5013ab9a261c6e82d41ca5aafb4bdd361fe49b4a5da`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 21.6 KB (21612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e595a3fb5459128f633e979ed023703a7f818b88fd47071ed4e1d22bf84dae`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb708712f69cadfc496e647d47299e7ed2372b3bbe00584395a9d25e2b027764`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be54a7f473e27efa59d76613239755065debee9c02f0324d5b4f9d3f58a6699`  
		Last Modified: Fri, 16 Oct 2026 20:37:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3169dd50de435b3df4a28004c20aed6f9ffef2588466b34bc3f18727fee53020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5189718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c99669b186324f73ac17378313ae4176d056eeb0e0380d15e0e7106fb2bff7`

```dockerfile
```

-	Layers:
	-	`sha256:313f50999668b0ca279feb5e6adcedd367d6ca0288ca9f8ddc4a9afc81ed727a`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 5.1 MB (5138476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:544527fd29e31b05fe84adfe2e9183b93f52239bab63f024e324a1cbbc2708b1`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 51.2 KB (51242 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:8bb5a837d33753d84edd86ccf6de9c33191fda6df77e88639d27d20c034bda5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176832909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc456098b040babcb424e97824192c71f0cc140bd1d270d458ce5d51760b95a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:25:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:36 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:28:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:28:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:28:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:28:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:28:15 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:28:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:28:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:28:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:28:17 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:28:17 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac235decc3283cbb6a209c9b2df7abf9f39d50e6261805e86dbc624f087a6a98`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953668be41bfe6e19385d5da5117dea351db35a2bb41d446353e542b004a4703`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 7.1 MB (7076890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0943e497d01ff661ba6a4be3a618eee1bd41ff2923a7fd4b9fe905abe8d6b166`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 1.2 MB (1214852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9258e2addef014bb4b16daba885cd2d05c4fd404b59cc95c4460838a2804d8`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 8.2 MB (8204067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173b4861c97b7684e6215c418857d6c81aae3ccdfedd930791ae4b58e66fec48`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 1.5 MB (1518170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4536d99014f209945f615e8b80fbfcd1c593359dba597a0e5d1985dd7f43bc3`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b44bd83ff2539fc87aae0f399f806f4f3e1da77950ad848de22cead97de9e94`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9247a601ace9d7825b66dd2121ab6adac5cf6df4471756bb50f8a6f47de1b4b4`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 125.1 MB (125134877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d19a53fa107ba2357318f2374e682e43775838c77a236cf2c89bc21b7a21ce`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fcc7203cf479fbcfd0824c6250d2b0595e267438e003e473d754df47cc3adfb`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b99b7be8dd00e496877c83d9bc5d94045f95dbc97fa05c49269c0d5e2e9cd2`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d04c232187cf66c873a575e1fc993bbc0b5f6f7907d457ef9e74b9a9396a9e4`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f5bc4654f5fdfb27f6a6563e192369247367123c58150c53ba8eb4426b3a00e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6066670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754a4b20b8f9195a35518bb5e95ed756c4d06ebfd6c8837dfb5bcd057ee04991`

```dockerfile
```

-	Layers:
	-	`sha256:a38009354b41d29e4f762428eeeea4b64ea865a1b4f267f269a89b7708a72e2a`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 6.0 MB (6015328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85810b0c9759015cf631f1a64142b23f1bc114b997ea42681f51b163a2b3f74c`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 51.3 KB (51342 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:b8d48cf984520ff5b8905113f16986665f21de141288a6860c153d987a067f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94064931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471093b2a276150b35a9d80e62f7654f8249370b9dc0421809e555f7c55decec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 05:20:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 07 Oct 2026 05:21:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:22:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 07 Oct 2026 05:22:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
ENV LANG=en_US.utf8
# Wed, 07 Oct 2026 05:23:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:23:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_MAJOR=19
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 22:53:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 22:53:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 22:53:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 22:53:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 22:53:41 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 22:53:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 22:53:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 22:53:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 22:53:41 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 22:53:41 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 22:53:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04276d84bdd5b1a89491c4c1f0f1bd23715a2cd0cbd28fd5c6a63ace51846c9e`  
		Last Modified: Wed, 07 Oct 2026 07:36:36 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f34d5932eacc8425fd245ae4f18b212850ccee4f3b8d4ebfe0a05c39e26d57a`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 6.3 MB (6293023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d00966b97b81f00099e96a8d2a5bc76a67d15adaace243a02e38133fa2a365`  
		Last Modified: Wed, 07 Oct 2026 07:36:37 GMT  
		Size: 1.2 MB (1202085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7478d7cf291d2297ac523c25dad89c3be79f4cdec82cf0ede13be3018ebbe7e`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 8.2 MB (8203691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4b67a45da65da2ac6956b1058b6923a5973c2b70ee147fc4eec47bd16c7aed`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 1.4 MB (1402417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa517c26b22eb5b6e36a15abe37b37bfb5e96aeab9cb78fb827e602f32ac35e6`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8052cdc30b8d44af226f3941b6370e4c67fc88e98268c86189e043faa890fa46`  
		Last Modified: Wed, 07 Oct 2026 07:36:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2081a376b9a6d05ce1886173e105fc10f8063d733375391561ecd209461640`  
		Last Modified: Fri, 16 Oct 2026 22:56:21 GMT  
		Size: 48.6 MB (48597482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ecc0c504f181634c6805ae43fc2b9de99597d5c80da1e1792d86394059b29f`  
		Last Modified: Fri, 16 Oct 2026 22:56:13 GMT  
		Size: 21.6 KB (21617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d130206a14391e87b5a2c355cf41ba0febe600afab7571504eb367268ea5af59`  
		Last Modified: Fri, 16 Oct 2026 22:56:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5274f869253c44cec6603e981e53e18a9bcd7f1a0aaf9b2d9a9ba16605130e8f`  
		Last Modified: Fri, 16 Oct 2026 22:56:13 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30757b88476184343663493089e9957849267bc00da727d7cce5466e8b229877`  
		Last Modified: Fri, 16 Oct 2026 22:56:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:efc34aecb718855bfcdbebb977ed1880e822b255a18b7de277fcb20458f24f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5184709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8526e722bc70a3995aa10b7a56af7cbe2826a0be19578d9641bccbfed577cb5`

```dockerfile
```

-	Layers:
	-	`sha256:177485907cc8b1f3c348793a4144468555fc00451ffdff45e80cc62fc2e92b57`  
		Last Modified: Fri, 16 Oct 2026 22:56:14 GMT  
		Size: 5.1 MB (5133372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c990f879a92b4171dcb6b03872a6b962689494273594cbde94ee72d0e0469e`  
		Last Modified: Fri, 16 Oct 2026 22:56:13 GMT  
		Size: 51.3 KB (51337 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:7e35aeb5cb9b49e23b491917eac8d0ac41bc902767d803d7e3139ccc36d05566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178992720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47fe46c584b74f3e254508216de501909b4c289ecff50c859abb3fac13db235`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:25:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:25:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:25:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:25:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:25:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:25:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:25:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:25:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:25:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:37:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:37:22 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:37:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:37:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:37:23 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:37:23 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:37:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365dfcde8942f4554b5411a2c34ca57d67e9dd676f15156f34507189e523362d`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abbd8b4a456aaccaa2d0a863f081d7f8184718171002a990420d072e1ed0422`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 6.4 MB (6408401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa14bd0d9b5fe485c314f3e19c52a25ba2eb23a7665eaf5a87ccf4504ca5933`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 1.2 MB (1230213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b0bdf6061741a4d919e9941eec902d8238c53930cc5888f224abc74eceb931`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 8.3 MB (8258918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddca2ab8eeb7e6514e695a72052ac2a54ed32d666301d7c507c1289d3d279f8`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 1.5 MB (1510537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b2e35518e72a1392338446973e2672c14585f3b7d9f21d2672327763ad77ca`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f676bc10fa46c1106801f73738502e0ba1c15b1df20f41c47f26993683e3b3cd`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4410eb776893b1f2c35ae58fb2a195ef760f3f43ead66ef6063da2cc02530413`  
		Last Modified: Fri, 16 Oct 2026 20:37:56 GMT  
		Size: 131.6 MB (131642944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fcb6375f4d63e108a4faf44cdabec2a20af8833a8b1c55f3eb2a7e833951d75`  
		Last Modified: Fri, 16 Oct 2026 20:37:54 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372d1afd169b2228e07feb66bd8f513d44c70884d0671e19fa953afc6b302a86`  
		Last Modified: Fri, 16 Oct 2026 20:37:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ba019ba4a34117164552ca453f07f18149a94c5e3d3ac32f681b84cd6e89f9`  
		Last Modified: Fri, 16 Oct 2026 20:37:55 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55a1d56ddf3657b483d1c81bfdf76972cd927e4320755692487108e38b3097a`  
		Last Modified: Fri, 16 Oct 2026 20:37:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2d98ad557f499b78bd76edb28b11fb844af76c70b27121ccc7363c30cdc5d82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6076686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc59f1f68c3797af9e63c136d738cd1789ac9f503f893cd7e8fc6ce62ade9a8`

```dockerfile
```

-	Layers:
	-	`sha256:ed9d86b4bea24253b67ff1904cfa4ac706fcab88dc3957fe1ed008b965fcfbcc`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 6.0 MB (6025396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0905b8519bcae0034245d3b3774aed3f30a14a68b13b493f27e1ec7205c1ff4`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json
