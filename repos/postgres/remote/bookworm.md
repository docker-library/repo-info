## `postgres:bookworm`

```console
$ docker pull postgres@sha256:d9c83446333daec3f0588cc709adb80c26090b7f9f0f7ec8d43c243385d79818
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

### `postgres:bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:c7d36c2369348f77fe9558f1970f7a0ea80ed55dfdf9500eb734159bd4df684d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157185236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cefcc49b1cd34d41cdc0d09ab4a902ac75b8a6c1a0209ed838b6a82267304df3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:59 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:17 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:44:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:31 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:44:31 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:44:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:31 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:31 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef7fc1799e54dfa7491de5255751526eecb503a738935667e58a63da41de48b`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997983381744658a7abf8f81470578543524cd080da76b242b05b78ce0957f9d`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 4.5 MB (4534242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3aadba4312a377f2df86926e6bf1dc29b12cc0d4fa8c90655cb92db516fed3`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 1.2 MB (1249552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fac1a1614c109b22ecbd176d8a6cbdacd054ef8510999a928331ae07d41e91a`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 8.1 MB (8066408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64df022d3736826deb0f08f57954bf14dc75be3d90738bf6f5afa1e4631920da`  
		Last Modified: Tue, 07 Jul 2026 17:44:53 GMT  
		Size: 1.2 MB (1196408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87e57cd8c79303382ad8ba176b46de8766dc65b5eae6d68687956e40471cffc`  
		Last Modified: Tue, 07 Jul 2026 17:44:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a80ad0f740c890213d4449c59356f38c21914afb21ea8e11f04fd5bc7b1532`  
		Last Modified: Tue, 07 Jul 2026 17:44:54 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e8b6e23de0f416cec55022cfa782cadb35fafb9a46df62dab6c1a287d2339f`  
		Last Modified: Tue, 07 Jul 2026 17:44:57 GMT  
		Size: 113.9 MB (113870906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9b7c4ef7202d286d6f30e40b21ca73555360a8048ed3e5a0141a45328c2c4c`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 19.2 KB (19231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1ec8d6178dddc0a6019fbc6937aae5ac6d7ab1d2e4b09d4068a758d90f16d4`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d379532d24f15dfc5288bbf6ef3fae127f6144c06851548cbae0f4da84f6aee`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcfafe52b4575e8d83cea39f477ed2cc5d36e7b74946bf7c528e4a1fad9ffa6`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9974e2f2a57a1c4a5e8fff411c47667611905364d5f3a658e26cd715d5400872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57932233e26c731929c298e205d85e78764729c4c503ae36501b40fb6864dca0`

```dockerfile
```

-	Layers:
	-	`sha256:81c51ff415685f288c7b77372027ded59e71267ca28dd81fa46cf80b00a31f31`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 6.2 MB (6156533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dbe3337e4c1af661fbe84a358636c4a4b65095f96f215263a67a25889ef6709`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 51.6 KB (51589 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm variant v5

```console
$ docker pull postgres@sha256:abd22a0b43d4e931b46e2aa765c02b7f79fdc2fca6ed891e8676b80d327e68eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87264657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76708dec45b23d1224e0a663d33d8f76d3f41ea5ff68db527ff07d6259afe9ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:46:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:47:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:59:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:59:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:59:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:59:30 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:59:30 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:59:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:59:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:59:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:59:30 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:59:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:59:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab8a4bedfebd25f26888e50d156f9cbc8f7b15e3be9e6bfb341bf74e0c435f8`  
		Last Modified: Tue, 07 Jul 2026 17:59:43 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb367fc6c29768252f771f5913b7f3419787c5f3b8a7562a5904aac8023d2ac`  
		Last Modified: Tue, 07 Jul 2026 17:59:44 GMT  
		Size: 4.2 MB (4151346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90230d25940e3ee0f026ffbdfb079045cb27ba3f11c24c18a4381cd72f95450`  
		Last Modified: Tue, 07 Jul 2026 17:59:43 GMT  
		Size: 1.2 MB (1220124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89433447346379bc046c3e5e675190bfc7a23b9bfc2188c7933460fdade2daa8`  
		Last Modified: Tue, 07 Jul 2026 17:59:44 GMT  
		Size: 8.1 MB (8066594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27710e245fe562d1e3404bad2d18ab69735f081c55ccfe452a8f7e368c9cc505`  
		Last Modified: Tue, 07 Jul 2026 17:59:44 GMT  
		Size: 1.2 MB (1195106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c303be0db4ae5ee30e89102b03fc31d23541ba8a81278ce01b3fc82390d1a`  
		Last Modified: Tue, 07 Jul 2026 17:59:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa810d6e071008f981fc3029cc07fe9cd835d4a38b182a78b9455c6000442f73`  
		Last Modified: Tue, 07 Jul 2026 17:59:45 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14b1cdb29286314495b3d6607ed3b1dc71d9bd2bfe80d03f89826c30d005bd3`  
		Last Modified: Tue, 07 Jul 2026 17:59:46 GMT  
		Size: 46.8 MB (46828165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862711cb144515771ba4790a22571698bb4db30bdae04d4298d8ab58c6ddd8cf`  
		Last Modified: Tue, 07 Jul 2026 17:59:46 GMT  
		Size: 19.2 KB (19233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549d919d3f6369d5d62ca836fcb8c2ca2d1a5be81e099bbaad6235ff4d5c22c6`  
		Last Modified: Tue, 07 Jul 2026 17:59:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d21e955a6896b65b841b50ee54c220b2d7bd067279614d127f4390fcc081f78`  
		Last Modified: Tue, 07 Jul 2026 17:59:46 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8474b7b99d4af9143c37f965aebdddd6109d8e0363053ada6f61ac391b278c`  
		Last Modified: Tue, 07 Jul 2026 17:59:47 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a61901c4c94438e2a76456a8d7106f51db0a674d5ff385138faf3f7a7fa90052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8eaa29a2a61e6a2fa4bc2f153481ff9af4039e3daf560156c4b8910055903a`

```dockerfile
```

-	Layers:
	-	`sha256:0478c33fb2f626fe34f9f2d5ac04e4d66997cf7f0763c9713396261d91c3fd24`  
		Last Modified: Tue, 07 Jul 2026 17:59:43 GMT  
		Size: 5.3 MB (5317052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e637e933901f3577519a7bc0505b857eaaa9ca836ae837bb500ddb21a514bffd`  
		Last Modified: Tue, 07 Jul 2026 17:59:43 GMT  
		Size: 51.8 KB (51787 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:efa5a751c7e97015bddfb55133a2ad5d36169f0caa19e14aba3ab93f7b51ed2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83368633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e4fcd2a1fc0e9a1ceff4fbdaf760c6050c4264dfec56f7bf4f6d2f0ce63954`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:32 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:37 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:43:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:43:37 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:55:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:55:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:55:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:55:59 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:55:59 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:55:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:55:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:59 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:55:59 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:55:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacc0869f00ae32ac730ee89a78d67aaefa92fd34a53a49080948d066998195a`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995dab671162436195d29553d7f1d5a7b3be42b3d8884dd33938a11894b17d78`  
		Last Modified: Tue, 07 Jul 2026 17:56:12 GMT  
		Size: 3.7 MB (3742716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07215a7eb6758fc63ef6741743177f99b2fd14cd764e216135933429cd3c6555`  
		Last Modified: Tue, 07 Jul 2026 17:56:12 GMT  
		Size: 1.2 MB (1216060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a46c8c3b9a7138aa621d3dda44416a30508986c89c0a22ac63891531733ec1`  
		Last Modified: Tue, 07 Jul 2026 17:56:13 GMT  
		Size: 8.1 MB (8066460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26cf8b089e49a84711dfcab585a039ed035ad9cefcb95a301fa330f09d850267`  
		Last Modified: Tue, 07 Jul 2026 17:56:13 GMT  
		Size: 1.1 MB (1067290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f176ae719d0b9c08e4d6f896c77273cc8644011b98390d3a53d6ad23364ff21d`  
		Last Modified: Tue, 07 Jul 2026 17:56:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03a8b689fdf7d6ec428d7fa78f563bd7ebccfa813ffc2fcf500a4309d5c58f2`  
		Last Modified: Tue, 07 Jul 2026 17:56:13 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b1daf178631a6498563afec8decc942a8d92b5fb5587bb31b8486d7bbb6f40`  
		Last Modified: Tue, 07 Jul 2026 17:56:15 GMT  
		Size: 45.3 MB (45301482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848d672bdcc85f0c1634e7c83da9575d9a7153ec8a5537824b598b130dbc3456`  
		Last Modified: Tue, 07 Jul 2026 17:56:14 GMT  
		Size: 19.2 KB (19235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef144f51c246ea4918ad689e5214b3d91722e913830df00de7f9b2efda86f7f4`  
		Last Modified: Tue, 07 Jul 2026 17:56:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113024e135add961c3046d8ddbd7edaa131ccbbf120e98eae334d7583480d378`  
		Last Modified: Tue, 07 Jul 2026 17:56:15 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9fba3f36883159097c9df4d6106538bdf0290777cb62e91b02617dceaeb0d4`  
		Last Modified: Tue, 07 Jul 2026 17:56:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:128335900758600314934ff746d4dce6419ada1b860333e99b5cbaab45b446da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efe35a334f27387d395d8534e07858f22d2903f5fdc669edcb5bd580df1b904`

```dockerfile
```

-	Layers:
	-	`sha256:64eb7e40657c587784dbfa78ec58bf6279afa444d9955dabfeaa6a54b8a87d2c`  
		Last Modified: Tue, 07 Jul 2026 17:56:12 GMT  
		Size: 5.3 MB (5316303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f2d5c569d7d2d308cb76cfabba93ddb8b2dfa9a7d498f0f2be558c70fca565`  
		Last Modified: Tue, 07 Jul 2026 17:56:12 GMT  
		Size: 51.8 KB (51785 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d3937b42c1425afa0670111f10ccf78c0da09faed3177688eb1b5cfb1fcea642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155177960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5944cfee9fa1234b1e87208bf7f2fab14dde80eb77f06462144daaa4442f7f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:42 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:47 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:44:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:44:07 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:44:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:07 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dce04f1b09f056fef3d186a27944a6cf16d6b65e361b07175ed856badb7479`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505adecb4733a0849ab25ee854cc8b5c530a45758d8c43daca955e7ba48a9851`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 4.5 MB (4519590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bb84ebd7d93947cd537817353a709b60cadfbcc96216d8143d781e6fcf10d7`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 1.2 MB (1203329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:046f4e0dad45c7f0738449cc4e1079c07bad2f9704f4f723cc5cf57fc82f6fd2`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 8.1 MB (8066559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05deca11e3bbbb6dad1e0d09f7e8d909dcff23215a2c92a1a5c6e1d278959895`  
		Last Modified: Tue, 07 Jul 2026 17:44:28 GMT  
		Size: 1.1 MB (1109049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704e2924d1237acdc1f05b0d31a6751ad9ff386a7f2423230bea561beea425bc`  
		Last Modified: Tue, 07 Jul 2026 17:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03db844b72f713de974827c45d5b91143cd60d11177de19e8ddc9fbf468d72ba`  
		Last Modified: Tue, 07 Jul 2026 17:44:28 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d39080585eeac773c1d335b14dd7a5866c76ae68cec583f26b55eb5e92ba0e5`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 112.1 MB (112126930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a60b9f69c168509d772919be9b6befa71dc1477c6db11765f37a3a8415e123f`  
		Last Modified: Tue, 07 Jul 2026 17:44:30 GMT  
		Size: 19.2 KB (19230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d52becd1c7e6454151243c958e5b66c0a876e3d8ac1da3817b2ce90410ca34`  
		Last Modified: Tue, 07 Jul 2026 17:44:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587b36362314cf5981130982b0f3e68cc3946ffea6334cedf1478d78b8311ba0`  
		Last Modified: Tue, 07 Jul 2026 17:44:30 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436292ad9d7ecce08a0ee964cb6eaf4625a2df890454e4ca0d7399fc7a1ae2bb`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:ed291ef1e6d680fd8e9936d5f42a78a6e9ec5d4609c653d10fe7927dffa1aa80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6214690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008191985de34bdc418d161eba05db5f1e8515aa21f8ac4146f021e216ac9950`

```dockerfile
```

-	Layers:
	-	`sha256:97dc29c2513c3b3b715d78b787332fb47f3793658e69a9eaa96ad5e0588d6f5d`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 6.2 MB (6162858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bd5850a8fc2d95f703a90cadbb22ffb53b3937c2f96b5d529cf67ee2c7818f`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 51.8 KB (51832 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; 386

```console
$ docker pull postgres@sha256:b274d3c2cb910dfeb415febc1623f2474d802f8921090c7728702bac6fdb08fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94049517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657cc54ee72b0dd9f86baa56baf4996aaeeff8f5215be239911bb1cdde60f4fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:59 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:10 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:53:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:53:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:53:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:53:27 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:53:27 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:53:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:53:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:53:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:53:27 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:53:27 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:53:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef7fc1799e54dfa7491de5255751526eecb503a738935667e58a63da41de48b`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b008e57745e2f500b89e7ffee4c6ee73ba7397d4ff805e15c421f9adaf824b3c`  
		Last Modified: Tue, 07 Jul 2026 17:53:41 GMT  
		Size: 5.0 MB (4966128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22c4d12b29f45cefefbcadc4556b281763283048051b1cb7547b93153c2191f`  
		Last Modified: Tue, 07 Jul 2026 17:53:41 GMT  
		Size: 1.2 MB (1218672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd796ec29de4ee4a341168059a30ccce1995bf206b64627925b3a3b11f3d9267`  
		Last Modified: Tue, 07 Jul 2026 17:53:41 GMT  
		Size: 8.1 MB (8066436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccced771ce1003cf94022de75ad87333ec01f25bcadf5ce73a6f50e8f0839957`  
		Last Modified: Tue, 07 Jul 2026 17:53:42 GMT  
		Size: 1.1 MB (1137459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0166401ca2af614683080359eb75c0f8cdfe9a42635e489c7c869e782511330c`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8863673973a8f24320926c0eff1a5eaf78bf6874f40ab81b58fbd4b728b49622`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0f1b897a79615048a84e8d003f86b2b6a7b6c9d4d783608d11dd9ecd41442e`  
		Last Modified: Tue, 07 Jul 2026 17:53:44 GMT  
		Size: 49.4 MB (49404922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9575f67a38b95a22b6814708952932fa87349dfb00490184ecb864ae0a7cc6`  
		Last Modified: Tue, 07 Jul 2026 17:53:43 GMT  
		Size: 19.2 KB (19235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0188f681d1e92c117d6cafe2129db8932d51b55442ae375328541ff25cc6b1`  
		Last Modified: Tue, 07 Jul 2026 17:53:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273edf9c5336f59eca9b0c35c0a12ffc58788425fe19bbdc86b6671f4a101110`  
		Last Modified: Tue, 07 Jul 2026 17:53:43 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07d3baf2bad5fec10ff77addae3ce2bcb7cf29c0859c367c24ff0f574f9a355`  
		Last Modified: Tue, 07 Jul 2026 17:53:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:4e0faf59b5e10003d791dd6b76bc5a3f8ded98dd6d659e7c2ea3bf32d07baa6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a1359a1645aa93c80de4b8ca15e58a91aadf78a6d54c6f73bea63425d461c8`

```dockerfile
```

-	Layers:
	-	`sha256:45b304a5a075e79b14aad0f828a3a9248c74802d2fc0d7f2990c9395e3cd85e6`  
		Last Modified: Tue, 07 Jul 2026 17:53:41 GMT  
		Size: 5.3 MB (5311618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a04e8b930816bceb5681d7b68ff5e174d26941f460d1ab6bdca8ad10c448af0`  
		Last Modified: Tue, 07 Jul 2026 17:53:41 GMT  
		Size: 51.5 KB (51538 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; mips64le

```console
$ docker pull postgres@sha256:950c37e4ba0873a7aca1aa186803108740da7a506f0993deff0e3f1c4a3809e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156053204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d91415ac79da8eb93aadb466b86562526d44e140249d4b5c73cb58b7d8b5d70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:42:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 20:13:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 20:13:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 20:13:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 20:13:51 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 20:13:51 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 20:13:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:13:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 20:13:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:13:54 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 20:13:54 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 20:13:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81819044341eaac9920c1712f1157efa50566ad95570d768d45002804bb632c`  
		Last Modified: Tue, 07 Jul 2026 19:01:12 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f437adacf8c8ef73eeb965cbf2454b8a17472fc6153fed5f06d491f7fd41bff1`  
		Last Modified: Tue, 07 Jul 2026 19:01:13 GMT  
		Size: 4.5 MB (4475243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43909432d7d731ad34728d5ae3f5223cfa6a2071ef951742251bda9e0c83bf1`  
		Last Modified: Tue, 07 Jul 2026 19:01:13 GMT  
		Size: 1.2 MB (1159248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4171d387828bc1241d421c6282013d222c266f7cb1f2d7285c2975aef8e9ed4`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 8.1 MB (8066691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef89eb1ceb79b80a4fda95f777756ed2a50535f0c215c6ae500b5877609afb0c`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 1.2 MB (1182965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2cabeb037512e8d256c806d67ec3a22d0939e697127192f71ad2d1df46e6b8`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bdee35df2ffddd54e49e89bf0c1853c714349a60651b7924eca4deb33e0b037`  
		Last Modified: Tue, 07 Jul 2026 19:01:15 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab48e2673c86bcb76931c3b6c7ecdc862360f492de137f41b2dd62c1764fd10`  
		Last Modified: Tue, 07 Jul 2026 20:16:00 GMT  
		Size: 112.6 MB (112610075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11c076591f12fa5570afa6cdf50bc94f7ac3181e093d8636942d56f1c453eaf`  
		Last Modified: Tue, 07 Jul 2026 20:15:49 GMT  
		Size: 19.2 KB (19238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b94070b75938133f9b8e85ed65a8899814abc5db1d1a0bc9e632c200bb45e3c`  
		Last Modified: Tue, 07 Jul 2026 20:15:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e57e89cf244eb608aafd5567bdbb035cb68997ed48792f6aca84783d92ec8`  
		Last Modified: Tue, 07 Jul 2026 20:15:49 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4e0b90ae28b7e81b13ae768cb591e70268ce6d4c738d49dc15dd4f2816dc7d`  
		Last Modified: Tue, 07 Jul 2026 20:15:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:932179091d6ecfc9361c2631bfc5a0a81500c4a58865448cfcd95cbc5b75f9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 KB (51462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a8cd504afc9b7315af64ee55441fc00cb41b182697b07186a651f792dc26e7`

```dockerfile
```

-	Layers:
	-	`sha256:2a274093911a76ef4e77c6a9506744b6d977ac3b9cdb2b7cd302bb820bca3c78`  
		Last Modified: Tue, 07 Jul 2026 20:15:49 GMT  
		Size: 51.5 KB (51462 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:3b7261181245d3163db0ed61a5acaefc4eec4ba1c95c6e55046901ae49a4caf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170080655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49af97e84a4803e70261f57682396b52a82d99dff4fa2d92d8ab659a8713e914`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:42:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:42:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:42:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:42:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 17:51:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:51:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:51:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:51:14 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:51:14 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:51:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:51:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:51:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:51:15 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:51:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:51:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adbe4418c0b6864f61e0d3c466f7e08148e1772041c9e14a7a3d76d38b37d87`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10885c050c0ebcab179bad673c083fa0a6153ffeb80e7c13555a8c3b744717d8`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 5.4 MB (5368657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c00da6185c365db5aa03ea7001ff47d57fa4c2523f0a0e919b6a56eeefb6db8`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 MB (1208200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53e23aaf5b538c6296de21370bf7ac1749c3453b342cb1ee53b7bad0e6e34c`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 8.1 MB (8066525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed4cd7249af0b2871210e61fb4d41b283b24ac3a5f2cce22e42d5c87ff98e7b`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 1.3 MB (1283641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9e334a257004d85e1d2a9ce48b2d0744e222b118038ebbea626c3d1f8f33af`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6c740f281b6621a15a66e268fcd0382103759b5b73087df1d38a801a19250f`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c6d7993745cbad53957762d238a5b9da0bc85578fb3734c898947d0060788f`  
		Last Modified: Tue, 07 Jul 2026 17:52:03 GMT  
		Size: 122.0 MB (122041566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1baba130d03faf95a6ea43ee17b2a7ec42acbab1877926ba00a5818e96599e18`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 19.2 KB (19232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ce90af070c790d51be53bad75d296a7b028fa9ebf4652d8385305009a4e548`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63387cc8f9edd2fdfad14fff3a383ff50d2bac2f827f5562cbb855aaa7150c9`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e0d92c9914985e63dda50258660d400f0a72def60e8b6dbb2f273e543e3910`  
		Last Modified: Tue, 07 Jul 2026 17:52:01 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9b6435b6507e869732ddb1d86c28c86050acdd04c1ae601fdcc78679f5c01d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6215566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e62c4efbf659423cb2e33e80d97b8bde7c0a1334c24350d6876d0e800aab86`

```dockerfile
```

-	Layers:
	-	`sha256:f77a38488b491b65fbe0c495ec7f63e13d9b622dc1c47d57debf818696ee4f57`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 6.2 MB (6163918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7614b7b79797f8ca1677db715d4cf3dead3d351d6505810c4df80e4a3abf769`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 51.6 KB (51648 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; s390x

```console
$ docker pull postgres@sha256:e0bf0773eb0aaa4407b56da9ed835ed53ca42c7bd886a31e49317a6a6010cf4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166508110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863808186f3f064017f8b1b3eda283afd307687700d53ddc4d52d02056c393ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:45:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:46:29 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PG_VERSION=18.4-1.pgdg12+1
# Tue, 07 Jul 2026 18:46:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:46:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:46:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:46:34 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 18:46:34 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:46:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:46:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:46:39 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:46:39 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:46:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2a3ba71a71a9c10954ca36c5266cb85c0dc9b220e1b6ec3a4daa5df7976963`  
		Last Modified: Tue, 07 Jul 2026 18:44:31 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0bb23658069de62b43ff9f39f666de34d437c2128281af94fd4f153bef42f`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 4.4 MB (4391726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb90f504059f677885e7538dd62daada51706751d1beb363832d0f1d84a1f78`  
		Last Modified: Tue, 07 Jul 2026 18:44:33 GMT  
		Size: 1.2 MB (1223341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc17f4b63ca7c6af158c481d78e908f56b138caae8ce8fe85302608b827a904`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 8.1 MB (8121273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc1f6605bbd7b275cfb67262a06709a34960f5f947eb6abe303d044a5598d47`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 1.1 MB (1097659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e893354007a335ed566a2f3ee7a93c1389948c9302e780991820941bbfa2d4`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5224d9d0451a093adf4353821ecae4b49092f8d045e4f00dfcf86ff0f6e59a87`  
		Last Modified: Tue, 07 Jul 2026 18:44:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336706d96e5cc418144209f8f08c7a02a3fa7ba6f7c9659673e5dc5bb1f6a6c9`  
		Last Modified: Tue, 07 Jul 2026 18:48:52 GMT  
		Size: 124.8 MB (124750426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bffe05c8b1e7deebd30023d037d2095766aa8045c09d7dbaf425fa4c8672356`  
		Last Modified: Tue, 07 Jul 2026 18:48:33 GMT  
		Size: 19.2 KB (19236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41738c04aefba919024b4d2e5c0af7432e9b5af2f102e917fd7eac32beda35b7`  
		Last Modified: Tue, 07 Jul 2026 18:48:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa64e7b8bdb825035ecc76366f2f6920a6610e48af3a4324eb1b28cf33b3a3e9`  
		Last Modified: Tue, 07 Jul 2026 18:48:33 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c2f76a397953bea16d290b5b78f5eb017132dd7ff1ba39fd4e0927f1f7c19a`  
		Last Modified: Tue, 07 Jul 2026 18:48:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:ebe331dc50978d0fba413df148dd275f89f654c7d1bc58f00a6b2ae0a223df09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6222781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55acf5ba49ce5b0cc32eb619213b45b47458aa79c7773a41c2df92bb417ae63`

```dockerfile
```

-	Layers:
	-	`sha256:d4a584e81c3e5f0ebb9df21efb68eeb383abe76f71498e091b85a6b3798faaf0`  
		Last Modified: Tue, 07 Jul 2026 18:48:37 GMT  
		Size: 6.2 MB (6171191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de2d04aa0430c0e4e6746df2d7c51fa2f57f64276bde4ba390b3e1e4087da456`  
		Last Modified: Tue, 07 Jul 2026 18:48:28 GMT  
		Size: 51.6 KB (51590 bytes)  
		MIME: application/vnd.in-toto+json
