## `postgres:14-bookworm`

```console
$ docker pull postgres@sha256:a389ed49344afc8f4444efd4eb512965df07aaa6ed84b239b54a23246e9fe347
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
$ docker pull postgres@sha256:819fe383d809a6fb33fbb0c3ea49da673c3b00c62b3f63f4a0c63928a204e2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9de575ce661e951710dfbd9e860d66f9361e50c35cf511c20ca38b19e3a540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:31:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:28 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:31:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:31:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:31:32 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:36 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:36 GMT
ENV PG_MAJOR=14
# Wed, 28 Oct 2026 01:31:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 28 Oct 2026 01:31:36 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 28 Oct 2026 01:31:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:31:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:31:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:31:48 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:31:48 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:31:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24030aab72316fec4009362c9c5c5a9cc865ea7ae9d1ed3c2e60e41150900bb`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd19316dc5e22beee1ccbeac05a272d7e813322783035216c2edbadb04a1e81`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 4.5 MB (4534252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97aafecf21e9e7ce36cd6ae2040de0870ed98637074fad0a9edcd653f8db0a3`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 1.3 MB (1250031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6157e60b97699659dc49df85c57487db3ed1d19d9191872b5517ed6654999c1`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 8.1 MB (8066408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ec22221f423e7c9ae870a375ebb1194a86ce696b8998de43aef8138852019d`  
		Last Modified: Wed, 28 Oct 2026 01:32:08 GMT  
		Size: 1.2 MB (1196421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa3bf9da6510033e5a09c5baa2a07a82f9a9a8f6af946a55d3130edfaadddfe`  
		Last Modified: Wed, 28 Oct 2026 01:32:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610fa56e39e56b8d272fa6157c961c3dd41a794683820a91ba3dfd2f86c0c194`  
		Last Modified: Wed, 28 Oct 2026 01:32:08 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8103806e3e4f2c372dbefd09c119a9c3f8216e82e4d3df6312fae0dbdba55b74`  
		Last Modified: Wed, 28 Oct 2026 01:32:11 GMT  
		Size: 108.7 MB (108667597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b53f84ffd26cdf5245d34f02b1925c5d588b3fd2fc0eaad99e951a1f0dc5006`  
		Last Modified: Wed, 28 Oct 2026 01:32:09 GMT  
		Size: 9.6 KB (9577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4837889764750f024d45c214732370aec84e1db642a6c352b53ad734e7863b25`  
		Last Modified: Wed, 28 Oct 2026 01:32:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9038968d6e28c8bc347620b26d322d8cc757fc0fd227136954ce337cbe77e002`  
		Last Modified: Wed, 28 Oct 2026 01:32:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed55e8bec30e2d62b82ddbd2dcb5a0c17d8738d2fcbf9444c4c4e7d6c4e13d09`  
		Last Modified: Wed, 28 Oct 2026 01:32:11 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6421ea403c73a157ccc5b18009e59e872b6e9e3d5a26dd6e7dab50a0259a4f`  
		Last Modified: Wed, 28 Oct 2026 01:32:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:defc527021c5ca03012478025a8573dae035a423155316c60724b93858ea26b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5847680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb060af48f22bf4a5e8143819cb9cb6e1d3405c96cb8a85cc807585b398d1028`

```dockerfile
```

-	Layers:
	-	`sha256:8168dbba8199e05e1ce8a83e78db7c67b2febf78f95447bf2862abae3c8ec619`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 5.8 MB (5794385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c8c66bf2799a32fecee0d345ed8752d7c323008a3e3cf0c1ae4ce28610b7b5`  
		Last Modified: Wed, 28 Oct 2026 01:32:07 GMT  
		Size: 53.3 KB (53295 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2bf01e0cfe942bf8265eee53b44bdd803c5854d116d6981913a8da97c17f0999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79915899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780682ae39c6cc84ce8c8526595f19314f7e22eda200712982eaee24e4e02a0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:02:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 02:02:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:03:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:03:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:03:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 02:03:08 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 02:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:03:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 02:03:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 02:03:12 GMT
ENV PG_MAJOR=14
# Wed, 28 Oct 2026 02:03:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 28 Oct 2026 02:03:12 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 28 Oct 2026 02:25:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:25:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:25:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:25:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 02:25:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 02:25:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 02:25:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:25:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:25:50 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:25:50 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:25:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41abdd87b9ebb6f644ec2f9006476aa75cc5f6705fd11315ee5f1b2be8975498`  
		Last Modified: Wed, 28 Oct 2026 02:15:13 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b49a1a586283b9dffec1496b0b8cc52a22e4a8701f9e6660b19d998c0a8c97b`  
		Last Modified: Wed, 28 Oct 2026 02:15:13 GMT  
		Size: 3.7 MB (3742693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8a80ec1d25c7fbecbbfcf36d529546bb88839efa915ccc6f7309ec36d27b34`  
		Last Modified: Wed, 28 Oct 2026 02:15:13 GMT  
		Size: 1.2 MB (1216653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3835ae5783e4797a7d7b48f1ef93b8ac9df54a7cab246cd852dc6156722ce39c`  
		Last Modified: Wed, 28 Oct 2026 02:15:13 GMT  
		Size: 8.1 MB (8066507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c1e209b0a94babe130b3a7259f38a35eea49657bce9f61a8d75028eb7c62e8`  
		Last Modified: Wed, 28 Oct 2026 02:15:14 GMT  
		Size: 1.1 MB (1067344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5d0b7b16b95af51994cd2a3c693dfd39aaad52ff2c54e449df06c5b2b6f41f`  
		Last Modified: Wed, 28 Oct 2026 02:15:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ca965b441383a56380c316fda0c3b5fafef3d2a6f22852aa7c51fcb6167ae5`  
		Last Modified: Wed, 28 Oct 2026 02:15:14 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16159b2b49bd11f4cfa5fa41bd75edde1194793093480085e5efad38de4f3b2`  
		Last Modified: Wed, 28 Oct 2026 02:26:03 GMT  
		Size: 41.8 MB (41841144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377622bba109afd4044388b63cf803eea6e07e994eebe6af8ae9d7d84bde19b1`  
		Last Modified: Wed, 28 Oct 2026 02:26:02 GMT  
		Size: 9.6 KB (9575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c169e391cc01aeaee2835a4d934780dc94710e68d71202cb1504f13ade342d0e`  
		Last Modified: Wed, 28 Oct 2026 02:26:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686272c8473f3c59e04ef33f613b085e75ec5f56adee145d80f3a7947c893094`  
		Last Modified: Wed, 28 Oct 2026 02:26:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a718b437dff35524514fe290cb07072b4d67927dee767103c1dc0b4fbbc3b104`  
		Last Modified: Wed, 28 Oct 2026 02:26:03 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16424678651aa885147eaffc1b37d4bd546ff63bd7e5651280f1ea9a2d09585`  
		Last Modified: Wed, 28 Oct 2026 02:26:03 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:eac069c7ef22b06fede7d3e0f06f332428d56533a69abcd88b5cf682d2b87c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e5b249121ebf3bd4d8483d7975210e96b227fa81b8b9c6944f3d078424ccea`

```dockerfile
```

-	Layers:
	-	`sha256:1a7fc3e0b39b76fa4bc42d32da9f2d0412ac760473a8d6afec7eb3f5d32ca197`  
		Last Modified: Wed, 28 Oct 2026 02:26:02 GMT  
		Size: 5.2 MB (5202743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05e777d9927975381c24688e0cc366764e3868264e1da5e88495a871b5a98f63`  
		Last Modified: Wed, 28 Oct 2026 02:26:02 GMT  
		Size: 53.5 KB (53497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:019ca8f65034a7dd36a7e46e855d441c61098051c47d77bf048803b8b48ecd62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (150006168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be84bbf0613b996a027f9d5417069cf0d72bbdb8fff74b030ccdbd0be95b2bb0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:34:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:34:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:34:36 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:34:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:34:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:34:41 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:34:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:34:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:34:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:34:44 GMT
ENV PG_MAJOR=14
# Wed, 28 Oct 2026 01:34:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 28 Oct 2026 01:34:44 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 28 Oct 2026 01:34:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:34:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:34:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:34:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:34:58 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:34:58 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:34:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dfa9bf51091e0d66cbdb0064f0e3e0564cbddd2fb14522b5a441e36c50f487`  
		Last Modified: Wed, 28 Oct 2026 01:35:16 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a009acbd4978113cb9b89bd80ca6a13ccfb89ec35546533ea0c460f788042010`  
		Last Modified: Wed, 28 Oct 2026 01:35:16 GMT  
		Size: 4.5 MB (4519547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d47704d0f4ceec41991bd508a2373f50ec63e9b948c5cd6c78f954c17d6e229`  
		Last Modified: Wed, 28 Oct 2026 01:35:16 GMT  
		Size: 1.2 MB (1203817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8035427c2fc3a0eb768ba5f1df48f71a3bd4e63e7f55d9390ac6ae1158e3006`  
		Last Modified: Wed, 28 Oct 2026 01:35:17 GMT  
		Size: 8.1 MB (8066466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e015068ac0c2589e351b900f4f74f0def152717420584c192c0f5202ee075d`  
		Last Modified: Wed, 28 Oct 2026 01:35:18 GMT  
		Size: 1.1 MB (1108985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141562ff2c4982bbb8fb4728f8adf1362ce1bc644454aa9e4a4892909f163b44`  
		Last Modified: Wed, 28 Oct 2026 01:35:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ea4b28e05f81f41357fc212f5bd40af6d5cb213792d277dd200d9021cccc18`  
		Last Modified: Wed, 28 Oct 2026 01:35:18 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7851b71e5b1741742e34ef958a19f99377588de816e5bd0f179bf5b4e4b229`  
		Last Modified: Wed, 28 Oct 2026 01:35:20 GMT  
		Size: 106.9 MB (106948808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6213cd846e11df5c88480211e4e914ed16b1bac4be5ee4e6f88bc968431ea1f`  
		Last Modified: Wed, 28 Oct 2026 01:35:19 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e427b3a2d928efd2969d7a33c4d508ac0120a516d0c6b9bb351d556a567d2c1`  
		Last Modified: Wed, 28 Oct 2026 01:35:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fe318870108d945a487d1b2feaa4729dbf441bc3502f429229068cd709ed06`  
		Last Modified: Wed, 28 Oct 2026 01:35:19 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad0333ea4228f9af4ccbad5a60529962f6c76a6deeb0f74d0f45653b6c7a86a`  
		Last Modified: Wed, 28 Oct 2026 01:35:20 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fc374e8d995abfd014d4a4f4d386b9d91395b6e5e6ce2048bcf38711d31f25`  
		Last Modified: Wed, 28 Oct 2026 01:35:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:40a4038b18e1dd5fd41e2be21d5b83b8b8da346cff4ed72ed04edb4c7ef1caf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5854237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8d554006b36f7223bbb1b0b3c0c667e3e343912571b1c11f5fe954147e9344`

```dockerfile
```

-	Layers:
	-	`sha256:6f98314b896ab5913159ca6ecba5ab8442afc8e4a7cc026162b76459523d5374`  
		Last Modified: Wed, 28 Oct 2026 01:35:16 GMT  
		Size: 5.8 MB (5800696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba518ec2d7196c6681827caee73d647bd48a724636fc9c86f39d6b2c2805d34a`  
		Last Modified: Wed, 28 Oct 2026 01:35:16 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:4ccd28fefdc74e6e2a40377b573ffa7b6b55b8b00d913d93e321d66de48c80aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90322712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a60dafc235905b842b4a2d522f9880b38e3fef9e9582571151f1dfbde8c35c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:30:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:30:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:30:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:30:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:30:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:30:58 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PG_MAJOR=14
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 28 Oct 2026 01:31:02 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 28 Oct 2026 01:48:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:48:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:48:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:48:21 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:48:21 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:48:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7530acabf3268dd99ec8af0c5f9b80587fc6fc8d4778b7aa8c201ccfb62eed2c`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0e3b1f5db02cca7c15d23cd552cb6f1626cf68a843ccd30e2655671c771bbb`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 5.0 MB (4966126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35d507f9e2613c13f1ce0e05b9ee96d6336a0e9c9928a6a64f7e2fff9fa0ca1`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 1.2 MB (1219040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851aa100a79128188cefe463e3729a6277528bd4268c6cb5e07b28e9909be620`  
		Last Modified: Wed, 28 Oct 2026 01:40:25 GMT  
		Size: 8.1 MB (8066499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ef39bb77a94eb470d82db275f3743da636515d3db4027f45499baac5c510b4`  
		Last Modified: Wed, 28 Oct 2026 01:40:26 GMT  
		Size: 1.1 MB (1137503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2493ead6e7dc5397edc8d8c3bf6ac650242a57afba183398371e800eaa51727a`  
		Last Modified: Wed, 28 Oct 2026 01:40:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2983cc956c61aa305ad415dfb8a60cb3138960b9d9d27c3bb9c71a682e65f841`  
		Last Modified: Wed, 28 Oct 2026 01:40:27 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5016a63f23c1475aabc609740acda59e770f623d463b50b20a2e921fd6fc242c`  
		Last Modified: Wed, 28 Oct 2026 01:48:34 GMT  
		Size: 45.7 MB (45674164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2de21705a53ee028d717bb48bbb8e8471d72794d4a56d7275ed867aa0a2e71a`  
		Last Modified: Wed, 28 Oct 2026 01:48:33 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70dccda9c525b38935cefd66795dcc9004a9af00c3ed2801d2f0c1b396526e7e`  
		Last Modified: Wed, 28 Oct 2026 01:48:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b985f2d209fa8bfd5747e71f2d0423fc0a1014fb76a976a1c9939f4c34c0cdcd`  
		Last Modified: Wed, 28 Oct 2026 01:48:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d602bcd1e32deff75ac64091dfea6969c13a9b2463bf4a4e1b31bfd0abab53a`  
		Last Modified: Wed, 28 Oct 2026 01:48:34 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b387c6ada882f74bd4ad288f7a8e84c3de7d9119b26e5cdeece163943d72f240`  
		Last Modified: Wed, 28 Oct 2026 01:48:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d1700391a8727cc9547d40afee8d04d5e1a7b5040d01d948cf7bf923ec77d85c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5251327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf6b00309ada03e5f421aa5d825103cc343583f4e7ca403502ec3a59796a3de`

```dockerfile
```

-	Layers:
	-	`sha256:8e5f630475dec9ba078881361568754cbdadd6c458ac545268db448f1407db8a`  
		Last Modified: Wed, 28 Oct 2026 01:48:33 GMT  
		Size: 5.2 MB (5198081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76338fbd78a5336bf3392cc2817e979f8d146c384f636b8dba80505c342bfa80`  
		Last Modified: Wed, 28 Oct 2026 01:48:32 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:e4b10d133f917c71a689c148c6033762c6fc7fe37e93b59b64d0bb154b81b880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164662399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f411f6eb2fa466804dfe7eaf2b982579a17be4341a7084441670f609182575b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 03:56:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 03:56:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:56:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:56:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:57:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 03:57:08 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 03:57:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:57:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 03:57:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_MAJOR=14
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 28 Oct 2026 04:06:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 04:06:24 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 04:06:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 04:06:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 04:06:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 04:06:24 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 04:06:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:06:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 04:06:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:06:25 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 04:06:25 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 04:06:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d30d354f8a1d61d7013d0d72a1196daa026c77d53c606a102b523152f9c760`  
		Last Modified: Wed, 28 Oct 2026 03:58:42 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d3ce1ef837adf678cc3684534d5e3008f77ab2c40bbe6f7887d9b336fce880`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 5.4 MB (5368576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aa2b53f7a65e7cce67298a85c0725200554b72f962190c554f9ca4e333ba06`  
		Last Modified: Wed, 28 Oct 2026 03:58:42 GMT  
		Size: 1.2 MB (1208873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3281a2583f2d405a082351e452da5112d8d27331a3c9ec04f0983ea8154eae06`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 8.1 MB (8066549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1012f2e13d8a48d1e57cd7b02f9a097da4aa65e62df8a62a18fa8c2b2c8d78`  
		Last Modified: Wed, 28 Oct 2026 03:58:43 GMT  
		Size: 1.3 MB (1283668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cfc56eb0e52f7162210f0ff7276bca6fb56160f45e6da75e52ab415119f313`  
		Last Modified: Wed, 28 Oct 2026 03:58:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e5b90a82f980b12f8f6ae4947d5c5b989faad4545a1c32f5817ddc4528cf91`  
		Last Modified: Wed, 28 Oct 2026 03:58:44 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e5f32be2ee76fbb3926798d7058e598295978a80c13569656bf64acaf5eb1a`  
		Last Modified: Wed, 28 Oct 2026 04:07:10 GMT  
		Size: 116.6 MB (116621291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd6e7c43e3cd5400e5b9beb905acbf1ed5f5573539a5a9eeca9520bcfc06115`  
		Last Modified: Wed, 28 Oct 2026 04:07:07 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9bbcafff8678503e7048ae9cdc5c9d3e6bed838daf5b84045a9dfe30e42d96`  
		Last Modified: Wed, 28 Oct 2026 04:07:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7022f16f19d521f9378ea768f1811cb1db0dad9152d2351664d8d52b4c3556`  
		Last Modified: Wed, 28 Oct 2026 04:07:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e89e90bea558b840033a1e24d377ad61962e6c5a078accceedb6b62e4048081`  
		Last Modified: Wed, 28 Oct 2026 04:07:08 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b23bdaa17e0860beb09756281f9929cb77d0ff95fb4e79757f7e0e04a8e621`  
		Last Modified: Wed, 28 Oct 2026 04:07:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1a6ca092a3204ea15383cf9af2e70218ee9055c458b432a60b01aa12d179c0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5855096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19041e296e5f2963c6f67063f810b73b8d3fd5d3eb042f3763e1afda3c25f181`

```dockerfile
```

-	Layers:
	-	`sha256:c6d77236b759947dfc66a5ce8887c4ff30bdf9cadcb527f04fe68db209fde56a`  
		Last Modified: Wed, 28 Oct 2026 04:07:07 GMT  
		Size: 5.8 MB (5801746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b374982800f0cc6257b30806ce62ca10520f88478edcf66c5a32dda6f8f8ad`  
		Last Modified: Wed, 28 Oct 2026 04:07:07 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
