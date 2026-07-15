## `postgres:17-trixie`

```console
$ docker pull postgres@sha256:39fb82e41109483c81ac15422a302500b4a753777b47f8431038703536bc6c52
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

### `postgres:17-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:51cf4bf24dcbfa31be362b076acdb51c3dc63afbd7e48d4eb95d09133e54440b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161210361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b6c71f16212610e782b9f0e7c97bbe78b2df814a25c367890f3f884931eda2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:34:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:34:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:34:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:34:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:34:49 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:34:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:34:53 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 01:35:54 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:35:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:35:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:35:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:35:54 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:35:54 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:35:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4acfb46d3d5f00706ed9663fcf2209721adf62cb9e41a180c1e9a0a80cf4eb7`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d024ad856ad0237f1cc0e0e4fe261f95e6706ba1503f5d5099c0ea5fd67297d1`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 6.4 MB (6443007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bbd971e0485081fac11d905a65eb7fa0e02511dd32af4e363b044bb6d627ed`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 1.3 MB (1256756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c071221d5dc780c1238feb145a25df810a1db10350ec99e119af0c9acc4336`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 8.2 MB (8203876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51faa586613f90af359864465ace7504abcaeebcac980ad568ecdcf2b37a7268`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 1.3 MB (1311661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c441fd0b5bdce2c1041d1738187804feee469bcacdd8dafa7af07fcd93b97f47`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866ec5c9355053e4e5ae153cf57e2b6fa4fa3825486c2ae33e29d9f41ab4fe4b`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910e546416fc12c6382a2a87f0995e38d2328d2627c0e37effbbef7e29ba487a`  
		Last Modified: Tue, 14 Jul 2026 01:36:15 GMT  
		Size: 114.2 MB (114192753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a803f1141026bb3ad4e7610b335e2b0c4325ebf47c53f0d440aef8a063892d1f`  
		Last Modified: Tue, 14 Jul 2026 01:36:12 GMT  
		Size: 10.4 KB (10392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994a951e60eb2cbe8261ebe4931482ec4464fc5781cc1a18f19dae09627557be`  
		Last Modified: Tue, 14 Jul 2026 01:36:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ff9f94702fb42bff2cfbbf79de4cb891941e5497b0e0d0f578ab5e64593517`  
		Last Modified: Tue, 14 Jul 2026 01:36:12 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638c6bcd502bc0c6616d165c0022c0ecfb6321b4377b57e7274ecdee9dbd29ca`  
		Last Modified: Tue, 14 Jul 2026 01:36:13 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab57dfb5e23cbc2e907b8b2116e03af630c20e0db18d1b72d0c664d7c3ee7a4`  
		Last Modified: Tue, 14 Jul 2026 01:36:13 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:b2874447f8aaca43ef6c8644eff30e3263a4916218a21a0d50b44f99ee810360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5780751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb833991c74e35361b84df9034e3347c1510ac238e286cdadecbd28088858d2e`

```dockerfile
```

-	Layers:
	-	`sha256:c67c6dc4172ef4e80a8e6c4bbfe6448c47f5b4d3de4d2cfe8311bb415ab782fc`  
		Last Modified: Tue, 14 Jul 2026 01:36:12 GMT  
		Size: 5.7 MB (5726882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a698e0d7e394ee159166211acbf9de370d9a47eff77166340ff7a51a760daa79`  
		Last Modified: Tue, 14 Jul 2026 01:36:12 GMT  
		Size: 53.9 KB (53869 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:791d6d1df5b7be67464eee07f54c730b877eeec3cda4eaeea8699b9cd79aeaf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155233185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc617ecd3d93e77bd7f3f031c1bf619264e33b95762310bd37d504e319bc86fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:50:51 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:51:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:51:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:51:22 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:51:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:51:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:51:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:51:30 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 01:51:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 01:51:30 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 02:09:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 02:09:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 02:09:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:09:07 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:09:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:09:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea216590455f6a0ebfa0ba2842e9662c5679656f3b2a73673cc618253126ca36`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1805aee603691694f152532b5b6954907d8de6dd86d11cfa11f38119ace209`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 5.9 MB (5932404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f18325f44fa015833f61304d2e27709947dd6d188b23e84da4d4c99e25e3781`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 1.2 MB (1227478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ead4a8adc4a33872fe3183fd4023e598131217d1cbac609eb8c9a42d644e171`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 8.2 MB (8204332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38344a202303071ad81f30f4dcc454f37b4dde237c52a1b652ac1b9ac02310f`  
		Last Modified: Tue, 14 Jul 2026 02:09:27 GMT  
		Size: 1.3 MB (1317375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b56cc60c6cb582770505b6362f6ee810a810b8fdf14fec49c175845cbd8f5f0`  
		Last Modified: Tue, 14 Jul 2026 02:09:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cfb3edb2a569b8df9ebf9891ed4ab86854c1f81a8e1f4899d4140855fdebf3`  
		Last Modified: Tue, 14 Jul 2026 02:09:28 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6273b026cdfd6c6b042c51c8ff6c91db76d83eb615998a4c81c861ed5b577b1`  
		Last Modified: Tue, 14 Jul 2026 02:09:30 GMT  
		Size: 110.6 MB (110575379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b226e72d11d0df2735b8c155fbe5579864ca7cb889eb078b254ae3dd417d3`  
		Last Modified: Tue, 14 Jul 2026 02:09:29 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650345865fc72bb64e176b37abcac599163051a0b717218ef50d4dc9c411fd1e`  
		Last Modified: Tue, 14 Jul 2026 02:09:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33f5d4510ed65f42036d297314a6300fb662097e97f8d2815b9247ecc02a6bb`  
		Last Modified: Tue, 14 Jul 2026 02:09:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afb978470182932b7613d3147360e184d00f91025b1a1ce6972b6381da51930`  
		Last Modified: Tue, 14 Jul 2026 02:09:30 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6645ab5ee36fe3fbb0c57740b2d183e3fb1607231cb8c62bc0821e9c25f8040`  
		Last Modified: Tue, 14 Jul 2026 02:09:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:5d6a4a44b9ea606b53c4ae38bc958ba7ad03563183ee6ac81e6d2bf0e4780a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba359aba86e0f02a3fd56155be9693499cf13ac4743c3f0289d58ce0050c7361`

```dockerfile
```

-	Layers:
	-	`sha256:ad1bd15d4f67f53d29d0e05d98ab3f90e1a68774c3d317ff8bc1efa26138ecba`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 5.7 MB (5741802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7073a474741b9e455244eb261ad1fc1f83eb8c6cfd38f6de35407a7154128f5`  
		Last Modified: Tue, 14 Jul 2026 02:09:26 GMT  
		Size: 54.1 KB (54092 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:da40ea46db578d6b6a8bb7df399d88bdecd2a30f94eff489208024265cb1bf33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150242487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d34cc20228fec870039fc578cb1b19a80bec795f45a19c8f5e2efb32622c5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:52:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:52:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:52:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:52:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:53:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:53:06 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:53:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:53:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:53:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 02:22:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 02:22:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 02:22:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:22:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:22:36 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:22:36 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:22:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25d63e239954bc7c3bcb7462ddfaa24aeb7bb769191471995b8194b7552e80`  
		Last Modified: Tue, 14 Jul 2026 02:06:17 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d33ab7a35d3c58ea7cb9d09978bdf4e407f56c9ee63d06dc3fc743bfa59609`  
		Last Modified: Tue, 14 Jul 2026 02:06:18 GMT  
		Size: 5.5 MB (5497367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63eee8818e7d109dd92c48addc357d2e93e7428259f4c62e3a26ff5032bc0d68`  
		Last Modified: Tue, 14 Jul 2026 02:06:17 GMT  
		Size: 1.2 MB (1222392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6692d57694f290ddb7619e757ea52b1f2f2a34b8c708f890d0007f31167134c`  
		Last Modified: Tue, 14 Jul 2026 02:06:18 GMT  
		Size: 8.2 MB (8203996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909512809dd92fd75cc9dc18b55f31b3d350b4876ef8ae894c73740e1ef4d59b`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 1.2 MB (1172647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d419d4bf3a0f8a22ba8275a7a6bcbebc57497df70d2ba587111fb3f8fe7e458`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9c6ea4ec934a85a66f9fe38e8bc738431c2855efbbed1baf844446c24fcc7b`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7033aa614e740b9c280e121c6662b67c0f0257452c0f4d1ec37bc564c56e796d`  
		Last Modified: Tue, 14 Jul 2026 02:22:57 GMT  
		Size: 107.9 MB (107918197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2e59016ec1cf384e115d82502cbee4a49b6a43173e578c5dde99507fb1dabc`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 10.4 KB (10407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f39ba4ea6caca21dcab4f5400eabb31d2a9c12780b2c973f09f42110f90197`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3557e261d48f93a327688038a12fad378bd455f108ff7f0bc9caa8a6c373dac0`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2d223f34476cd592f6ddaeade6b01f7d32b8bd79d4fae8735efb20ddcf192d`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af64509a783ffb5583db53c6ef228788987b4999a1db63262bea24dd9cbeaab`  
		Last Modified: Tue, 14 Jul 2026 02:22:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:558a4b5a20340be5bd3d7b5e1f0645e33ac562d998711f1e7a405df6659517f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0caf278e893cfc97eab469dffd258d88c7e4cf1b9710243d00372f46ebdf3692`

```dockerfile
```

-	Layers:
	-	`sha256:2290b533b67e29763227bd77d59c55438c45117df5dc140de1d871ac7570b35f`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 5.7 MB (5741107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce7e0902d8584b9a4af7b3882c7251fa315d9a2a283891d0bf8d1900e9bc372a`  
		Last Modified: Tue, 14 Jul 2026 02:22:54 GMT  
		Size: 54.1 KB (54092 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a94949cd18e9c1de87d5feac6561899a6ca357f505af136540456f0358d48ec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159842852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10a2036535720770e9c54a2d1ad1410a9fcb5c85bb280e2230f2e74315499a64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:38:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:38:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:38:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:38:56 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:38:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:39:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:39:00 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 01:39:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 01:39:00 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 01:39:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:39:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:39:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:39:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:39:15 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:39:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:39:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b41062497e00d83ff09369cdf962ac14fea23d46b0083694ea89e5e6a052511`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513f3681c5f29e7c3c94b55ca8cf9f1ee1dfbc8d88fbb859fb5488d11bf6eb11`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 6.2 MB (6235015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be98f522686c8d7b0a84d9516f9262a3d073c568e96eb418bb731781e049b5ac`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 1.2 MB (1209614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010cfaa13f14a87c9991d21f361c2e16553bacf40bc9e6c7130b73506774c234`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 8.2 MB (8204057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763aea9e9664d568c210f9edc2ca30db02ddf7e059c9fbb240cf5db8096691c7`  
		Last Modified: Tue, 14 Jul 2026 01:39:36 GMT  
		Size: 1.2 MB (1220622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c790f132a0c56f4ea887629ecdea25fb8916fe4e27a5c1d70d49c99bb22318ea`  
		Last Modified: Tue, 14 Jul 2026 01:39:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb6ae44110e57996ff86735048bf8b28ac216d3b4514acbdd065bdc87398e7`  
		Last Modified: Tue, 14 Jul 2026 01:39:36 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d52d189f749b0ff9c21642896aeee54d818044a7aeb236881ae4cb8cbc352f`  
		Last Modified: Tue, 14 Jul 2026 01:39:39 GMT  
		Size: 112.8 MB (112808427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a24b5f1ce9570bf0c0485a12670c2b284b1abcb0f15095bdf4f522516d17aad`  
		Last Modified: Tue, 14 Jul 2026 01:39:38 GMT  
		Size: 10.4 KB (10397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85ba004a61738f14d43d2d89e816938c24f34c1943e6e234b9b152e3d20b5dd`  
		Last Modified: Tue, 14 Jul 2026 01:39:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19de7d29b1688bd985ac03490d7a267c555b6b0fbbfd993ee01c6dab2088e9ba`  
		Last Modified: Tue, 14 Jul 2026 01:39:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39640b383e734d39a5c7375c58b52f013da5b520cb3800b96bffb9430c9c544d`  
		Last Modified: Tue, 14 Jul 2026 01:39:38 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e22895ff6079e847d77fe98ec8685682be6e1fe12fb7f99392e4b1d7fe8a797`  
		Last Modified: Tue, 14 Jul 2026 01:39:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:b72e4beab9bf2b3f4c91a3f2a2cf54c9bac9ce64046dcbb7c80dfe848dcc71ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5787357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc9097aef70bb85579bd8a48d69f492336a9bb3fee870fd13909c658fad92f8`

```dockerfile
```

-	Layers:
	-	`sha256:77588a77dda6a41f87e5c34ec1e310da44061773288f19f6691de89ee29c2336`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 5.7 MB (5733220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9962d79f386b0f1c7f66058bef939391a87efbb6c168f5fc236886cff9000908`  
		Last Modified: Tue, 14 Jul 2026 01:39:35 GMT  
		Size: 54.1 KB (54137 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; 386

```console
$ docker pull postgres@sha256:9b9e72cec6a9b49f7a453f6f67153e05fee78fa5b0c72e2dd0c41839fa5d759d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170382997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf9ca99ccb9136bae62361f540cd56d206dbaef9f0b5bee0a97f7260350f308`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:33:46 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:33:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:34:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:34:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:34:08 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:34:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:34:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:34:13 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 01:34:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 01:34:13 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:47:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:47:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:47:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:47:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:47:08 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:47:08 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:47:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7132abd7573fb5b48e13aebf15dc9e8b919c671233902774757773fe0fea958`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad6186b6bc2cac79d9208f63bc845b7326664bc122ac8a8d7ab1f0d9f40248f`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 6.6 MB (6631358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f23cfe09ff0f8c6d64fca3df70cd4f9b30e71a8df8edf1cca1781d0ac2f0fce`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 1.2 MB (1225869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007e9614f120f24437e97897f00ec4c4cc7955fa3d7043a884afe9a733602102`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 8.2 MB (8204092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e48862299a864ab82a71318011d786841f59ff7a5605610241b96efb0d5991e`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 1.3 MB (1308273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e671987d9381432593514b08e398feb05e8615281fec8e91a19589283dc958d6`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cccfbc1ecf8a9fa774f7576e2be5c8ba07ad8d5d5cd99966a53e151b01ee51`  
		Last Modified: Tue, 14 Jul 2026 01:47:30 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02324faddcc419dd230c52b937fe0c9d6e1583de3ee58903dbd15287d67b67bf`  
		Last Modified: Tue, 14 Jul 2026 01:47:33 GMT  
		Size: 121.7 MB (121695703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a3e079092d68ebbde26d64c58da98473d23805d528c59281b246548d14a5fe`  
		Last Modified: Tue, 14 Jul 2026 01:47:31 GMT  
		Size: 10.4 KB (10391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3347af283db518aa4b568ceffba5e847785dfb0d02a88e9b105260adda8108`  
		Last Modified: Tue, 14 Jul 2026 01:47:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e3c07b4ca639be4dba8a6112c78c777b4ba412614e8c23bd6c7de9fd9200dd`  
		Last Modified: Tue, 14 Jul 2026 01:47:32 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc71148321608f2d52d560c7242baa68aeccf684bd2b35dd9ddaa0a5ab650755`  
		Last Modified: Tue, 14 Jul 2026 01:47:32 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39936779d63889a80e98d6840b5844076b66295fb417567456c9d2fb6bffa66a`  
		Last Modified: Tue, 14 Jul 2026 01:47:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e904311e2cd9da04f8304fb950ea8ac7c8f3cf90d8bb2bc482306f5618846fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5794510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65351639c072670785384daed63da7c833997226b0c20def2d827cc5181311b3`

```dockerfile
```

-	Layers:
	-	`sha256:09e7b21570e9cbdbd101154ba9d66ddd8be290a341e3711632f1912549f6ef40`  
		Last Modified: Tue, 14 Jul 2026 01:47:29 GMT  
		Size: 5.7 MB (5740695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2818fe3ec6b670b158b3f850d91ab574e69703443e9d00a22ef62a19880687ce`  
		Last Modified: Tue, 14 Jul 2026 01:47:28 GMT  
		Size: 53.8 KB (53815 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:486d82e6edda26a11049d29d3d0ed20082e2502388622dfa5a1b42b38eaa0309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173564273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11407d8aaeae829e1fa882e8d35444519ea99ef454fd8af0050410abe588c4d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:20:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 03:21:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:22:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 03:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 03:22:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 03:22:37 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 03:22:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:22:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 03:23:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 03:28:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:28:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:28:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:28:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 03:28:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 03:28:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 03:28:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:28:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:28:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:28:32 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:28:32 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:28:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528340e6f9137a79d29c8777ba2ba9215a876641305db658c688d460ee3c3e61`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888a6d1239980559746256dcf2b4214dc91a77c7e2392507444f8c468412956f`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 7.1 MB (7076932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f68ab846bf47a21e885215e9ca9a78b155aa46f0f7a3470a5547d0cca1af3ff`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 1.2 MB (1214846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1017c13d76d577689676ae4fed73ecbae76952f2c7a90a4165ba79d4aa80f2`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 8.2 MB (8204199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e57459e08a149487d72a73ebb262b09d7590b852bb3ad4cb88bc67d26a30b1`  
		Last Modified: Tue, 14 Jul 2026 03:24:41 GMT  
		Size: 1.4 MB (1395048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4497e3c37730dc5e3ae4a2065c72d51540f99e8317e366adc1c646e75370fde0`  
		Last Modified: Tue, 14 Jul 2026 03:24:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3b75633fb562efc4fb1531b0d87b76aecfa012fff9b263e9a445f8d2b8f2ad`  
		Last Modified: Tue, 14 Jul 2026 03:24:42 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e295dc92956ceaaa002665c23a6bb2fa661d6fb59fc30f84bf1be653214c6cc1`  
		Last Modified: Tue, 14 Jul 2026 03:29:23 GMT  
		Size: 122.1 MB (122050369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a994f5c00e09865b4a293b69c884d4d183e72daa8252b1ddf6e4d0f2a955ebb5`  
		Last Modified: Tue, 14 Jul 2026 03:29:19 GMT  
		Size: 10.4 KB (10391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d2f7ebe8c526a05b5c3d4efa10c1c6cbcaff4febe6f200280c72bcb2c085db`  
		Last Modified: Tue, 14 Jul 2026 03:29:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707a1fe094e37252bfa59001914e15ad6f5c306cb92fd0a6fd0621436fa5c018`  
		Last Modified: Tue, 14 Jul 2026 03:29:19 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2309647ba50f5eabf0fab4ed131503047c3ae4409b7ea9b635a40aaa4c08ad00`  
		Last Modified: Tue, 14 Jul 2026 03:29:21 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f4af2e70b042391e16639fe01ab3de6e8a108a4b02de2117a9170df6b9589e`  
		Last Modified: Tue, 14 Jul 2026 03:29:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:58cc46beb2839976324cbd9f65389d085028a9d4fb4c83af3873eb3520e911cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5787430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afbd884a2e6e2678ac11a3c1b4dc7435c685782456325b940afb26b5765152d`

```dockerfile
```

-	Layers:
	-	`sha256:ee745abffe77742c7bfc0e93830de8a51433c01f69932755d9533825cd1b8ad3`  
		Last Modified: Tue, 14 Jul 2026 03:29:19 GMT  
		Size: 5.7 MB (5733495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe66b72e418cb95250777d3f4ed4f3155a98619b596af1bcabe981002fc19e19`  
		Last Modified: Tue, 14 Jul 2026 03:29:19 GMT  
		Size: 53.9 KB (53935 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:40bcc3f1088577206ca92140f67f727ec9a1af47210042e82aa3b5a69a5be510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92258711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9febe1484a3b8738b020a14649f820f1fde3c3ec2b59c4eff6455efecea730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 04:04:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 15 Jul 2026 04:05:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 04:06:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 15 Jul 2026 04:06:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 15 Jul 2026 04:07:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 15 Jul 2026 04:07:57 GMT
ENV LANG=en_US.utf8
# Wed, 15 Jul 2026 04:08:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 04:08:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 15 Jul 2026 04:08:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PG_MAJOR=17
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Wed, 15 Jul 2026 10:32:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 15 Jul 2026 10:32:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 15 Jul 2026 10:32:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 15 Jul 2026 10:32:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 15 Jul 2026 10:32:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 15 Jul 2026 10:32:42 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 15 Jul 2026 10:32:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 10:32:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 15 Jul 2026 10:32:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 10:32:42 GMT
STOPSIGNAL SIGINT
# Wed, 15 Jul 2026 10:32:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 15 Jul 2026 10:32:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec99324b91a022f63379a702c52cfcc25131c21fa4bc21c72f7925e792a25cc`  
		Last Modified: Wed, 15 Jul 2026 06:20:21 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900f5cbf166d34914d29e677fc7643a1d365cac7134fe6df7460f6fc994080d1`  
		Last Modified: Wed, 15 Jul 2026 06:20:23 GMT  
		Size: 6.3 MB (6293001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3acfc4402bdc1ce55fba4f508b117180e5e873ae860f2d781efffdc0f614ba4`  
		Last Modified: Wed, 15 Jul 2026 06:20:22 GMT  
		Size: 1.2 MB (1202068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23a506d07e708aba1c3ce47a8d977e073654ab86b540bf10b5ca8618fdc4a1`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 8.2 MB (8203771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffe7f0f66d60c804e9e76a7b645cebb1219415c03871b063f9e070973826af1`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 1.4 MB (1402426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f1db52e5f1906a7ada49d7fa2ae7a13689b9fa9d95c0b66193e9b24ba28f3`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52866da3f27ac3ae4ae5e07561e8d253c155464a6f3ef616d0501fceea6cf778`  
		Last Modified: Wed, 15 Jul 2026 06:20:25 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49541c16349d19416c141bc94a67557673ff75436b4eb22c0888f18bd50f265d`  
		Last Modified: Wed, 15 Jul 2026 10:35:17 GMT  
		Size: 46.9 MB (46857830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae006de7d39dbb8834c44ddbf288e9f73a4728940b9949135b3df8688619a052`  
		Last Modified: Wed, 15 Jul 2026 10:35:08 GMT  
		Size: 10.4 KB (10401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f05edd0345457da439de1776da5e0e6c34333247a256a54e5145e80a30b320d`  
		Last Modified: Wed, 15 Jul 2026 10:35:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9820988c17d7b6a5739c5478b4bfa41e558b1fa77fdf78d46454beaffad90f0`  
		Last Modified: Wed, 15 Jul 2026 10:35:09 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e49b0d325a91d35460a205e233e49b86d27c82b9f04b31f62170598dbdfba9`  
		Last Modified: Wed, 15 Jul 2026 10:35:10 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac5fa47d21ef05c01de313ab4ba6d668ba6fdbd55f2f3b53be33effc3b5cabb`  
		Last Modified: Wed, 15 Jul 2026 10:35:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:42c1e6eceffcfae50f26c052136e92429a012b201d032020c228894dfe110fd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c0257636785ceea240a57d4500a3d2b144ddff782dadd776dd5d635515dee1`

```dockerfile
```

-	Layers:
	-	`sha256:b23db788b883d580781de9f98c0cad10297acc0f6f21b5b9e20790e1cbe04a0e`  
		Last Modified: Wed, 15 Jul 2026 10:35:10 GMT  
		Size: 5.1 MB (5084160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35edd79698e933a718c35ad2b707f37886533cf4ba877a422322708333acdfe3`  
		Last Modified: Wed, 15 Jul 2026 10:35:08 GMT  
		Size: 53.9 KB (53929 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:9c8e304d4ea07ea514576b95ca9e67100c0dd1f54095f7908bc926385f54f074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175776930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8880b2dbe35856741b3f232ab34ff3bde477df686904338853355bd1896d456`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:19 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:18:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:18:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:18:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:18:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:18:40 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PG_MAJOR=17
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PG_VERSION=17.10-1.pgdg13+1
# Tue, 14 Jul 2026 02:48:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 02:48:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 02:48:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:48:52 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:48:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:48:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855b7331f1fbb8f417d6d0cec55db043cb09185f547a4a01326538ce1d55268`  
		Last Modified: Tue, 14 Jul 2026 02:34:43 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579583407fabdd8df1e66802a45354c6ae7e64f714c4275ed9337b8f8d2e3239`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 6.4 MB (6408483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b90040b218f1f4137ae093a18d4eb36d94d2e437d7f74b8d9ef7c36b2b49fa`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 1.2 MB (1230232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330161dac0cabcdbaf45b68a077b3d925d213c6cc575acd934ed29e17f0ceefd`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 8.3 MB (8258970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5923c882816bb3f77d238e71dca5a11fcad03d2de41f892aee0c394d857e4`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 1.4 MB (1398242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc21e04e42b685d7582a09fa95d0658b14b84298ef4683b7803514c860347f0`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9343dc78628919543b56ae7ac7fa8cf7e809994f2dfef41900a11bf2d440ee94`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ddd2df03666d8981a02dfc1b4d4797dc1595c5177da96b189bdfeec80918c7`  
		Last Modified: Tue, 14 Jul 2026 02:49:25 GMT  
		Size: 128.6 MB (128612960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a7fe0885d2da48319842e362bb1536dcfd6d7ffcd93db7985881bd335d2466`  
		Last Modified: Tue, 14 Jul 2026 02:49:23 GMT  
		Size: 10.4 KB (10398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa4e904113d931da906ee4f43f5e00eca5aa7a157c7c8b0139d5643878f302d`  
		Last Modified: Tue, 14 Jul 2026 02:49:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7534ff3e8cfac5b546312024e54438c671a870b395876d78a96b6f28e3a8c`  
		Last Modified: Tue, 14 Jul 2026 02:49:23 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011a6048dbbf96365d5989aa30caee0a9e379ef0a3abc4056924703f579f92cf`  
		Last Modified: Tue, 14 Jul 2026 02:49:24 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35cf6baeab1889926a28bc4f277a4b2bc7ee9438d379466281ebb2570478db0`  
		Last Modified: Tue, 14 Jul 2026 02:49:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:8a49504c62b6774ea13f8855bcd2c0e91a55ff6cd4255bf97c513d54508875db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7c37c5b1d171dc3db5078143913d3f0d98640032ff6a674161706997b8266d`

```dockerfile
```

-	Layers:
	-	`sha256:e209cd992a1d1818f9d99d2d9e2af52c0c7a372709804c3daabef9fedb137105`  
		Last Modified: Tue, 14 Jul 2026 02:49:23 GMT  
		Size: 5.7 MB (5741833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:987b8f5cba018860446c5ad6a129fa3d001cae7edf6ee2ba44c314b356b97b91`  
		Last Modified: Tue, 14 Jul 2026 02:49:23 GMT  
		Size: 53.9 KB (53869 bytes)  
		MIME: application/vnd.in-toto+json
