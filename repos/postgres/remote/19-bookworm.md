## `postgres:19-bookworm`

```console
$ docker pull postgres@sha256:4c736732289da844c2ab892451adc1a6e376e7d0ac54ca9571a2e1cfd14176a1
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

### `postgres:19-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:19c3a3c6bfe556211e190986e039c2131c224d366ba0edbb271fdb3dfc9c54ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164972339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9815a1c9c41d533bb415f320c467081ab9946a7b6b7f2ddc395ebebd1ea876`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Mon, 23 Nov 2026 23:14:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Mon, 23 Nov 2026 23:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:14:10 GMT
ENV GOSU_VERSION=1.20
# Mon, 23 Nov 2026 23:14:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:14:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Mon, 23 Nov 2026 23:14:14 GMT
ENV LANG=en_US.utf8
# Mon, 23 Nov 2026 23:14:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:14:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 23:14:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:14:17 GMT
ENV PG_MAJOR=19
# Mon, 23 Nov 2026 23:14:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Mon, 23 Nov 2026 23:14:17 GMT
ENV PG_VERSION=19.0-2.pgdg12+1
# Mon, 23 Nov 2026 23:14:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 23 Nov 2026 23:14:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 23:14:32 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 23:14:32 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 23:14:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:14:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 23:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:14:32 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 23:14:32 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 23:14:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7991ae9d9f5a746348c12112c9022f4d4a56acda41708af9ef325d1a7440ac`  
		Last Modified: Mon, 23 Nov 2026 23:14:51 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5936228e65108dca47d9b4b2786b849dd9424d5325c745fa73d86c564fb6a557`  
		Last Modified: Mon, 23 Nov 2026 23:14:51 GMT  
		Size: 4.5 MB (4534178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79b5169c0e6474fe5ab06d1d696ff885e46931f0024037c8167bcf3bc59ba21`  
		Last Modified: Mon, 23 Nov 2026 23:14:51 GMT  
		Size: 1.3 MB (1251429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6ce2aed71b9c8b634e3f042ce8b4d7cf9667e03291507664f9e72b443883d8`  
		Last Modified: Mon, 23 Nov 2026 23:14:52 GMT  
		Size: 8.1 MB (8066448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a1344ff5e31500e15b125243123ec5a6d3aae5ca7eec8c53fc57113ef332c8`  
		Last Modified: Mon, 23 Nov 2026 23:14:52 GMT  
		Size: 1.2 MB (1196460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7849d4e97daeb3f6c95feb8cacb5e7adadba5c6fc1d1f2d87db457d8f500f771`  
		Last Modified: Mon, 23 Nov 2026 23:14:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7e537fb49cb049527ec73eb338f47fe800f43db204e551eb29e394cc39bf43`  
		Last Modified: Mon, 23 Nov 2026 23:14:53 GMT  
		Size: 3.1 KB (3147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23ac4b8ca0e003e6c2ae6f16b9669a05e217e3cf9822740413231a70996e8fc`  
		Last Modified: Mon, 23 Nov 2026 23:14:55 GMT  
		Size: 121.6 MB (121643436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b15cade2f6e8dc5e6146b5c23c323d7fbc15b41720951c8ff15c0b81a83ea3`  
		Last Modified: Mon, 23 Nov 2026 23:14:54 GMT  
		Size: 21.5 KB (21519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c882c72e0acafb778c14536d62738ef07b1bd7c9702a4987347248fe5929d133`  
		Last Modified: Mon, 23 Nov 2026 23:14:54 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2538c2df9f3ea7b83c36316ffb4c4027a131e9b6329c4ea5948d8004fa6fa615`  
		Last Modified: Mon, 23 Nov 2026 23:14:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:18b66175ef97e1665acf5dc1a7d7a37540e0386462895b222e366ac16b2f919f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6610488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753fd40fc086f97753e58de9f8d96bca91ef6a4a7166bf353306cb7d1309557b`

```dockerfile
```

-	Layers:
	-	`sha256:737810bcc232fcb8faae6d6f14becd4a8b6d0be5ab97d11b2f6f8f744baa04cc`  
		Last Modified: Mon, 23 Nov 2026 23:14:52 GMT  
		Size: 6.6 MB (6560484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42f38071429a9b0d5d3af1e2f0880388d394f7d0e4015cd602d823b745f4c090`  
		Last Modified: Mon, 23 Nov 2026 23:14:51 GMT  
		Size: 50.0 KB (50004 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:fd818322d7ea9b73e4c8f779eecfc5e21c0ce10b9e2ff6e4190e6bd2dcb96c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89974695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a4a2e2f51ecc61546d99674b17e23e263d30c417b8adc1427e806047d0ea83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Mon, 23 Nov 2026 23:17:19 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Mon, 23 Nov 2026 23:17:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:17:32 GMT
ENV GOSU_VERSION=1.20
# Mon, 23 Nov 2026 23:17:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:17:38 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Mon, 23 Nov 2026 23:17:38 GMT
ENV LANG=en_US.utf8
# Mon, 23 Nov 2026 23:17:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:17:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 23:17:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:17:42 GMT
ENV PG_MAJOR=19
# Mon, 23 Nov 2026 23:17:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Mon, 23 Nov 2026 23:17:42 GMT
ENV PG_VERSION=19.0-2.pgdg12+1
# Mon, 23 Nov 2026 23:29:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 23 Nov 2026 23:29:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 23:29:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 23:29:37 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 23:29:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:29:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 23:29:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:29:37 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 23:29:37 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 23:29:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4841a9d059da20869fd1076de2e076feb14877d98f249c53bf678224fb58071`  
		Last Modified: Mon, 23 Nov 2026 23:29:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d16723104b4297996d443529f2837a4d94982322b72d33ec31dcec145d03f5a`  
		Last Modified: Mon, 23 Nov 2026 23:29:51 GMT  
		Size: 3.7 MB (3742491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf5449ea3129c307f5e15330a6c1fb89045365882bfc42adb89f021c9a7c498`  
		Last Modified: Mon, 23 Nov 2026 23:29:51 GMT  
		Size: 1.2 MB (1217387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba983b2b0013ade783a5fa010e7255698e35e8270bda15f8d125135e32fd8e07`  
		Last Modified: Mon, 23 Nov 2026 23:29:51 GMT  
		Size: 8.1 MB (8066401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9334cd01c6284f3e2e950087906a6d03ce8ce7470e3398f13d6bc72c582afe1f`  
		Last Modified: Mon, 23 Nov 2026 23:29:52 GMT  
		Size: 1.1 MB (1067327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e30e38e748176c9a7da0021c028a887ac5c434318afde93b1ddbb3e3ceff8a2`  
		Last Modified: Mon, 23 Nov 2026 23:29:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3633fa153b0481386cf4544b92c8b3b635f354143293f88144e288fad61a137`  
		Last Modified: Mon, 23 Nov 2026 23:29:52 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41bad2917d283183ad1233e8d166299cd123b825d344cd83a591f959d0c64fb`  
		Last Modified: Mon, 23 Nov 2026 23:29:53 GMT  
		Size: 51.9 MB (51887324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838e0dd00d2ad9ed6ab382f8394816598a18ca88915e4de48ef7a46561b0dcb2`  
		Last Modified: Mon, 23 Nov 2026 23:29:53 GMT  
		Size: 21.5 KB (21519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5522b62f37509ed7f9f3e61c0f6e8ad712f077c626404e9752a752280d5bf59b`  
		Last Modified: Mon, 23 Nov 2026 23:29:53 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efc838cda144e70c9a67b0a01a8452ac6b56c80d1b68323de3ef72c93597bd3`  
		Last Modified: Mon, 23 Nov 2026 23:29:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d47fe96204241f26649e86e7f727bc31c785e1a542d18ef8c5f6562cc09a248a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5740303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f040e7f84718dfbb17860d44f7b46aade4f1e4e42463fabeec9b689ef6823b`

```dockerfile
```

-	Layers:
	-	`sha256:94746a2721e8076dbf0d04b6f4cc31f30a8d6455ffbb44ac3e557518d0679c5e`  
		Last Modified: Mon, 23 Nov 2026 23:29:51 GMT  
		Size: 5.7 MB (5690114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b21d6ab341e2aa4c9988bbc2fdbc2dad062baa36f8d0f92697781b237e90491e`  
		Last Modified: Mon, 23 Nov 2026 23:29:50 GMT  
		Size: 50.2 KB (50189 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f778984b0a5a81e9f4418117489b64cd2ebe2d1a27aca9b729732434e193dbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162834195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106aabffe5a904588b2d7d32ae5ff444efa13f3304ec22e2da825ef1d69e0036`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Mon, 23 Nov 2026 23:14:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Mon, 23 Nov 2026 23:14:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:14:12 GMT
ENV GOSU_VERSION=1.20
# Mon, 23 Nov 2026 23:14:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:14:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Mon, 23 Nov 2026 23:14:16 GMT
ENV LANG=en_US.utf8
# Mon, 23 Nov 2026 23:14:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:14:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 23:14:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:14:20 GMT
ENV PG_MAJOR=19
# Mon, 23 Nov 2026 23:14:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Mon, 23 Nov 2026 23:14:20 GMT
ENV PG_VERSION=19.0-2.pgdg12+1
# Mon, 23 Nov 2026 23:14:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 23 Nov 2026 23:14:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 23:14:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 23:14:39 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 23:14:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:14:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 23:14:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:14:39 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 23:14:39 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 23:14:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7991ae9d9f5a746348c12112c9022f4d4a56acda41708af9ef325d1a7440ac`  
		Last Modified: Mon, 23 Nov 2026 23:14:51 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5407062a9c677f8c3d46f7df9f584f9a82bce4530d3a6ca9b1a60594b24369`  
		Last Modified: Mon, 23 Nov 2026 23:14:59 GMT  
		Size: 4.5 MB (4519457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c276e8332c43a8ebe0e5469c6d8d5be9adeae68f44916ca8804dbacbe9ba9`  
		Last Modified: Mon, 23 Nov 2026 23:14:59 GMT  
		Size: 1.2 MB (1204592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a03a4707a525e1d25acfcc041f08db2b2f4198a11c34ef89145e8133d78f6b`  
		Last Modified: Mon, 23 Nov 2026 23:15:00 GMT  
		Size: 8.1 MB (8066489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fd0bc4a371bc7fbde7e476a5b0416db0b4c47f0ab97204f81ba8b5c90ec961`  
		Last Modified: Mon, 23 Nov 2026 23:15:00 GMT  
		Size: 1.1 MB (1108999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4831ecfb4e221ee0b041b303195c4419725338cd8f73cb141cee4d0613bcebab`  
		Last Modified: Mon, 23 Nov 2026 23:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026be6df4231534e8fca52501db0313db6871b921b02ae562b4b4f7532d08daa`  
		Last Modified: Mon, 23 Nov 2026 23:15:01 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cae28d26cf1e9bf6ed35c8961faead9278939c76151e74ec95c1ef8ebc7b70`  
		Last Modified: Mon, 23 Nov 2026 23:15:04 GMT  
		Size: 119.8 MB (119757895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f615b8a2c4af5c735635d78dc3788b3e898455bcbd7fa3b995ac8995269381`  
		Last Modified: Mon, 23 Nov 2026 23:15:02 GMT  
		Size: 21.5 KB (21520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b8540d85f9bec789ccb1fc092b9ddf34aaa2e8d7dba6e0779d59e8eea8ac5f`  
		Last Modified: Mon, 23 Nov 2026 23:15:02 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b303284c1da34e5741366e90d7a8f9fa54daceaf46f04b889360a9a64bcbaa6`  
		Last Modified: Mon, 23 Nov 2026 23:15:02 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e67d3985c1b7c1c8ae6439807fb39e9fdad39f0b527d33daa492d7a0bd6737f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9f424b93e5bd2a9a1f7fb43e17e5ba328912ccf983063852b5387611bfb9ec`

```dockerfile
```

-	Layers:
	-	`sha256:61a04718436fadb356726a7cec9647950d985c0c7a0941bc11137733f3e53511`  
		Last Modified: Mon, 23 Nov 2026 23:15:00 GMT  
		Size: 6.6 MB (6566822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff32859f0c3db4c8f34bdb5d3647ecba335d1308e033ab6fcbe10f4b7dc4c304`  
		Last Modified: Mon, 23 Nov 2026 23:14:59 GMT  
		Size: 50.2 KB (50231 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:ce2e87500575561bc2e08328c7c499f400aa6b137105095fdfb5f6a0aff49c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101331660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8832ac45095af128cfc097a390360a59f96bc6938ebf8af0dda96c3524dd04f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Mon, 23 Nov 2026 23:17:06 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Mon, 23 Nov 2026 23:17:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:17:18 GMT
ENV GOSU_VERSION=1.20
# Mon, 23 Nov 2026 23:17:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:17:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Mon, 23 Nov 2026 23:17:22 GMT
ENV LANG=en_US.utf8
# Mon, 23 Nov 2026 23:17:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:17:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 23 Nov 2026 23:17:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:17:25 GMT
ENV PG_MAJOR=19
# Mon, 23 Nov 2026 23:17:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Mon, 23 Nov 2026 23:17:25 GMT
ENV PG_VERSION=19.0-2.pgdg12+1
# Mon, 23 Nov 2026 23:26:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 23 Nov 2026 23:26:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 23:26:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 23:26:20 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 23:26:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:26:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 23:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:26:20 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 23:26:20 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 23:26:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ebf30b98e01288fd0cba8c76c131545b5e4b2deb0765114ae77e201fc4947`  
		Last Modified: Mon, 23 Nov 2026 23:26:34 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bf3283b6d238fc27947181085406e1ba7c394bab8a56a708c6cf4e8245311c`  
		Last Modified: Mon, 23 Nov 2026 23:26:34 GMT  
		Size: 5.0 MB (4966082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d1819ce7ef6099df40fc3b4f726d526c3379a57e8a9dde40caf6c19fb52914`  
		Last Modified: Mon, 23 Nov 2026 23:26:34 GMT  
		Size: 1.2 MB (1219577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9045333ef5e83d6be807d95e2025f81de81b8d488edbc18e0d57f56d9a6a76f9`  
		Last Modified: Mon, 23 Nov 2026 23:26:35 GMT  
		Size: 8.1 MB (8066542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555c49c8f4ed615392503e7d0ff415738a795afb973abb28779a5a38ae97c57c`  
		Last Modified: Mon, 23 Nov 2026 23:26:35 GMT  
		Size: 1.1 MB (1137491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebd7e7c9afe777ed3e8ee1481884246d2bbdb28a6d0f471c341f907e370a299`  
		Last Modified: Mon, 23 Nov 2026 23:26:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d8c5f48ab0d142eb4519d62b8b8b7279b4a1f144ebf2f361501a6909dc6e89`  
		Last Modified: Mon, 23 Nov 2026 23:26:36 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ba368cda85dd18dce30420ef826bda31565704d831137ef403c569a591e319`  
		Last Modified: Mon, 23 Nov 2026 23:26:37 GMT  
		Size: 56.7 MB (56670355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b34fa1ccb85cb4005c069dc29f89a2c43de7b2676fc0e5bc12268ab8f469b7`  
		Last Modified: Mon, 23 Nov 2026 23:26:36 GMT  
		Size: 21.5 KB (21515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd61ea991f3ffbabec8cb49d92de5d4d5a6bfac9b364687e31fcc8a44e93b8b7`  
		Last Modified: Mon, 23 Nov 2026 23:26:37 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef73cd0d8acdc020e019541329fc65f9bf6fb90428f66b0146002c41ae78830`  
		Last Modified: Mon, 23 Nov 2026 23:26:37 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:669c90d37beb735a0c5dc71b753303fdfc6b4f841a17800f32fed90d68b60f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5735319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8944a2c978d7fdef38b6120c490b6095fc1afc02b964e8e5441ea828178ac7e6`

```dockerfile
```

-	Layers:
	-	`sha256:b5aaf11f1d4f944889160df81135cd657690270196b9b14efaf70b4d9ad84c4c`  
		Last Modified: Mon, 23 Nov 2026 23:26:34 GMT  
		Size: 5.7 MB (5685364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59e988bb9cc51044214e1b59d3895ff8f3221c04e2d5c1ce202de59114f730fe`  
		Last Modified: Mon, 23 Nov 2026 23:26:34 GMT  
		Size: 50.0 KB (49955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:14ffcfd1082300e45cd09eb852ce3887af591ad68af43aff7c92e103832b2a08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178696428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c4f5bdd965c92e65cbd3e32ddcf447feba974dde5bf7cfc1061fa5eaee418`
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
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_VERSION=19.0-2.pgdg12+1
# Mon, 23 Nov 2026 23:15:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 23 Nov 2026 23:15:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 23:15:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 23:15:42 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 23:15:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:15:44 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 23:15:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:15:44 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 23:15:44 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 23:15:44 GMT
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
	-	`sha256:6456f09e3f6383fe76ffb91a222e9e919cac0811e789c557373253bd1d9c381e`  
		Last Modified: Mon, 23 Nov 2026 23:16:41 GMT  
		Size: 130.6 MB (130641499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abd85a57f186fe6c10789a0484a771710211b4a6e46220d417b59733c5324ed`  
		Last Modified: Mon, 23 Nov 2026 23:16:38 GMT  
		Size: 21.5 KB (21524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693eac6b38c04fdbf30d64f41769b22a4b130ea087e2a0b33afa844aac154608`  
		Last Modified: Mon, 23 Nov 2026 23:16:38 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c8a7a91018428488cfa77ab58bc6dd632f943e0f57efc54edead2fa162a62e`  
		Last Modified: Mon, 23 Nov 2026 23:16:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b2f02fcb7673f79338a78a83f6ca0adddbdfd6f74537f7fb2e03731ab4b025be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04bda83fda97b96a2eafa312709cb0fdd4dd6c7af7d7e1264a1bd1d4123ad63`

```dockerfile
```

-	Layers:
	-	`sha256:de39bc7843e334050a3f274ee71ad2f984fbb3592501859f846403025ab01162`  
		Last Modified: Mon, 23 Nov 2026 23:16:38 GMT  
		Size: 6.6 MB (6564194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3662c139cca8a7a2b85965d568b13fee3e4242981168ee772af6da4181507bad`  
		Last Modified: Mon, 23 Nov 2026 23:16:38 GMT  
		Size: 50.1 KB (50058 bytes)  
		MIME: application/vnd.in-toto+json
