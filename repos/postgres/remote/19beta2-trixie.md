## `postgres:19beta2-trixie`

```console
$ docker pull postgres@sha256:70005d4e7503d0f3970cdc2ddd01a48a0427b85be30a757f873fdd4cd49aa98c
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

### `postgres:19beta2-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:e19697f074c01e6aee3b19ab27e60e74fea835362ac8436988ede3a2ad4e2903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163670287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a551846dd88dac5ed4824d1e6ec506b1d6c1f43dc849e1da4d72aeb7d7e254`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:35:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:35:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:35:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:35:23 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:35:23 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:35:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:35:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:35:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:35:27 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:35:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:35:27 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 00:35:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:35:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:35:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:35:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:35:42 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:35:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:35:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:35:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:35:42 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:35:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:35:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ce579d92bca113491688c245c02f75422078893e7bb255fedba1c3efa1a556`  
		Last Modified: Wed, 05 Aug 2026 00:36:01 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b3b7f0e8be7797b12367e3cc7b679e27d95846db6312681b3a3d9042bbd846`  
		Last Modified: Wed, 05 Aug 2026 00:36:02 GMT  
		Size: 6.4 MB (6443011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639f0ce3e131f809f854cefd51e36432e563a617c49748706665301bec19b2bd`  
		Last Modified: Wed, 05 Aug 2026 00:36:01 GMT  
		Size: 1.3 MB (1256751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315760abeb8e2bfe3053cc54e224f9dba0f01b03e6812fa1a9fdedd099905e21`  
		Last Modified: Wed, 05 Aug 2026 00:36:01 GMT  
		Size: 8.2 MB (8203787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e27b4f5b34f42877aa5cbabc788e1c37e4b05075b81474a9a678b912e30d186`  
		Last Modified: Wed, 05 Aug 2026 00:36:02 GMT  
		Size: 1.3 MB (1311671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7feaef9a63ac55ef19305f85aa3756d19bab45d9c39c7c8b8b8f4372b876fdec`  
		Last Modified: Wed, 05 Aug 2026 00:36:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa43b3f35bd5334017e68e9a409de2c8378ba0703602f7dd96ed540629ffada`  
		Last Modified: Wed, 05 Aug 2026 00:36:03 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68997fae969f8ae54ba324d7a02d77d58987451c71ed0a3876d8cbc04fc1e181`  
		Last Modified: Wed, 05 Aug 2026 00:36:06 GMT  
		Size: 116.6 MB (116642020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e238ca19e583e0c54b617e441d491167fa855b910a8d78dd7ae409c9e2d233`  
		Last Modified: Wed, 05 Aug 2026 00:36:04 GMT  
		Size: 21.4 KB (21431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c6011fb7ada5974ff0859671ca7f3c43733d120d633a3adb4020931bfddcc2`  
		Last Modified: Wed, 05 Aug 2026 00:36:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4b926809a96d9ebff3de52f59076e75878447c78426e2d4ac0b89f30e1a4e2`  
		Last Modified: Wed, 05 Aug 2026 00:36:04 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c68a781f981dac9c817f2e0190c2b107f836d7f0031c27e909329a7df05328`  
		Last Modified: Wed, 05 Aug 2026 00:36:05 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:89e58afd55be9bc231a7a45b249b01fbec6d21c403c2628e112482a03b67c701
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6049248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539266ffaa511bdc5f5716cdeeb6b6804e918169046701a2f8eaac02873b41f4`

```dockerfile
```

-	Layers:
	-	`sha256:2ae97ce1559886edaf1fbe6ae23fa15e803e123491cc127f31548a82f55a890d`  
		Last Modified: Wed, 05 Aug 2026 00:36:01 GMT  
		Size: 6.0 MB (5997939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94e17bf055139ac8b9d9fc8a97c2d0b803db4f03a1ec2e927659d82ecbcf3632`  
		Last Modified: Wed, 05 Aug 2026 00:36:01 GMT  
		Size: 51.3 KB (51309 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:2b081bac36cefde205c86de25e8f1067db2a9fc4cef8503281ed992718829811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91999431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005a4e5369d5aa393fbae948b0e0b86483f4fe59aa2e3f21489729d44b756726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:29:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:29:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:30:01 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:30:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:30:10 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:30:10 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:30:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:30:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:30:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:30:17 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:30:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:30:17 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 00:44:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:44:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:44:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:44:29 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:44:29 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:44:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:44:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:44:29 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:44:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:44:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece1509748ed2e8948c85341f4ee62e8d3aa8c70305e65680f5031b956fcf88f`  
		Last Modified: Wed, 05 Aug 2026 00:44:42 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdce06484339a0af91bc9acb7f03d3cd34d494b69367d7bbb321000c42a708a`  
		Last Modified: Wed, 05 Aug 2026 00:44:43 GMT  
		Size: 5.9 MB (5932403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6021cc31c28fe781fc5148c3d0353017b88749f5189b691527e4f5d38126c3`  
		Last Modified: Wed, 05 Aug 2026 00:44:42 GMT  
		Size: 1.2 MB (1227503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44178e8feee6984d4fcd2e5674e04ac1b06e3a6b819e6fab754f6fd3b4f3a740`  
		Last Modified: Wed, 05 Aug 2026 00:44:43 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad573f4d840115a84ac989a8fc6c68b039b91d73b44cb66a59bb8a385655925`  
		Last Modified: Wed, 05 Aug 2026 00:44:43 GMT  
		Size: 1.3 MB (1317379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2811e68de498e2741bea2b7ca82727a9d94dd023fcb30435c36bffd5c4b06d61`  
		Last Modified: Wed, 05 Aug 2026 00:44:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d81eee577d6b118a00b065ba9a15c25a3f95f5ba3790bc26f58092bf6a86998`  
		Last Modified: Wed, 05 Aug 2026 00:44:44 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e664010c39050dc8c156c7747b7fe08ccfd8b59ecaa81e65c416faa4cda84eeb`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 47.3 MB (47330786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331b6a67eb6ea596961a8bec58592f091f6766ec66be8060a18ff799ec274a15`  
		Last Modified: Wed, 05 Aug 2026 00:44:45 GMT  
		Size: 21.4 KB (21427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db48317339f1d7d18774c5a30a5ed8cbf12f81a8e9a12e73b4d7227649171538`  
		Last Modified: Wed, 05 Aug 2026 00:44:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db96dde063cdb83115f7ee4a376fadb92c23c0d6d456e8f74d1e91aede6051ad`  
		Last Modified: Wed, 05 Aug 2026 00:44:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e91fd85bed6323675c0e719408f55e420022ee8a03bbe554dafdf2f48d26508`  
		Last Modified: Wed, 05 Aug 2026 00:44:46 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:8018e871cfab2b060edfc46bbed97404d585042892355b92113ff897caadd639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5179682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b1b28893955651c07007f3c9d8d559d7c50482fbe396fc98133d017ecc9dc`

```dockerfile
```

-	Layers:
	-	`sha256:b9ef222ecfb232060f55e1d93372f7ff52568bd9c7fb4a5bb4e5f95b3d0e1cbf`  
		Last Modified: Wed, 05 Aug 2026 00:44:43 GMT  
		Size: 5.1 MB (5128183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7e338b714ef44df51a581d104b480f79dc21e03a47c5d60d0ecc1b63d1d24d`  
		Last Modified: Wed, 05 Aug 2026 00:44:42 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:22fa9fed11e8d70776bf9653fca3abaac55ce0a4088a06732a2a293862fe9210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88283160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304cf65f7b03851a8dd12a1a8e02302c7deb259e32d78a3a48fa6f01ef36c80a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:05:00 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 01:05:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:05:17 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 01:05:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 01:05:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 01:05:24 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 01:05:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 01:05:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 01:05:30 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 01:05:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 01:05:30 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 01:18:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:18:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:18:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:18:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 01:18:12 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:18:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:18:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:18:12 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:18:12 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:18:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eac8446c2adb2b18a6ecb3d103a5a675ca697253271aca536da3abd8fc02a7`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a8d146175ddb3b75ccb53178d369c9b15e106790a54f91896a2baa0092ce85`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 5.5 MB (5497335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e96aab55fb4883a4ae5eeb886d60abe39f0e7eab6d9aed293066ad35a2b6cb5`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 1.2 MB (1222385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0a46acc359fc2d0409c42fc19176f0a7dc6017b1ffdb0a027608555e75c04e`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 8.2 MB (8204019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cc4799b63788094f3f662884648764e8de8e0cb692c6077bc265badfb4c5c4`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 1.2 MB (1172638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8f56445b7b19c6d94a0b2b3ff3598a6b214e8faf5403a75b3b8522d6422a39`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b549a666f51e6d4b0684f0c9f6a0b44ce07698edcb1494336cb23489053ade`  
		Last Modified: Wed, 05 Aug 2026 01:18:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69e48f613b4a5ad0e40a8f036dad3b59563ceb6141fe0c8305af1000ca98c2a`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 45.9 MB (45948118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0979941bc076b6d5b1043bd052b575c5011ee15fee3698e85ced019c4c6bce`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 21.4 KB (21446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea5a49f344c525261c7c7fa554e09e178d0a6cfa61496996d94bc11b6941c3e`  
		Last Modified: Wed, 05 Aug 2026 01:18:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ffd4ca671ea0d42cc5a9e300567c40f205f9726a839aca3c81505e54c5cbfa`  
		Last Modified: Wed, 05 Aug 2026 01:18:28 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497811f3043d07f0eaaf19396a2a6ce16a01b5c71a4888bb32d070278687c1a8`  
		Last Modified: Wed, 05 Aug 2026 01:18:29 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e2684d46b19a92cde217cc4b37c64e8031fe65a2d7e29aa63b86a177b5150671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8409d29a5d358a1322a4b00743db65931bc909ff705f4def88cb6e7ea6dcda8`

```dockerfile
```

-	Layers:
	-	`sha256:4f2bdd0b792f95d4f9b28b2117c9d36148787983759e1b1c503050c6f18ad9ba`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 5.1 MB (5127488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f35f031eb6323acfbdc8985fc7716a1619ce2dd3e1d76d795c1a5f6a3addc77`  
		Last Modified: Wed, 05 Aug 2026 01:18:25 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b3ee47e53b3f8f875f32416fd9a5244f7a581e63b44c399fcf798eb23a36040a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162251033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a133e4d7f7a628fb7e42ff7d1a1fa27386563f15b7a6db7621fd4d28781b5a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:37:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:37:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:37:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:37:32 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:37:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:37:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:37:36 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:37:36 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:37:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:37:36 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 00:37:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:37:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:37:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:37:56 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:37:56 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:37:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:37:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:37:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:37:56 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:37:56 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f631cc14cea107b01402852c3dc3348576af8219494e763f0605b1681d70403a`  
		Last Modified: Wed, 05 Aug 2026 00:38:15 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277ef9087fc708b216404091bf4abd8ba7cd1b5030ce1da1fba4d05e6882bd`  
		Last Modified: Wed, 05 Aug 2026 00:38:15 GMT  
		Size: 6.2 MB (6235005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1445a8d2abe1b0b0bd87607e9766f0ff3f0f376b53ee0d7c3d36b045abfbb5`  
		Last Modified: Wed, 05 Aug 2026 00:38:15 GMT  
		Size: 1.2 MB (1209590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4850794c528c3adeff9d963498f9c94cf2f55c551c048f1fc4404d4d9b406f9`  
		Last Modified: Wed, 05 Aug 2026 00:38:16 GMT  
		Size: 8.2 MB (8204007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d85738a3eaa68eee13f156ef638b26bf93fdcf08133c36fe50d234550caf3dc`  
		Last Modified: Wed, 05 Aug 2026 00:38:16 GMT  
		Size: 1.2 MB (1220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7af98d7cf61f2c1fb1a088bf5b195b15d930fc434368a7aaf7796959b79af3`  
		Last Modified: Wed, 05 Aug 2026 00:38:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745af3541557d8e55880b06ab29ab0bf0a83b731d70438a2e912702e11cd328a`  
		Last Modified: Wed, 05 Aug 2026 00:38:17 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bbcaaa6e96d539863ce4b5d997ba93d083504e30bb2b267ada27e14e75182a`  
		Last Modified: Wed, 05 Aug 2026 00:38:19 GMT  
		Size: 115.2 MB (115205920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2f908d94f31e238bb85ca650960415ca1770988309cb39b5fb8cfecec1618f`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 21.4 KB (21431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eda5d80e8a5a4fb71a3d44c16e7a918e5f70d1cfc3fa58f76b580c217e27da6`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c78434a21f7312a2687da790b399fecdfa934c8bb4c3acd188f07d79edf508b`  
		Last Modified: Wed, 05 Aug 2026 00:38:18 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57621bcba9abc0700cf6be280841c90d021059f29254cb55f544c8a37163ace4`  
		Last Modified: Wed, 05 Aug 2026 00:38:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e0a4f84cfd2cb2c6e134618024dcecc90b7570b6bfd565ce6315434a645393e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc41adc6ca33d854eb3003be84febd1c72e57bccc6a56306695797392ad5ec0`

```dockerfile
```

-	Layers:
	-	`sha256:aef66a95b1bef8cc20806159267f42fb90c4b21f55fcae8295f1d319716eb1d4`  
		Last Modified: Wed, 05 Aug 2026 00:38:15 GMT  
		Size: 6.0 MB (6004256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d80f8b1a3b16f49b729afd0ea9327575b0b79259619c4fd84862233d44b263`  
		Last Modified: Wed, 05 Aug 2026 00:38:15 GMT  
		Size: 51.5 KB (51540 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; 386

```console
$ docker pull postgres@sha256:91cb7776f7f308ded04bedd4484724195e59de0b1fb310285b6b0add01da32d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98187318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db69f74c9d489f27642e90bcf3cfa92fa59b382aede22bff104be4abd5984283`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:31:46 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:31:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:32:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:32:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:32:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:32:05 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:32:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:32:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:32:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:32:09 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:32:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:32:09 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 00:40:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 00:40:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 00:40:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 00:40:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 00:40:51 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 00:40:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:40:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 00:40:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 00:40:52 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 00:40:52 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 00:40:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acc59b071ecd060ec12de75bb0340e4a7b603b64e9a9153c7a6c76effa65d60`  
		Last Modified: Wed, 05 Aug 2026 00:41:03 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb975502f431d5f9497c33e0833364a053127e90f7e1e39070773ec6effeaca`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 6.6 MB (6631420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2d1ec164948e013f3fbbecf91d30b98a01d796fe73edb1a04ee7bbf25aa569`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 1.2 MB (1225890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00756c73f4e5e4731a4a5769823832507f0d2eaf086afcfbf486e94de97ab2e`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 8.2 MB (8204112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3848b25e409d0398b94e782f4e45958c0cdc57faa2302602d785a74148a0a45e`  
		Last Modified: Wed, 05 Aug 2026 00:41:05 GMT  
		Size: 1.3 MB (1308288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbdc4ffc9a0c2a8782687d5ac0778aeb0c2a3ebdb99cb81df0ff1f6ae7887b2`  
		Last Modified: Wed, 05 Aug 2026 00:41:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe25b772d2b2a063c6b8c13017903ca33cb6b8c005d45c57b48fe6e7ca1a609c`  
		Last Modified: Wed, 05 Aug 2026 00:41:05 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67634e794b7976e812b4be1853ab01e1d9d8102e56e44151c4eda8db0768871c`  
		Last Modified: Wed, 05 Aug 2026 00:41:07 GMT  
		Size: 49.5 MB (49489063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44b616f8495cdf83f729b4d35470f5956c1bec46c282c2e7415df8a8fefec84`  
		Last Modified: Wed, 05 Aug 2026 00:41:06 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bfd41fad53a4b6a6a2a9f00762ee26d42c9a02396d29252adc68b8870be6f6b`  
		Last Modified: Wed, 05 Aug 2026 00:41:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a534ab6ca0708f95f8ed2ffb49fde28a50b4e4fe2802ea3adc1921ce376e57f`  
		Last Modified: Wed, 05 Aug 2026 00:41:06 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f0c2783254e6ec1e142fc4caefbb66cba593509ac0a73dd9ddb7e8e0ec185f`  
		Last Modified: Wed, 05 Aug 2026 00:41:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f21bc92b7f3e3f93a3223f1b2d6ae154d7337df89f975221a0ef99a474f1b116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5174830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f21fb8e2f4773771ef987e9d7991ab8c696be3d03af672e5d287c6e5965069b`

```dockerfile
```

-	Layers:
	-	`sha256:ae1fc016fd1218cccd6c5f29a732d45ed103798e217937e0631b50ea154cc14e`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 5.1 MB (5123568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c28dd636eb0a55cb2ca61e86d3b65e90daaf19d3cd1b8ab344a55b6984b2447e`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 51.3 KB (51262 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:2eedad5dcc5ca86a7f96c4c5369e3cd01bf04e527ba40e671f6a826f7d62fe13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.2 MB (176174684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a3d97699fc665651a3984e1df0b751d9ccae3b3329e0874a801b33dd8553d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:08:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 05:08:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:08:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 05:08:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 05:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:09:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 05:09:54 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 05:09:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 05:09:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 05:09:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 05:09:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 05:09:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:09:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 05:09:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 05:09:55 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 05:09:55 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 05:09:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3846916550f018cfe33993b7f9e7dd5270071c23265ab42a5041620985b36c81`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36081eaa4e526775ea5b73541ecbf8cee639252b5797b761e2f4b7a9f54696d2`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 7.1 MB (7076742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b907106d2bf40fe1ee65b30a10fbb1862cd5bc540db3f938d5e5e5a2c91c534`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 MB (1214752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdac8ebc21b578869c6132422075e263a611b0bd6102aff8d9868182da98097`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 8.2 MB (8204037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224b54dd0f8a69a9169b45e682b6977200c26f882792de7d28c61112829a3e8d`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 1.4 MB (1394915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582055b833c5869c5a74a91e5025fc373936fdda5a472bc4735ebd873c12497f`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b521b9b7eacb8d458604e3590dec4f41c1f54542dcb193b970b524ec6e24db90`  
		Last Modified: Wed, 05 Aug 2026 05:10:38 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7e448c0c160de0075193c4a7dac76596ff7e62de70439b7f804f8a08c6c570`  
		Last Modified: Wed, 05 Aug 2026 05:10:41 GMT  
		Size: 124.7 MB (124650629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5957991b542260f27079c1a01c74a4413d8254a008676ddffd0463cd18b276`  
		Last Modified: Wed, 05 Aug 2026 05:10:38 GMT  
		Size: 21.4 KB (21418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825120a494cc4be18178fc722708295176b537c2978d9377fec6b84fc96cd501`  
		Last Modified: Wed, 05 Aug 2026 05:10:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661c0017e7afa748982ef9f004bf3508254e15f822177433f537c6e912b6c48f`  
		Last Modified: Wed, 05 Aug 2026 05:10:39 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c77d57f41a2c1a7362d64635722bed4fce720c2f91c6040ee91c71a1e98557d`  
		Last Modified: Wed, 05 Aug 2026 05:10:40 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e3488b7edc17fac474407c7304b977376b463f3e130ede9a5519c64eb6447505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8175dfca3082180e253dd71845d8a63969c5658569527bb5da7f6ac0d6297`

```dockerfile
```

-	Layers:
	-	`sha256:7191d97f5435173c24493584d420acb650afad5992927adc7f6dcdd1b4ccd8c3`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 6.0 MB (6004563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:487f67ab583042dc579a616067224826a5256631848f74ce928ccc772c8ab264`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 51.4 KB (51362 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:ff874c6fa74b6e4ca7792c9ccba20271ce65d9f9f720a1ea47a63a4a5c37818b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93374791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:286ed6739670c6ad2a7322ecb1ab011e1b75e8e2a9541874278486325a63defe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 13:08:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 06 Aug 2026 13:09:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:10:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 06 Aug 2026 13:10:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
ENV LANG=en_US.utf8
# Thu, 06 Aug 2026 13:12:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_MAJOR=19
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Thu, 06 Aug 2026 15:18:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 06 Aug 2026 15:18:28 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 06 Aug 2026 15:18:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 06 Aug 2026 15:18:28 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 06 Aug 2026 15:18:28 GMT
VOLUME [/var/lib/postgresql]
# Thu, 06 Aug 2026 15:18:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 06 Aug 2026 15:18:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 06 Aug 2026 15:18:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Aug 2026 15:18:29 GMT
STOPSIGNAL SIGINT
# Thu, 06 Aug 2026 15:18:29 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 06 Aug 2026 15:18:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8234640d76d9ee39c0850ea0ce2ff6e2bf02ab20d17fd49ce1d879a9bb1d2cbb`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95ae142301719c95ea9a0668becad9cca827c09dd16c07a451e87edd27b0daf`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 6.3 MB (6293014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea5606f6dcd7d25fb14aa15a29153dc194c311662e8698076744b7799a318f`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 MB (1202052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db687f06ecc62cd292a4f24aa58d78afa6ccdab55d0298b1d4faff8b63e72908`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 8.2 MB (8203731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cdc5eec12fb554145f0f0f4815fd0018039fb881621735263b0086e39c3c91`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 1.4 MB (1402398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417eef1f2a8721ba60c3f585f6271da959f6604a996f8f74d2577b42a344f77`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58cdaca0ed0e94f37aed2f774c1a88e9bd5af048fc301684e12e08c2f8ec44b`  
		Last Modified: Thu, 06 Aug 2026 15:21:06 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40271c668ece70d3fef3d717d26af2420b0cac141f8a375875d180d2358b8874`  
		Last Modified: Thu, 06 Aug 2026 15:21:14 GMT  
		Size: 48.0 MB (47963192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245aa7e832c1c74af5e03b9db863ac19f39eae56b3cb2e49a3b0b8ed7ba63c4f`  
		Last Modified: Thu, 06 Aug 2026 15:21:07 GMT  
		Size: 21.4 KB (21437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c72d0d67b2003e874e228e5225ac881e1d64715a3556bf237a6e292e0b3a533`  
		Last Modified: Thu, 06 Aug 2026 15:21:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c98610d63ebda5516399fbb10917844a94398f6ee9e58540f6f67e0007e5ce9`  
		Last Modified: Thu, 06 Aug 2026 15:21:07 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56ed117f4fec029adaacd90a4985e103e44be5e3e5a9b61db346a01f2d2ff63`  
		Last Modified: Thu, 06 Aug 2026 15:21:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3e8a4ee160a98a41ea5d8cfb381201ed4d246016bdfdb3fb03b798c7db40485a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5169821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e8b84cc15b2c7e504bad50773aaedc5f9528d335fe61b890ca2c2cc18eb355`

```dockerfile
```

-	Layers:
	-	`sha256:6db5b90a2f54fb62dd559321b272f56b14833ed14fcc2af68448b50b0039fbbd`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 5.1 MB (5118464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98435491190df405f1df38d7fd9f4100785d5f855ceac6cea206f8a4d4ff283d`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 51.4 KB (51357 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:5d2d470fd405f11ab3f5333424d48a9c3797c10bbb99c16bd2efdf8f414089d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178344216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13584b0a0e15eccb30d9cb49a3b3e4608127243fb59194fda52f2348e17ab4c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:46 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:45:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:46:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:46:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:46:08 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:46:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:46:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PG_MAJOR=19
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 05 Aug 2026 00:46:14 GMT
ENV PG_VERSION=19~beta2-1.pgdg13+1
# Wed, 05 Aug 2026 01:01:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 05 Aug 2026 01:01:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 05 Aug 2026 01:01:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 05 Aug 2026 01:01:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 05 Aug 2026 01:01:39 GMT
VOLUME [/var/lib/postgresql]
# Wed, 05 Aug 2026 01:01:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 01:01:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 05 Aug 2026 01:01:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Aug 2026 01:01:39 GMT
STOPSIGNAL SIGINT
# Wed, 05 Aug 2026 01:01:39 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 05 Aug 2026 01:01:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc5760df17e7eaea5eaff6a76c5bf439b8d2b4173f7590699d4d9447c462752`  
		Last Modified: Wed, 05 Aug 2026 01:01:59 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf525c2433051107ebc29acbe1f88ba17b6394da00dfa871d932ebcd83858ec`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 6.4 MB (6408481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250da161f668495ffeea56ef00efcf1cf1fff10e551548996eb00dbbcfc447ab`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 1.2 MB (1230239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62656c62de6d9fdfa2bdbebc7ad4bc81f4e5dca779332d3b6eadd2e1f51445cd`  
		Last Modified: Wed, 05 Aug 2026 01:02:00 GMT  
		Size: 8.3 MB (8259005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9705dc18dc3a00461b9f5733dd477ee48668e0b5cb9f7c908fa5336bb97dbabe`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 1.4 MB (1398240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fab28aa27a8f94d8a8d64077c7d121a383dfc878ff272a5821c6f76de2308c`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09817e32acad2e71e7765956ca2ef8292edf6602b71e3ffc34aaaad56c1f83f`  
		Last Modified: Wed, 05 Aug 2026 01:02:01 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe4ed2f6ccaa3ea928091f73d1f703f3c18b108511a5bc98ea686407bab7675`  
		Last Modified: Wed, 05 Aug 2026 01:02:13 GMT  
		Size: 131.2 MB (131169399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc54aa08ddc8ca3b3dd616ee33c1c8909a803c566d6a9316cfce938fec54d7d`  
		Last Modified: Wed, 05 Aug 2026 01:02:11 GMT  
		Size: 21.4 KB (21433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6946508ae8dc0fa8f68ac4eacf3e8e77c75dd0b92795c328d6e87b18d2ad4d`  
		Last Modified: Wed, 05 Aug 2026 01:02:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdf382cf7a8af2758d28e892cf6e7e9d1cbe3ee470fbb4a2de3e705ef658229`  
		Last Modified: Wed, 05 Aug 2026 01:02:11 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4495629c3056dd7a655a836b9ef6f9c66c53b7c12a98f03fa8de1b87aed8e611`  
		Last Modified: Wed, 05 Aug 2026 01:02:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2d9fd95a7b27e6825c5710960163491cff01fe7c2bf8d2863f628f3cb5adbe74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6065919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57091ded64404c9395b5921b0fb109207b7f0cab220ce00676a051e7be19696f`

```dockerfile
```

-	Layers:
	-	`sha256:02fb9f530b775400d71f81705e54e0901ba828cb32d2e5c00b7f5fcf745ee1f3`  
		Last Modified: Wed, 05 Aug 2026 01:02:11 GMT  
		Size: 6.0 MB (6014609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634a183f4802702ec88e6be4edb64d9cc321f3cbd0f77e361ee1f4ff7f0a7fd6`  
		Last Modified: Wed, 05 Aug 2026 01:02:11 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json
