## `postgres:19beta2-bookworm`

```console
$ docker pull postgres@sha256:273349b90fe82c7b54f0c6672d20c6e8f3ac060562100f00f54ab657b40fac80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `postgres:19beta2-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:3e120d480f51120e70f4a1ba01c993bf8538b05ea64d387714b5c15409c9cd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158512352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a25ba82c53b379abc7397f0bf9ecf6899b07052e78dc61a56473cb6b428ba7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 22:04:59 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:05:15 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Thu, 16 Jul 2026 22:05:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:05:34 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:05:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:05:34 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:05:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:05:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9847e742eb77263c01d24a6e9e65047405a886652d8fd343c2ea4f787d911667`  
		Last Modified: Thu, 16 Jul 2026 22:05:55 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc597e8449ab4c13b4b0acb38948b9b08af209f3c5413384a830bed3778702d6`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 4.5 MB (4534234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bce3d6881e29b887870d65258762cc8866ac6d632a09ffbf12eb8e22228f2b6`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 1.2 MB (1249479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2e2f8ead5e75eabd808690f21a95d4e10b48f306454c1fe90b0f09da92d459`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 8.1 MB (8066498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f246e135c2b5f0c44ac11255f844e1d2643301da251b20ef5b7107f7c23a373b`  
		Last Modified: Thu, 16 Jul 2026 22:05:57 GMT  
		Size: 1.2 MB (1196441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374b08127f065ff4fa256c4b2564704158b4232047f72b282af590f562ee4b70`  
		Last Modified: Thu, 16 Jul 2026 22:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb6f318212670346a490046b9e6be1993045a485354ad25df8be8df46e09d06`  
		Last Modified: Thu, 16 Jul 2026 22:05:57 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105dc8e89dabcfe0d235f51c172d0a64048c938bd21508e96491f0374e7cd7d6`  
		Last Modified: Thu, 16 Jul 2026 22:06:00 GMT  
		Size: 115.2 MB (115200880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaff83a2c1a8c58177e64259dc1c8b71abee46fdbb078680b35139058938c73`  
		Last Modified: Thu, 16 Jul 2026 22:05:58 GMT  
		Size: 21.3 KB (21332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd407748132db569a25c7d6e0b36061e6c1ac84e8735a7a0ca4356ffc8e8ba0`  
		Last Modified: Thu, 16 Jul 2026 22:05:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:447aff28a4b29fb911edc8b4ebc19a5f111dfa22a99cd8b7367edb6863515f56`  
		Last Modified: Thu, 16 Jul 2026 22:05:58 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b61ebda5dab3a356dcc80457f82fb1ff8a8247b1fa834912193c350a6b6b07b`  
		Last Modified: Thu, 16 Jul 2026 22:05:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:5774832f811869e4cb9306b6145638fc864864dafc160c966be34815386050e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6249099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f19a45cecc75e1fe5288060e47fe18e158a08319d6821f9ac1d0f7326696f8d`

```dockerfile
```

-	Layers:
	-	`sha256:508cf622676a9c7ad0e101d1f3de1f7a46b5784ca9f806e67e13b3c824ffecd3`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 6.2 MB (6198097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5fe8bf100fb4e14545ebb1d339ac4b389211d165f7793550dbc7da835487f9e`  
		Last Modified: Thu, 16 Jul 2026 22:05:55 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1efeb35645b8330f07698694a963f0e3e31fef02900d76cafebec9cf06783545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156463060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32848c79aa7418b7925d797389cbe0fb867c9392ca6796cf350eff8f9476dcbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 22:04:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:05:14 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:05:14 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Thu, 16 Jul 2026 22:05:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:05:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:05:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:05:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:05:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:05:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:05:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:05:33 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:05:33 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:05:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55917a3fd9ad39e4e16005ea18a1ffb98031fd648498083168e2bfe70524494a`  
		Last Modified: Thu, 16 Jul 2026 22:05:53 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fa13e1662f515d5850579b774863003fb0ad5e24d9ebff93e1b00cad0782ff`  
		Last Modified: Thu, 16 Jul 2026 22:05:53 GMT  
		Size: 4.5 MB (4519539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a4a1c3f94281a09d7441f70323301ac8e387e15d3585c37ffd786a2a9c3610`  
		Last Modified: Thu, 16 Jul 2026 22:05:53 GMT  
		Size: 1.2 MB (1203295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1cda215f1c657326abad13f205281c0ce40605e7f30ed6300354492abe566b`  
		Last Modified: Thu, 16 Jul 2026 22:05:54 GMT  
		Size: 8.1 MB (8066472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf9bb0be1cae0c94f348d816c99ad770a703f57fbb5ed808e72a7250c2d8f3f`  
		Last Modified: Thu, 16 Jul 2026 22:05:55 GMT  
		Size: 1.1 MB (1108993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4051b05368435029d6aec6311342394d692f5a003716e32e44c07bd5a46cb09f`  
		Last Modified: Thu, 16 Jul 2026 22:05:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70a7fc91a89f4ee2ed69e48c8a51eeac6d94984deaebca3074dbbe57dea3ddd`  
		Last Modified: Thu, 16 Jul 2026 22:05:55 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b1d907c519af111f0b57684c8a882fa836a6a0cba136c5ceefbe0a600868be`  
		Last Modified: Thu, 16 Jul 2026 22:05:58 GMT  
		Size: 113.4 MB (113415329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d06f4f540c63feb2b99297917dfa600ffec6809bc58793fb0d1896a8879562`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 21.3 KB (21326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70bb6d106c2e2fb66e59a620cba9c64304aa4fd4e4a49f86385de312a0e000a`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ba01fa86762257387cbcd36209e40be19bd31e8fb1fe7148fbf32f44b6b334`  
		Last Modified: Thu, 16 Jul 2026 22:05:56 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a85d80fef82362ac30f476cde5f25c6695a2d4511b6abc1f6c3601e425638f`  
		Last Modified: Thu, 16 Jul 2026 22:05:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:669e95eeb6be1cf77e019598743c9f2beb8030c9c1826306c56e772b1a57ca50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7099ef5840a62796dfd9365bbddcbe484300bc8cb731505eca3bf388862aff`

```dockerfile
```

-	Layers:
	-	`sha256:1f0c91195460a4eb7ce4a17e12748298973f20885c3fde37e696d17ad679bd46`  
		Last Modified: Thu, 16 Jul 2026 22:05:54 GMT  
		Size: 6.2 MB (6204398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b086ab9cba2868e8734a5d8da836df9941825acbefe5993b861e8cb4f596eac`  
		Last Modified: Thu, 16 Jul 2026 22:05:53 GMT  
		Size: 51.2 KB (51220 bytes)  
		MIME: application/vnd.in-toto+json
