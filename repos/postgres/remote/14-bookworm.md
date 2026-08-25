## `postgres:14-bookworm`

```console
$ docker pull postgres@sha256:96650c98f0c7b1cf0f38dd49042e6f274a07a74b72779c70be933f9b1f345353
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

### `postgres:14-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:1e2dc0602e97c39e6af814b227cc83ff109aabc793f42ae61f7fa148f15a62a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151957666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b6b2fa79548017fb3e746ace1f5f92becbcb613afeb927ce2c75cd9e4f861e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:41:26 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:41:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:41:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:41:42 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:41:42 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:41:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:41:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:41:45 GMT
ENV PG_MAJOR=14
# Tue, 25 Aug 2026 00:41:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 25 Aug 2026 00:41:45 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 25 Aug 2026 00:42:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:42:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:42:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:42:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:41 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:42:41 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:42:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1de3267c6b5abacbc87b8a76d6057c02f7f401a75c93362817be9465757bc1`  
		Last Modified: Tue, 25 Aug 2026 00:42:16 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff0714af81bc406aec42d0544378a761bec0b25ccab2f891772e3b55d6888c4`  
		Last Modified: Tue, 25 Aug 2026 00:42:16 GMT  
		Size: 4.5 MB (4534226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1f725ff8a7145bfc294e0008c30e3d0ad1432941181b0de4fe646cac3c81d0`  
		Last Modified: Tue, 25 Aug 2026 00:42:16 GMT  
		Size: 1.3 MB (1250024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d6f5077c02665e64a93d42f56f076498e663a3e5ab5eee48e364d3be46414b`  
		Last Modified: Tue, 25 Aug 2026 00:42:17 GMT  
		Size: 8.1 MB (8066381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f521d9937961b9304162733543ae57fbeb6f6f86fade4a4c7bf1ed57b2d288`  
		Last Modified: Tue, 25 Aug 2026 00:42:17 GMT  
		Size: 1.2 MB (1196448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f14f3be7f090986d3a2eb7819324a730efd9138ae19ae2227cde34f21418942`  
		Last Modified: Tue, 25 Aug 2026 00:42:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238c3936b37c723f2b0ee3606bc8654b996fbe006dc221d2ac026a86a8a204e3`  
		Last Modified: Tue, 25 Aug 2026 00:42:17 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad789a0f8b40fd654b6558417906589c855e1465aafb58e26649e1c4f81996e8`  
		Last Modified: Tue, 25 Aug 2026 00:43:03 GMT  
		Size: 108.7 MB (108657337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba47cc54800c7c77b0c22347e43e981d05128f3dd90548aedcbfffeb8341c0f`  
		Last Modified: Tue, 25 Aug 2026 00:43:01 GMT  
		Size: 9.6 KB (9575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3252c9c5dfa3bb2dd49cda72c14ac22d3ce22cec3b97a2f43db4446e1af7403`  
		Last Modified: Tue, 25 Aug 2026 00:43:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82235baae65e77bea0c39441e50830a96e86f6f25cbb90c09e72d923a863502c`  
		Last Modified: Tue, 25 Aug 2026 00:43:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8295955b2601998af4996a0178f7a963eca3dda683bca77177ace851b23ef397`  
		Last Modified: Tue, 25 Aug 2026 00:43:02 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c678ff39682646e34f8289a181f4477e483b5ad0d51b1a7effdd0c2473fa2a7`  
		Last Modified: Tue, 25 Aug 2026 00:43:02 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:adb8a48545fd6f1d8505fe4078d385b954e35044fdef8318b593179e72d3a2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5847643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1759163d0fe30c6f92a7eb09039a319f6c51b37086bd74c51a275352ba47d691`

```dockerfile
```

-	Layers:
	-	`sha256:138a48d34c68c95b0e090f197dd1e67047ca171e97ecdfd69dca6390587c5d29`  
		Last Modified: Tue, 25 Aug 2026 00:43:01 GMT  
		Size: 5.8 MB (5794349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02a74f4650b4fa684a5e9377d75846be39f8e6dd6ac7e1e325fa6cceb5a29ee7`  
		Last Modified: Tue, 25 Aug 2026 00:43:00 GMT  
		Size: 53.3 KB (53294 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2041a1985695edb6e1844d2e11643857bdca02ebb7e23ce2fde16fbe78403ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79903888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89eb2e913b3cefa2037edebb9e855b746bc25e6753001844856a5f94e3abc0f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Thu, 13 Aug 2026 19:38:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:38:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:38:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:38:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:38:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:38:26 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:38:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:38:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:38:31 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:38:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 13 Aug 2026 19:38:31 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Thu, 13 Aug 2026 19:48:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:48:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:48:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:48:27 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:48:27 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:48:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca32267085f2cb16d15dfea9eb8e60bd0c38494440dea228bd7412c2ff769286`  
		Last Modified: Thu, 13 Aug 2026 19:48:39 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5c573368f3e95aa5b46be7be301806bf4cf9e252879618228084efac857b99`  
		Last Modified: Thu, 13 Aug 2026 19:48:39 GMT  
		Size: 3.7 MB (3742717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd97d9213ec8b9d8e4eadee404b56155296d99b2c3ffbd7e87107de7913862`  
		Last Modified: Thu, 13 Aug 2026 19:48:39 GMT  
		Size: 1.2 MB (1216547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ae784b7b7c3eceb0600aff4fb564dcc55fe83a2ba61491b5d997d015244f9b`  
		Last Modified: Thu, 13 Aug 2026 19:48:40 GMT  
		Size: 8.1 MB (8066441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a705f4c952cede8752a5e57117b4f3e4b475d3e0f1d9136087af2e7fe7086ff`  
		Last Modified: Thu, 13 Aug 2026 19:48:40 GMT  
		Size: 1.1 MB (1067279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a734785d5987641489b8ec1ed4bebcd97a07680cd82c3949200eba2c91209dfe`  
		Last Modified: Thu, 13 Aug 2026 19:48:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92415e798346490b891237d95d1fe9cc640d7b620f9f1972a3f0cbae2a297803`  
		Last Modified: Thu, 13 Aug 2026 19:48:41 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5ffcffe7b96b79153a9d4a5fcb8592f3829badbccade5340e03efd3d0b6d4c`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 41.9 MB (41850562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f161872d3f37ceacb705b339d362df225e8e3043617b8f7480d930a8bf86c32b`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 9.6 KB (9575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf4aea602871e5c9ab86b600b9e15cba6cc7f9242dbe66bc0a7ae4fecd0a22d`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ff14876470a148a8f54a2a721d3494b34a79964f686825872016be5732f02b`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1799e342ad6e16d757a33d59b8c24a618c04eea4406b7979982a835a29666c2`  
		Last Modified: Thu, 13 Aug 2026 19:48:43 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b34762ef4ef94cd4cd6a152685dd5548e2fc86dae8cc187f28df7093319f4f`  
		Last Modified: Thu, 13 Aug 2026 19:48:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c941787ebfd53d3f5b97094a47bc98b15d96bd34f30430ab69e44bc14da4a6ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761aa0a6c57d1c7f9c170ad31efe2d6458e0f2267cf90f22347bbf6fb23ebcee`

```dockerfile
```

-	Layers:
	-	`sha256:1df33f57a8ff6ca0bf3047759940da2eacd4a318ea3670b7486cdd48caa418a1`  
		Last Modified: Thu, 13 Aug 2026 19:48:39 GMT  
		Size: 5.2 MB (5202707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f3be3f7edab9df9a9bd0bc42127bae3d3a9531a9c3918b9311450c91a72040`  
		Last Modified: Thu, 13 Aug 2026 19:48:39 GMT  
		Size: 53.5 KB (53497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:af520401f22f4b76a7df1b5998dd78cd9320ae6d56786b35077bdf79e193ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149983266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd14d6660623a92be1efc90a805fed6ebcd5d58d19fd43a17bfd3c651b43ef90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:43:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:43:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:43:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:43:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:43:19 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PG_MAJOR=14
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 25 Aug 2026 00:45:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:45:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:45:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:45:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:45:06 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:45:06 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:45:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545481733576eae22997a02807d7947613125ef556fc5267d8b71b8633888312`  
		Last Modified: Tue, 25 Aug 2026 00:43:56 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ec89b686ebd79b724a8429c13f58185a441a1c483bf8819931d566db040829`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 4.5 MB (4519566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f79a42a2dfe06e33db86854c4f0484d3fd98636de77570703312d26f0df24`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 1.2 MB (1203841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ba4d1b9b1aa469776fb0250fffeace022a871a88d423518cc33fa388ffc663`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 8.1 MB (8066459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a8987b6f5cb2778463a82a1f33a53b667e76f57aed25ffcba1f70b16c9ab59`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 1.1 MB (1108983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef8a510d41418d6cf3f98cf24533b81adcba4bd5689ae1e60c89ad5c4336e3f`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7105667d1505a2ae58b986439108a7fd8a3a8cab26eb47f1009ae60c3986ff2e`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a9f1e8ca94ad01dd68878582a58dd8f44f1dfbd47d3a268ce1e0dd4a1a7a91`  
		Last Modified: Tue, 25 Aug 2026 00:45:30 GMT  
		Size: 106.9 MB (106946541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86887a964a8584fae0c3641a3de487d0a039a1b46e1daa333c84ebe96d35bdd9`  
		Last Modified: Tue, 25 Aug 2026 00:45:25 GMT  
		Size: 9.6 KB (9570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef3a5392e15c77df30217189b9b8d437b5eae3cdb88f0ae26fbfca86aec4606`  
		Last Modified: Tue, 25 Aug 2026 00:45:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad3a26d574c6a33727ae69580445bc659c2b90c1f76fefb9ee7f63439d979ab`  
		Last Modified: Tue, 25 Aug 2026 00:45:25 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca14714bc4669cde636d17265cc5cb164d50b4b2552352dad776ebf4d12e0f51`  
		Last Modified: Tue, 25 Aug 2026 00:45:26 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d933b4b1c12e8dbf3b1fe1c0bd500448b5774daae4e1de136c7f6bf913468e2`  
		Last Modified: Tue, 25 Aug 2026 00:45:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:bbc01cc4cfcb8defcd619b77dd179b8aade061a44462590de9005c3f38f12622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5854201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453e0bbe8b15115ecf6e7334c334fbcacb2146c975631e088d98d75b5702357a`

```dockerfile
```

-	Layers:
	-	`sha256:aa75b6b12622e23f5a462311e7c3e7c653633d238b887ae7282d3ed3de4b70e1`  
		Last Modified: Tue, 25 Aug 2026 00:45:25 GMT  
		Size: 5.8 MB (5800660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb8389a6ca59f7e983087c423a2b3330a714e30dc8334c31936a3b992dde6db6`  
		Last Modified: Tue, 25 Aug 2026 00:45:25 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:cb32175700e5890a3d1a0edc34dc8aaca85442d485ca1fc7a0f51d510ff9da8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90284914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9c9f54277f2444889bd703fcc145b0c98e9a48a23dbe1528423cea3a3ea2e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:38:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:38:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:36 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:38:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:38:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:38:40 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:38:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:38:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:38:44 GMT
ENV PG_MAJOR=14
# Tue, 25 Aug 2026 00:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 25 Aug 2026 00:38:44 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 25 Aug 2026 00:55:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:55:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:55:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:55:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:55:00 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:55:00 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:55:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cb9689093e68fc3d59d07dfe265f1f61d2966bce3fc2b41f5589d3ff4fa7b5`  
		Last Modified: Tue, 25 Aug 2026 00:47:31 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1679a488e4a43e25055d3db099d4d0af0d64c871ee706d4de48552be6884f8`  
		Last Modified: Tue, 25 Aug 2026 00:47:32 GMT  
		Size: 5.0 MB (4966065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99de8a8dd3cd341cae083d3fcb0406de4319fa2af9af660af0108ecfec304ac8`  
		Last Modified: Tue, 25 Aug 2026 00:47:32 GMT  
		Size: 1.2 MB (1219027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01498c4b4a4a3c0e9dcc33d4b4d48ac4dd2fcb29bd4f8befe663cca2a3ea2a4`  
		Last Modified: Tue, 25 Aug 2026 00:47:32 GMT  
		Size: 8.1 MB (8066438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32ab3ac7d1da3b21605c0c4bf2fec607a6bf7c903039a07463e4ed51c791566`  
		Last Modified: Tue, 25 Aug 2026 00:47:32 GMT  
		Size: 1.1 MB (1137476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314d13fcbcd09862fff2f2dd86fbafe22ae3f4ce9e444e805882cc0955ab0375`  
		Last Modified: Tue, 25 Aug 2026 00:47:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c354de7a9dfac8b66af1c3fd0a82c7116392dfd77d2f7d1dd121b25484b36c46`  
		Last Modified: Tue, 25 Aug 2026 00:47:33 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dea66fa1f9fc909dde0afafa949b0183aebc48812ae63cc430aad2eb49c05c`  
		Last Modified: Tue, 25 Aug 2026 00:55:13 GMT  
		Size: 45.7 MB (45654261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2af7c35f68978f1abfea860e2fe0b8158e0f41ebd16e615832a3d885debcfb`  
		Last Modified: Tue, 25 Aug 2026 00:55:11 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d038d3aafaaee22d158fc50a594af884c475ac54d0f3783736ccf7a9f38aae04`  
		Last Modified: Tue, 25 Aug 2026 00:55:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afaad011b44e572d4bcc2339be52be17c2ae88a773217b5367e9b9c357d0cd4`  
		Last Modified: Tue, 25 Aug 2026 00:55:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5dc4571437012696dfcd85915b24de4d0e1917dc28e7bebbe86c8bb1764a96`  
		Last Modified: Tue, 25 Aug 2026 00:55:12 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5012d649d528bce457d48f9b39259bbabc4ba06ee87d3dbb2bfd22adbb8c564a`  
		Last Modified: Tue, 25 Aug 2026 00:55:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:13e87f2cf9c3f66920df72f1395018c5ffa9c9f6345a280d3a822117ec3605de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5251291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c942e17005d36bf8edb712b8d732fc962d61ae4c16d41a4d3cba012c1a6033e`

```dockerfile
```

-	Layers:
	-	`sha256:bd42dba0f60d098fcfbc002904f3224acc8aba2b6ff81b6b462602455dae5746`  
		Last Modified: Tue, 25 Aug 2026 00:55:11 GMT  
		Size: 5.2 MB (5198045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f691aaac246d55e8840c5f2928071e2685b487b8f48f97275f4a4a2c64d8f09`  
		Last Modified: Tue, 25 Aug 2026 00:55:11 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:dc09a51943aaf97ec1b2e212a95a1a64e2b08fcaa151e53d7f6fe9c698a723b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164646872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c488c7106c608a6c80bd8919f3ed0c155f27008411ff289029cbec78001ec4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_MAJOR=14
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Thu, 13 Aug 2026 19:48:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:48:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:48:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:48:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:48:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:48:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:48:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:48:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:48:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:48:41 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:48:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:48:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cec939a79644ab6bb78d28a444eebff366ed6b949f2b7290c972bdc67fa6f75`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b540a69468854421d4735efa7a83f681adc411de8c514dbd9b0226b58da5ff8`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 5.4 MB (5368560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb35cb0ec0deb640076d3857b908b44243fc6f9647e7a06c813803509dd30610`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 MB (1208180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97fe6452754394c6c13687328c4dd74149ba2f00bf61d6b8bb6d1a070fc892`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 8.1 MB (8066511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c09e453d5bfc9f19d37c4fe21e8fbe55a806430542ad4f894a620a8ee53ae39`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 1.3 MB (1283621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca6b0a85b1dd222d227227e64758c77d24db36e13875b8f144c7de1107ea63f`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16ede0afaeb0072156a4047fdb2b7cbd8ec5aebe178590a468624158eab2bc0`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4121d09666ff122cd83f2ecff37c82a76c2578a9940991cb5a165da9e954e2a4`  
		Last Modified: Thu, 13 Aug 2026 19:49:31 GMT  
		Size: 116.6 MB (116623088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f08c6b348945eadf071116efa9d72e10dbaf96f63b9eb3be62ea2a4b730476`  
		Last Modified: Thu, 13 Aug 2026 19:49:28 GMT  
		Size: 9.6 KB (9575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29734e968b0de9ad1e1bef5791d8055b37ffb0f6ba8bfae38045d16d1910100e`  
		Last Modified: Thu, 13 Aug 2026 19:49:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833b4dc5ab26d1c9c617f27324d7e363e85fa34dfdc71d5a3aa53dc28d26f265`  
		Last Modified: Thu, 13 Aug 2026 19:49:28 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260a3634ca0007094a8c0a93c7c0d69424d59f5514424eb040d7fb093dadfb23`  
		Last Modified: Thu, 13 Aug 2026 19:49:29 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c094f16a60ea32bca2281b1f49ebd0bcdbef3e92c6d9e82d2775bc3502b649`  
		Last Modified: Thu, 13 Aug 2026 19:49:29 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:ada6d5c4a815b73230e2e2ab40ab8ed51537fac60eabe7864e439b402d1f42e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5855060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e711e89e15f195c5abdfbf62a88bc0197411d2b488720c90c4493538b792db2`

```dockerfile
```

-	Layers:
	-	`sha256:0e24483f00c62679e2ef75dbb34926d180615c241287ee4d1521a07c0f20efe1`  
		Last Modified: Thu, 13 Aug 2026 19:49:28 GMT  
		Size: 5.8 MB (5801710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c480c891f7b4413d8f16a78081c4ed681f4a52778657902fe148fe0e0021ffd5`  
		Last Modified: Thu, 13 Aug 2026 19:49:28 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
