## `postgres:16-trixie`

```console
$ docker pull postgres@sha256:be01cf82fc7dbba824acf0a82e150b4b360f3ff93c6631d7844af431e841a95c
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

### `postgres:16-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:67d92986b34dce02e7a8fc0c3cbed2f905356d74c8e52b96b898e48b18e20018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160174227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cbf408c5417a24daf1b1ec94625f34251ee99af8c3a51e73900a8769457038`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:45:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:45:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:45:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:45:21 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:45:21 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:45:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:45:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:45:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:45:25 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:45:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:45:25 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 17:45:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:45:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:45:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:45:38 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:45:38 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:45:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f981a6dde62f7f08ef3a9d2ec1be80db8f2092aa18e3b38099db50d204848b2c`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8787dc3d9f01ed9e374788821940fd733d91f492332ef497e1239c0888faab`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 6.4 MB (6443092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f48eff40a207121cab89f0ffceb0075e9c847196d8ab0b29fe401783a8141ca`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 1.3 MB (1256784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c470025708bb5b5f4aaa87be6f17d00d6fc67c2d9eac1b0e8726853ba6c90129`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 8.2 MB (8203904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7181160b63b19387e6d818374fe6126b2bf41dcf647177ce060d914998e341`  
		Last Modified: Tue, 07 Jul 2026 17:46:00 GMT  
		Size: 1.3 MB (1311650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6107e543611fe6e0b1c0565f7bba13417ca1210e57b1191b08c9dd1d39a2aa`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612502b9ebdb62c0b3b23bb69bdf5f5e5b9ddc03f7a8cebc5b582ea5855832b0`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9063b76f70756de26ea98959e461fe098b236ee6c1dbdfd648f90f2f8b1d74a4`  
		Last Modified: Tue, 07 Jul 2026 17:46:03 GMT  
		Size: 113.2 MB (113152283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384e4f94268e65bb3439673f5dae2cfc8edabef9c70a50b5e2a19e61771dddb7`  
		Last Modified: Tue, 07 Jul 2026 17:46:00 GMT  
		Size: 10.1 KB (10073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bb405b3d26b7621572cab2b05241eca94d80173d45f6b40e3f708027b07d62`  
		Last Modified: Tue, 07 Jul 2026 17:46:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b2cd99f7ddfc0586f6e19ce02387332bcfa2eaa091a607ed8c4695c33cabdb`  
		Last Modified: Tue, 07 Jul 2026 17:46:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e82f8d5404e2b4d064f46ff7dabe07380e3d944965b3485c79c454de9c1c03`  
		Last Modified: Tue, 07 Jul 2026 17:46:02 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289e4ce53254d47b7e9fdf74be021e258c89ad8e0897e97c22f480929403907a`  
		Last Modified: Tue, 07 Jul 2026 17:46:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d183b97a5ac3751b0a2911957c6ad7f1a0f5eadb7577e847dfd4a4117dd1b501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5762781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cda56aebb1c76717a2544b06954432f2f0ea5d1b6cedd88fc72f04b1d21a39f`

```dockerfile
```

-	Layers:
	-	`sha256:ce6fe7305b64f98faef808431a75e713b833376d4b6896051f66b64dbbb3d93d`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 5.7 MB (5708912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcd87ccfb17be49cd3f9c2da3896be04a54b95207471d17abb0741f06bcf319e`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 53.9 KB (53869 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:81fd09ff88d43a3788951420ff91d64dbad3ba1ff4a7d41d22600e42b8999825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.2 MB (154206967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1378b2ef01f0fc17286a82f55da176d26304e0a26b1cb4bb0e051ff78465a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:53:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:56:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:56:32 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:56:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:56:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:56:40 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:56:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:56:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:56:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:56:47 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:56:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:56:47 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 18:13:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:13:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:13:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:13:02 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:13:02 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:13:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b30d312c0906816da133f8d6470aaeaceb82701ee33a565ad0be24385317117`  
		Last Modified: Tue, 07 Jul 2026 18:13:21 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826c51217e853fcc957710e96ad5d824311250a5170027fe1dff5835f20a5e1b`  
		Last Modified: Tue, 07 Jul 2026 18:13:22 GMT  
		Size: 5.9 MB (5932313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b21fdb8ad4fe98ae7c97bd098d452b9bd840505011d5ccc4ca6d523c0b98ca`  
		Last Modified: Tue, 07 Jul 2026 18:13:21 GMT  
		Size: 1.2 MB (1227480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0470c37520c6bacd4da324992d1635d177490e0b26f38c0bf865ea1ad7da3e0f`  
		Last Modified: Tue, 07 Jul 2026 18:13:22 GMT  
		Size: 8.2 MB (8204311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:960084f702a2837ff9f2f510a75b0e19a766e067dcb731bc9cb2988e733e5892`  
		Last Modified: Tue, 07 Jul 2026 18:13:23 GMT  
		Size: 1.3 MB (1317329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ec9251c0618824a3aa0eb5b340bdbb093f37487e0344c72e5437cc74fd8e19`  
		Last Modified: Tue, 07 Jul 2026 18:13:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c958efc220fd0f2c2e7cfa2ce7443c14db708623e1dec5fdbf64cd206e44c8`  
		Last Modified: Tue, 07 Jul 2026 18:13:23 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4112d36d6a1e0a9fa90792e56e00d0e623da00bb1ce8d3c23793455defbad5`  
		Last Modified: Tue, 07 Jul 2026 18:13:26 GMT  
		Size: 109.5 MB (109545228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a33bb8da3bcd68a1639fc5909907c26694b20c7f4fbb6f5499adc08ad4e4f14`  
		Last Modified: Tue, 07 Jul 2026 18:13:24 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9ac826b17f44e5d0abe066d34703e04078af6a6524b37f189646218b4f80e2`  
		Last Modified: Tue, 07 Jul 2026 18:13:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18378e29293b3b6cb39a936b2c78f020f9d24a01fa7aef73588328afd3d269af`  
		Last Modified: Tue, 07 Jul 2026 18:13:25 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096cd8e6cf8d30f05bafe6a19f06b7cc7817f39e13d0e4ded2dab2d1f2081614`  
		Last Modified: Tue, 07 Jul 2026 18:13:25 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d33b3d115599d1ee32b5283edeb3c2252736a20254ac1f68a22cdd95916a63`  
		Last Modified: Tue, 07 Jul 2026 18:13:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:67c72611cbe72b7f91f2e267a578a04f4adf9e8141172fffa78aaf1975c78ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5779646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca62a42d236f361038b461f8263dc02366e87189006a58fa5c79a14be8c3119`

```dockerfile
```

-	Layers:
	-	`sha256:43cbe2d05b39fc4ee0b862e682c8b27f619a81e78122b70bc3353f12022cb57f`  
		Last Modified: Tue, 07 Jul 2026 18:13:21 GMT  
		Size: 5.7 MB (5725554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368e20b04eb5c3c69e2eac133a2982c3505ca04cb7a6d4b6ba359f6209d47f41`  
		Last Modified: Tue, 07 Jul 2026 18:13:21 GMT  
		Size: 54.1 KB (54092 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a59cd399b6cfc77e234780dcce92736251b41d59a841739b683078a3969e0889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149239483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df700511dbee6d186683fe751b01cd600ef79301a31b13338c3335c784644ee2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 18:13:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:14:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:14:12 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:14:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:14:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 18:14:19 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:14:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:14:24 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 18:14:24 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 18:14:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 18:14:24 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 18:29:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:29:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:29:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:29:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:29:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:29:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:29:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:29:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:29:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:29:12 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:29:12 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:29:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547036a3e4b255481f1c5413e34d62689e96e22d1c4c8e01f5af698a48015153`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26fc2513e21dd63d8564e5e2ab8836c4904bb933138fc78890aa5b5721beb04`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 5.5 MB (5497271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62accc61d18ae66107ed71698196111c47907f70c2fdf6dc5ad2ce29d0469756`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 1.2 MB (1222309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c204602d7e9767d380612f43dcaa54e761d174208529c9d37aa084234d3e0f6`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 8.2 MB (8204093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597ebae2d2e04af6c0a7cbab60edafa68759a5a7317123090840a0452e74b908`  
		Last Modified: Tue, 07 Jul 2026 18:29:32 GMT  
		Size: 1.2 MB (1172622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e941202a33a4c9f49733142cc3a5c2ba470b57c1c71e35255798a5d99efa476`  
		Last Modified: Tue, 07 Jul 2026 18:29:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0e01f51748eb63debc15f076131ca7095be4895f293d56b3d47793f30680ea`  
		Last Modified: Tue, 07 Jul 2026 18:29:32 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d22cbd30b5609ba736a5e23a3bb1f4e0a0dbb05f5bc519f69dd1201c44c3bd3`  
		Last Modified: Tue, 07 Jul 2026 18:29:34 GMT  
		Size: 106.9 MB (106911043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d170d05d1855b1dd1f9befaf7fe1c01204c69ac243dd160a4a1a950ebc969572`  
		Last Modified: Tue, 07 Jul 2026 18:29:33 GMT  
		Size: 10.1 KB (10078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618ec12d3f2646d0a156744e3646e4cfb05315b9f80d6034ad02a8b33b4cda66`  
		Last Modified: Tue, 07 Jul 2026 18:29:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd8a125382c4758161f9d2f6892f8c38658420e6f449b1213cbe938fb1ae94b`  
		Last Modified: Tue, 07 Jul 2026 18:29:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca6cd3a6d5963590cffe34354c5fb089aa46ce41233b04723905bc8c7809c0f`  
		Last Modified: Tue, 07 Jul 2026 18:29:34 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c87e5101fb907fb31812c6caefca9ccab8fd292ed062508d9add8f0b168aa34`  
		Last Modified: Tue, 07 Jul 2026 18:29:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7d6fe796b8a36b87a44556ee7e57deb25e72ca7a4a7891aef58b317a23632b87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22852ae0ff608d46e1145a2363f27a9a460bdd570a8179aefd402f61110e3055`

```dockerfile
```

-	Layers:
	-	`sha256:0fa2b41586ab986eb345cc3923a4da32b2dbf620d3069cef83320583ad549816`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 5.7 MB (5724859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e791b191a3f0bd0d17391738da3397357ed99b1a1ea7af065ce6ef0659e4dc4a`  
		Last Modified: Tue, 07 Jul 2026 18:29:30 GMT  
		Size: 54.1 KB (54092 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:4d8b6faf28fe73125ec3853583f4fbbb57de2bb5d92fb663d0c6aa963c287b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158797336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23376f11a2ec1c6bea578274b44d5d83e38f7260a6e5b4b7e2c81c1a62d26bad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:40 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 17:44:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:44:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:44:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:49 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:49 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c3b06ea11dbbf08bee6ce31c6442b6810fd1a78e01282d46d46bd4784bfedc`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1414a1aa0a9e327913a515d91456eff717fe093f53e278c2061378ac93fb56de`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 6.2 MB (6235183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e32887241a5e4e632cbdc343e4899fab9ee219de3d020c448b6b8ad57f0f28e`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 MB (1209610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71c554003ad3ba4b0114cfad28c8f8f4a1fb3c7a928215e97c27eccd5f32c4c`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 8.2 MB (8204009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f311e7bf7674e477ef6d414b6acf59ed1cc9dfd41d131d6711892cb3d335666`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 1.2 MB (1220606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637cfd629adc4997d8dc5ff827c731731fce93e589484dd22bf2bb65d5f9d64b`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a07789739d1c7da9ff59dc85d47f23ec2e0276c94ba50e362ae1e3017ca89f7`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfefe7df1d402d2ed79c9d059cca5043edeb147d69435866d131032fbb8c4346`  
		Last Modified: Tue, 07 Jul 2026 17:45:11 GMT  
		Size: 111.8 MB (111758292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2bc7e262817342497192dfd9018ef28f4939fd675d8dbebbc4c26ec4c94b36`  
		Last Modified: Tue, 07 Jul 2026 17:45:08 GMT  
		Size: 10.1 KB (10070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340091553b072ee8f4d5ce0b4989601acd8fc35cb45e79ac13a16f835e512710`  
		Last Modified: Tue, 07 Jul 2026 17:45:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3134e30b84c9be979bb0efe29083affd87c0842690145a44778ad6b2d77eadf9`  
		Last Modified: Tue, 07 Jul 2026 17:45:08 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ce7fb58ebf2a52a7cce7c096e1a1f926e73761abef09de9a134da0de893e42`  
		Last Modified: Tue, 07 Jul 2026 17:45:09 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baac6e64ebf0cb81525620c785273b9848a97be05f2192befcea45bc628c9872`  
		Last Modified: Tue, 07 Jul 2026 17:45:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:8770165baed4125da8d906006794d39052e5b2623beb05e28dccc8e853b32509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5769388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3203fb10875f008fd865db93620eb2795771094359d16051ff07fd94d1bd9e9a`

```dockerfile
```

-	Layers:
	-	`sha256:7ae870e67b83a2f3c91328c7597c5b3d88f7add3337d48613a304b1037785c5e`  
		Last Modified: Tue, 07 Jul 2026 17:45:08 GMT  
		Size: 5.7 MB (5715250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1392dcfb7d684663fb337dcd2212976b68a38b7a63ce793448b171ef85c15775`  
		Last Modified: Tue, 07 Jul 2026 17:45:07 GMT  
		Size: 54.1 KB (54138 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; 386

```console
$ docker pull postgres@sha256:9ed5264ef3eba75e4d77fb17089809aeadeae1eafda8149048d6852bb0389083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169304302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a03aa5d839f05d1fa730257eb5fc7e8b29e64353e01522cc047fc8d3c39ef15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:48:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:48:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:48:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:48:59 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:48:59 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:49:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:49:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:49:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:49:04 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:49:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:49:04 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 18:00:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:00:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:00:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:00:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:00:47 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:00:47 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:00:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a68fb065709a0dd11cf4f96cca479bfe0edf61d2aefac2ef144ab288bb8683c`  
		Last Modified: Tue, 07 Jul 2026 18:01:09 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f15fcb5d09c3d8eff0db54403d3a78644791362400fe4592b02ba2e80b4346d`  
		Last Modified: Tue, 07 Jul 2026 18:01:09 GMT  
		Size: 6.6 MB (6631398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90469d263068187974620924ad44f3e57a9a23201e733a62aed8d48c10a89e35`  
		Last Modified: Tue, 07 Jul 2026 18:01:09 GMT  
		Size: 1.2 MB (1225856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf6a391ae5f60e5f155c893980767cb947257a1959f86a171ce72fc4ffcd7a`  
		Last Modified: Tue, 07 Jul 2026 18:01:09 GMT  
		Size: 8.2 MB (8204094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d5a87a1779a01ad9e1417735833998b0ce28781f57a19d7e8d458141de9c57`  
		Last Modified: Tue, 07 Jul 2026 18:01:10 GMT  
		Size: 1.3 MB (1308286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc9966bc719cf3f2308b42118ed518d6aee82ccf407187ac1beaebef54c542b`  
		Last Modified: Tue, 07 Jul 2026 18:01:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488d9a5bf889c2ffaf90e3567ac5f868d6e21d548e13dc2d36297edd04ecde77`  
		Last Modified: Tue, 07 Jul 2026 18:01:10 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9c279ec45e7d570fc99c114879345abe3e531340a59b20993466cbbbbac5e2`  
		Last Modified: Tue, 07 Jul 2026 18:01:14 GMT  
		Size: 120.6 MB (120612369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3237f3c749959056cfd42f095c00dde12564a491560deb94219587c112013b4`  
		Last Modified: Tue, 07 Jul 2026 18:01:12 GMT  
		Size: 10.1 KB (10071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:644e0bd476201e22158f9cd85e21c8fd69e5af245876d68b371224afa4139866`  
		Last Modified: Tue, 07 Jul 2026 18:01:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0b04b883946d1633cb3a4a5819ad9624327ada5525bdcafcca4f8456b9b02f`  
		Last Modified: Tue, 07 Jul 2026 18:01:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04cd5b0446ed00d9ab8dc725a91b03742650b309456ee2497ac5d52b219a0d8`  
		Last Modified: Tue, 07 Jul 2026 18:01:13 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dd538d5d5271ff564dd52944be13be7c75d1e64fa1fbf054311056834f3d7b`  
		Last Modified: Tue, 07 Jul 2026 18:01:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:379f1edaa798d806d99ee93842889159f7bb09b7ca5705161b02ab23ceac0121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9a578f5673c44df649386bb2adff83bfae0a2ab43dde4fa3989bc9eaeafe92`

```dockerfile
```

-	Layers:
	-	`sha256:182184284930acd599ef11cee2d3b0d3060d3a1f581b9bdeded05979e07c3dc4`  
		Last Modified: Tue, 07 Jul 2026 18:01:09 GMT  
		Size: 5.7 MB (5724447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b22232ddc45fc1c49f1a33da20b8286bb1afce2062a7b43212793cd9f43349e1`  
		Last Modified: Tue, 07 Jul 2026 18:01:08 GMT  
		Size: 53.8 KB (53815 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:2e8f04842f96345f8de2d9d6939de396c0a076397d58697f2c41ce4789765753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172440336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b275b0647c593e1f3d3b129992dc5f76f64537d798eafd35d4fd48eb17bd0c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:42:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 18:06:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:06:48 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:06:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:06:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:06:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:06:50 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:06:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:06:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:06:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:06:50 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:06:50 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:06:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adbe4418c0b6864f61e0d3c466f7e08148e1772041c9e14a7a3d76d38b37d87`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7adb798b8b0bc7f7e18eb0a00a71d5e10f860c07a42898ec35d890d39f2a77`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 7.1 MB (7076786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d285cc3dd4e9e4681d990133b75a2835e43fe7cd95765d71827fd41299614be`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.2 MB (1214766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efc6ef561ed1986a6495c3966a8510a405e7b07b2e7e4a90a6c93878e44f33e`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 8.2 MB (8204056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b14c05003b8ff9c715c518223caa999b1659e6481c65528efdf2a93410799f`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.4 MB (1394897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983d4fa8eb70a2541c88adf68fdf0ce6449c909b93a882090a00f8198675b7f5`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0f59fe84db0f783be123e5da057a9ede885eee659608db2af6cfcd6a247d8c`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd72125f9d1c90ed101e4556d41e16735a7301cfe0be3edad95f12ef5b8fa678`  
		Last Modified: Tue, 07 Jul 2026 18:07:35 GMT  
		Size: 120.9 MB (120922366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a01358b25fea2adada85cd110c208bf1a55a0dbff3a70a37ed9938ea0ebcb2d`  
		Last Modified: Tue, 07 Jul 2026 18:07:32 GMT  
		Size: 10.1 KB (10054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1621e993af168056163ce121d501bf5ad5b18195a5fc67c04ac5a43230a6c2fa`  
		Last Modified: Tue, 07 Jul 2026 18:07:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d58b01d6d4acbbf69d451d6ae677533013b0ecd9fb9993db8d66d772c2faf10`  
		Last Modified: Tue, 07 Jul 2026 18:07:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673242bea7e7d93ad2564e56ce6bf9a3d46635f3c37282812342f1297258c8b6`  
		Last Modified: Tue, 07 Jul 2026 18:07:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae1a12ea8db80a8f6312ec21ee896e551e485ee2e11dda765c733f88f42f19`  
		Last Modified: Tue, 07 Jul 2026 18:07:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7b8dea378e725d4310f0e43dfa2a955af9ec77aba69e2110a6007414001eb799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5769460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0225d8611456ae1c23436373031946ff76df2742372e8ac46e4cec2f4264436`

```dockerfile
```

-	Layers:
	-	`sha256:21af1cc418753f72e70258d2e4f372292d93dd01202db2f7dd806e93c60559f9`  
		Last Modified: Tue, 07 Jul 2026 18:07:32 GMT  
		Size: 5.7 MB (5715525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a80bac633bd5654869b61a967b208a8d5c9cc25b81dda3b41725180a75c1b37c`  
		Last Modified: Tue, 07 Jul 2026 18:07:32 GMT  
		Size: 53.9 KB (53935 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:7108190131bd6b9299095a8188b0d4512396368e9fe9dba581d4875137da4670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91608103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ebca1cb55249e12365f3565abc76e97e3b759b87ba4b1999e2715a10869c95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 17:20:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 25 Jun 2026 17:21:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 17:22:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 25 Jun 2026 17:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 02:11:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 02:11:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_MAJOR=16
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Wed, 08 Jul 2026 16:20:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 08 Jul 2026 16:20:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 08 Jul 2026 16:20:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 08 Jul 2026 16:20:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 08 Jul 2026 16:20:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 08 Jul 2026 16:20:05 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 08 Jul 2026 16:20:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:20:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 08 Jul 2026 16:20:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:20:06 GMT
STOPSIGNAL SIGINT
# Wed, 08 Jul 2026 16:20:06 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 08 Jul 2026 16:20:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adbcc74bc464c350395b0ed6c1768df2fe221b068feb6158693ad4ec07cd00e`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34ed43918633e51bd4b0dfe515e8421bf7b4d99c7a97135953368b017f8e34f`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 6.3 MB (6293016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75577e804f36a67f7f9edf858af5711ac30d48485a836696cb03b019ecd36ac3`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 MB (1202088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7531413cc31124ad057b4194a1eb2086a683b6b4d169970cf67852cdf74c7eb`  
		Last Modified: Fri, 26 Jun 2026 19:26:29 GMT  
		Size: 8.2 MB (8203759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba9732299cd167f3c39e41322caab81ba4cf1dc97565a00066527c8b3f70dc4`  
		Last Modified: Wed, 08 Jul 2026 04:23:58 GMT  
		Size: 1.4 MB (1402450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598126a52ab8a77eeae1d9a321485736e59a97fcf898a17f41e6d2e2e7547717`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b530afb3ff5b8fa2d3298feb87d3e7567338d56610ec6284469f7e65b3619003`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951fdd6cb0796e22048feb40cd4c847efa59f212879a398dd8270b7145578c35`  
		Last Modified: Wed, 08 Jul 2026 16:22:39 GMT  
		Size: 46.2 MB (46203315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149f7081f8d302233c66c3906c190e9883b5668899103e73ffd5ed587906119e`  
		Last Modified: Wed, 08 Jul 2026 16:22:32 GMT  
		Size: 10.1 KB (10074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45993301281b1a5fd2827d767a976a8cded6bc95c246a0b04a75244f6d1d501c`  
		Last Modified: Wed, 08 Jul 2026 16:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f074cf1e97d8f6b72819fbb8107d703df2f5aa2884c2400f64f59953cc2039d4`  
		Last Modified: Wed, 08 Jul 2026 16:22:32 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909cbf434fcbc64b21e9839125f0fb3368bd965b2827bded61074bf52e8f915c`  
		Last Modified: Wed, 08 Jul 2026 16:22:33 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b798bacb4b31de82a4a6083856e2e70b869a47c1088881c694f66d688da167`  
		Last Modified: Wed, 08 Jul 2026 16:22:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:424e9d77356554a50ac6d33e66b3f10fc44a69ce6fbed306f67acbc26511f655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5129124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef852ed3095214895b6f58be0c59f6dedbbb56d567de6562eca4cfb0bb35cb9`

```dockerfile
```

-	Layers:
	-	`sha256:463b4581e0d74b36843b6a5fa1106b727420f1056cfd21eb281b3fcf667db78d`  
		Last Modified: Wed, 08 Jul 2026 16:22:33 GMT  
		Size: 5.1 MB (5075195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8552e3b154084158fa27f6f22cdc8def412b0d4c1e0d6267fdedf260ef7bbd5c`  
		Last Modified: Wed, 08 Jul 2026 16:22:32 GMT  
		Size: 53.9 KB (53929 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:1f02a83d97acd230d2a141dc3498371cfc96a938a74479516c3d3f5d9b73834e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174708766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564ff71717eb37d4122b4ed2e53bff89aa0e147ea43914c7eec98e5b3cb1fff5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:02 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:46:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_MAJOR=16
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_VERSION=16.14-1.pgdg13+1
# Tue, 07 Jul 2026 19:51:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 19:51:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 19:51:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 19:51:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 19:51:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 19:51:17 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 19:51:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 19:51:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 19:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 19:51:18 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 19:51:18 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 19:51:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282ce9be50a805cd1f634c9389a8cd8dee7a81fe1ec774157ce927408f831f02`  
		Last Modified: Tue, 07 Jul 2026 18:48:31 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48998c49b8194c90afb4f6b30b050f05b50149f4fbf6afa06356210b23e1996`  
		Last Modified: Tue, 07 Jul 2026 18:48:35 GMT  
		Size: 6.4 MB (6408990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b022ce16c7772704afb8a8e7d32f537795432d923f40ed3f2136ee750650afa`  
		Last Modified: Tue, 07 Jul 2026 18:48:32 GMT  
		Size: 1.2 MB (1230675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e719395ce08d3604ff52cd471cc5ed38fa68a71373c394d29b94c339f36fcd9`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 8.3 MB (8259442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7206fb6e2cc62e787f059453a210d500e95679428eada97c80e5346fc1d066`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 1.4 MB (1398712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d631813eb57eafc30343936f1d7c6a2dbbe9dd9866986d43db8f8a751a9f2`  
		Last Modified: Tue, 07 Jul 2026 17:50:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78742538bce4e97486384439060697934fe4aaa957516d86c999011c0c6c333`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea7f3ef7d3f81ba211e7cc3c2e17994201184ac7b3d3ef92a2acb856a681ef7`  
		Last Modified: Tue, 07 Jul 2026 19:52:15 GMT  
		Size: 127.5 MB (127538469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110ff10d179220213b5a0e7afa132008b0a7ff5b779b43815b1e6e0a0d61a7c0`  
		Last Modified: Tue, 07 Jul 2026 19:52:10 GMT  
		Size: 10.1 KB (10067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82132363a38f2509218d52f1de5124f27aaffe6a84a598b7c07aa2318abbbf92`  
		Last Modified: Tue, 07 Jul 2026 19:52:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528babb71cada3bf4982fcc0d1e592cd6596daf5e2baed02aa9d1228b287b8ea`  
		Last Modified: Tue, 07 Jul 2026 19:52:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6e8885dcb033ec0f23436e2af35efcd48b15e401c1cd768a5e9713741022ae`  
		Last Modified: Tue, 07 Jul 2026 19:52:12 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38443f7dbe8ac22cab598f5879e70d2306c39f260edb5222a8bca78033270c24`  
		Last Modified: Tue, 07 Jul 2026 19:52:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:33d50e575909a1b733b9e32898fd576fd64f795e63c3f039c884426383097475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5779454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfeb5616da93afac87728dca51bf668a223f145dac748545d6a2fbfd6a85933`

```dockerfile
```

-	Layers:
	-	`sha256:8856eef116b06e7fbe70893c020cba7a7f210c1417bd0adc89d5a2371aa86946`  
		Last Modified: Tue, 07 Jul 2026 19:52:10 GMT  
		Size: 5.7 MB (5725585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504764463e1749570538309c6669d66ddf2cf0fadfaf7c21e7f41c5b3cb64360`  
		Last Modified: Tue, 07 Jul 2026 19:52:09 GMT  
		Size: 53.9 KB (53869 bytes)  
		MIME: application/vnd.in-toto+json
