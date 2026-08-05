## `postgres:19beta2-bookworm`

```console
$ docker pull postgres@sha256:3a045e5438afc0b7c06134c2d8ea771931547bd712d5a3cad08b3bfe2e310a82
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

### `postgres:19beta2-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:18b90053bf9050f9e6bd03527801be2a8a4ade2e3a68234b38007914cf2bb824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83844325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c535327816ffeb652ad6cc9d6e16360ad7d2144d69c36ad71641ea7e56864722`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 22:04:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:05:02 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:05:07 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:05:07 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Thu, 16 Jul 2026 22:17:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:17:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:17:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:17:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:17:20 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:17:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:17:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:17:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:17:20 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:17:20 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:17:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20413e6651dd8cfcec299f481fab5776ef4c115e85b0b597cb30f1979f70974a`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0131cb6521031809f1b0b50332ff6a9699c558ef38b54b8e95a1c687a32ef706`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 3.7 MB (3742690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86efbb2a8d95c44efed3da412bef1fe4347ca02cb20688cbb26e7c2d0e672de1`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 1.2 MB (1216012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b601acb5b36668e3a0187fea0587ab60aca35c3105a180b08479ef81b5d54f1c`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 8.1 MB (8066411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7704f0ff70f3e9b4d24b4a124495484d548dfb632455179937bd7335a40e82f9`  
		Last Modified: Thu, 16 Jul 2026 22:17:35 GMT  
		Size: 1.1 MB (1067304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4ea09f5325a012bd41c5f898dc59f46d33e5b7149df0f2c51d095fe12647df`  
		Last Modified: Thu, 16 Jul 2026 22:17:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792a28fcb3c49a674ab86b38cfbc37a85bae3d54dfc7432c683e95d5c8d49b48`  
		Last Modified: Thu, 16 Jul 2026 22:17:35 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7c8f1652b418bdde075aaac8cf6c9d3a666d66de73a4f7b84b1c4ebe4d0091`  
		Last Modified: Thu, 16 Jul 2026 22:17:37 GMT  
		Size: 45.8 MB (45779948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7133feda766dcad8df2d42c7d55314ccb65bc6b9a9a90627d0c11948b6942cbb`  
		Last Modified: Thu, 16 Jul 2026 22:17:36 GMT  
		Size: 21.3 KB (21335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fe164b40549212068361752605d07ed704c708fafb113567d74b55ca94544c`  
		Last Modified: Thu, 16 Jul 2026 22:17:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ece01e5c305931b289453102d0f61d0b6b95a2cc7209f022dd0c295a014dad6`  
		Last Modified: Thu, 16 Jul 2026 22:17:37 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf2fb47be56a72dc5f6d489ea6cf98f091678e53148e765ef2ff253687be356`  
		Last Modified: Thu, 16 Jul 2026 22:17:38 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e3c8a4b6a6a22715ce5e762b2635c127231ca426a690e0eb696c36847f6aa8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef5ef593301e39bdf0cea22330ed876118d7561e74bdf0aaccba9916382dabe`

```dockerfile
```

-	Layers:
	-	`sha256:bc1aa3b70049860a61f15366c08df82a64083f9c738d047848bb017e5aa1297d`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 5.3 MB (5324984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b662f273cc7488aa174c09dc1e5450b7af70c4d33c4299b1d8f1cae7a850f61f`  
		Last Modified: Thu, 16 Jul 2026 22:17:34 GMT  
		Size: 51.2 KB (51183 bytes)  
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

### `postgres:19beta2-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:231f7c71b0605e4393af6a3682f932cbc3eb025c89332f1c85e0f10bcaf51e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f5f3889b67884e6664e0ad0c6487c402ae53b33b8d7cb4ff4446a0ed54f18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 22:05:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:05:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:05:38 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:05:38 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Thu, 16 Jul 2026 22:15:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:15:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:15:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:15:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:15:19 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:15:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:15:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:15:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:15:19 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:15:19 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:15:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f849027d15dded595672ac8bc204f66527efed66309dd2dc838b6feeaa58ee1`  
		Last Modified: Thu, 16 Jul 2026 22:15:33 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54a92bb9ce6fe73f8f2bbd1f7c38a4598a237050faca06bc08008277329b6d8`  
		Last Modified: Thu, 16 Jul 2026 22:15:33 GMT  
		Size: 5.0 MB (4966117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc06eba6756dc570a4ad4919cb330ed58a045a7f2b3335e937157abce43f49`  
		Last Modified: Thu, 16 Jul 2026 22:15:33 GMT  
		Size: 1.2 MB (1218673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03308abc61a3bf2a8aef4016b0be6af6007b8e72397acdef2f4259edb22e0bc1`  
		Last Modified: Thu, 16 Jul 2026 22:15:34 GMT  
		Size: 8.1 MB (8066446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c080998d46c7d1d3d86a224c705f6cf369e629c93160d5b24e25fccce7d9c851`  
		Last Modified: Thu, 16 Jul 2026 22:15:34 GMT  
		Size: 1.1 MB (1137493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82b13400a5553af6ba0330497e0aa2524652173c335660e539f7e79276e8e0dc`  
		Last Modified: Thu, 16 Jul 2026 22:15:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bae03b85bb0bb5d9a25ce1420e5243145d573a1a46950046fe76d8f1ed712a`  
		Last Modified: Thu, 16 Jul 2026 22:15:35 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d2669c74aa039a4602cbd45467c123baaa32c23d08a1fa2489d1713ef0eb1b`  
		Last Modified: Thu, 16 Jul 2026 22:15:36 GMT  
		Size: 50.0 MB (49972411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2d61b39e87fe5107b73a396180df407f660b5418016d4d3720ce57c0c609f3`  
		Last Modified: Thu, 16 Jul 2026 22:15:36 GMT  
		Size: 21.3 KB (21336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0cac6109a897b27d02566543fb4f3356dce710084d5aebbb9a27f02227f5ec`  
		Last Modified: Thu, 16 Jul 2026 22:15:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafbbfbd1a848e170c890ab20f4c7c3097891a1266150f71c162542c1119f18d`  
		Last Modified: Thu, 16 Jul 2026 22:15:36 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee397a75e4b9374f1d8ecde546fe800f4ec2569272ffc95079dc9feeb04f115`  
		Last Modified: Thu, 16 Jul 2026 22:15:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:8b7835298447be9d6a906ec887cee7a5930c7f32b8cf58de633eb2c17658be6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c089aa7554fde2c30b878c6bec5d87faf638927715c3864513b7c3ac72f762d`

```dockerfile
```

-	Layers:
	-	`sha256:ff3c55177d2f0f534f7621d8245252f48952c59335d377d2cb3e1eab658325a4`  
		Last Modified: Thu, 16 Jul 2026 22:15:33 GMT  
		Size: 5.3 MB (5320325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7b15aac532b17ef0f719e37602e1b4b37d0c1fed81846dd2193dbc59f54853e`  
		Last Modified: Thu, 16 Jul 2026 22:15:33 GMT  
		Size: 51.0 KB (50958 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:f801b496a842aa8dc4f415b1439b53c604df1b01b30ae1320144e363879ea6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171496428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355594da5da32a45fad61914593f5a051079fd3bba3e61352905a9635e50748c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 22:03:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:25 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 16 Jul 2026 22:04:25 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:04:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 22:04:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:04:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 22:04:39 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 16 Jul 2026 22:04:39 GMT
ENV PG_VERSION=19~beta2-1.pgdg12+1
# Thu, 16 Jul 2026 22:05:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:05:19 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:05:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:05:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:05:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:05:20 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:05:20 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:05:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0f11c3fa21bd6ea7ff846319af6608f6b7a98b9d2add19839345cb7ef91672`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cff85f23d7e8ac2f819cd81be26ce50e3ba5861d2b8a7310b4ef3628d521980`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 5.4 MB (5368706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8650a1db3562c03fbc474af98cab889939fddcb2ef68a7e5813abd45eadbe70e`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 1.2 MB (1208229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd7f9cfb73225d4aa7546a73aa766d3d464d71c17ddde1e8a37d28245c52128`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 8.1 MB (8066548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b5161f4d2fc8e853672926287955951a22c71506725b1c8f84ff4be297a05f`  
		Last Modified: Thu, 16 Jul 2026 22:06:09 GMT  
		Size: 1.3 MB (1283669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3756e5140450944d47a9275044e39b0c4abc245a2aa64a9405f8493df19d1915`  
		Last Modified: Thu, 16 Jul 2026 22:06:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9482fc955135b0d37cce27cfba7ff5a8a768d59d2e721a63ac7f6f244b4a2b`  
		Last Modified: Thu, 16 Jul 2026 22:06:10 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afdba867e04376aaeacf4575fceca3a9a8a38e50c91ff304f77081aeccb1d237`  
		Last Modified: Thu, 16 Jul 2026 22:06:13 GMT  
		Size: 123.5 MB (123460676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd08b60bc64aad38457a091bd25473b9d007353d48808891f780ff57ae1cbe80`  
		Last Modified: Thu, 16 Jul 2026 22:06:11 GMT  
		Size: 21.3 KB (21335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbee26c6b826d12fd8818150e6ce6d787efda21442e286f23235a5eb608f53ee`  
		Last Modified: Thu, 16 Jul 2026 22:06:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b59139964612f5f9884cf7a93e12068d1f1419d0c20aacb56fca4db4056952`  
		Last Modified: Thu, 16 Jul 2026 22:06:11 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267a0ced5472c055b341e6c7459e42345ec80e4b7f68c3caade60be930ed44e1`  
		Last Modified: Thu, 16 Jul 2026 22:06:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:8b2b2fac58e174528546cc81fac71614aea1d2f3ce7ca36af6154a386c6ae3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6256518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa399ca2c54d453479d5e7c3b664629e10eb3a0d4b8bee37c58b11b5e2b6a68`

```dockerfile
```

-	Layers:
	-	`sha256:b3ba815869e7c167bf551fe419cf98a6f370fb6524948be422f9698e62bb9ed1`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 6.2 MB (6205470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:467a77c0d4d76c3f8d9fa42cd2cb28d0f36bc702633babffbaebb8ab3ec9bafc`  
		Last Modified: Thu, 16 Jul 2026 22:06:08 GMT  
		Size: 51.0 KB (51048 bytes)  
		MIME: application/vnd.in-toto+json
