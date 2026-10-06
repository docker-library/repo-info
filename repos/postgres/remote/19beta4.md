## `postgres:19beta4`

```console
$ docker pull postgres@sha256:ac6defcf9efc68957e21963d8dc2d1a6966544f3df59935dcc8deb5c296dabfc
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

### `postgres:19beta4` - linux; amd64

```console
$ docker pull postgres@sha256:cad363c0804f4efc8704a2e221ec35543d8a3301736e442ea116862d162d3203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163857478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90c42d136f7ccafee6204871aac55d98f10d94f83900441d5af2003d0b0ae4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:31:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:31:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:32:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:32:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:32:10 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:32:10 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:32:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:32:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:32:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:32:14 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:32:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:32:14 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 01:32:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:32:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:32:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:32:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 01:32:33 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:32:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:32:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:32:33 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:32:33 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:32:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79faf13a8736cc85276c252c657415ec229badd35328e771b9447b357fb44315`  
		Last Modified: Tue, 06 Oct 2026 01:32:53 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6456bfbf35e735a2c92b50a1c403926d7f2f62829bbca1e55ed7a80857e2705a`  
		Last Modified: Tue, 06 Oct 2026 01:32:54 GMT  
		Size: 6.4 MB (6442903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353db459ed129ded9f45189427479e2260878da309b84b4315edeb454b84572`  
		Last Modified: Tue, 06 Oct 2026 01:32:54 GMT  
		Size: 1.3 MB (1256711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f49de4fe2b8389931fd8794183304b30e526405bf90b10cbb9bc5db890f177`  
		Last Modified: Tue, 06 Oct 2026 01:32:54 GMT  
		Size: 8.2 MB (8203801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d1a2a3917c6f8e93f6d096bca01ec240493099e4443428c0a04b02596e8b38`  
		Last Modified: Tue, 06 Oct 2026 01:32:55 GMT  
		Size: 1.3 MB (1311673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715ea0948cb1abe40a34058279c45da462df3b324e5384f69dedb90c418b7583`  
		Last Modified: Tue, 06 Oct 2026 01:32:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486e8305f56fa48ac84a13c60fa9a5fd15408ee1fd4bb3aa4973ce4de50bd545`  
		Last Modified: Tue, 06 Oct 2026 01:32:55 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f160aafb77cdf0571add0dad6c45581f3bfd812e93c8e588bc382bfbc07e8956`  
		Last Modified: Tue, 06 Oct 2026 01:32:58 GMT  
		Size: 116.8 MB (116766584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b54cd3f6231ab15188b98c36dc1c2c740a568185c1cf0a3a1bc6662d15a3a9a7`  
		Last Modified: Tue, 06 Oct 2026 01:32:56 GMT  
		Size: 21.6 KB (21605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5b20f5362359c262924dc491ae10cc0f6538ac493de1cd8b291f11edb4d1b9`  
		Last Modified: Tue, 06 Oct 2026 01:32:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3213a9aa6013c98d344b61c565588f6f87cfcee366f1ae75561c11db66603b16`  
		Last Modified: Tue, 06 Oct 2026 01:32:56 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b504b5d8ef3f41ceb9839695d7dd95a12c522d95a435c3a0cc17416ee362114`  
		Last Modified: Tue, 06 Oct 2026 01:32:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:62eaf83e4f336f1e8c600445705dd9cd91fd34c13beb1c1900546bbd17117508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6054421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f9dd044535350ee56fc899b39c93a44f1c99dc40e4708725ebf4bbe8bd8642`

```dockerfile
```

-	Layers:
	-	`sha256:b6ec097bb37c23facc4e8dfe79279b7595faec84e6ac5331077c8741e962f57f`  
		Last Modified: Tue, 06 Oct 2026 01:32:54 GMT  
		Size: 6.0 MB (6003111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5b83ec05f0e7e7cc27e595158aa0920adbf26bee88e2da7e3a85099cc08502`  
		Last Modified: Tue, 06 Oct 2026 01:32:53 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e24ebb2665bbfb7e30eaa10c5bd242ef5b97e81b14dfa98ab1399b6908941e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92337422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a4f10620ad964b5fa48c0b24b2d6111cb11c688d76e027430cfff4fda211db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:36:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:36:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:37:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:37:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:37:11 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:37:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:37:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:37:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:37:20 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:37:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:37:20 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 01:51:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:51:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:51:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:51:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 01:51:25 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:51:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:51:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:51:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:51:25 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:51:25 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:51:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04f102abfb12d666757336674fe4c8f0075c2949c3307498a5bb0da563cdf4e`  
		Last Modified: Tue, 06 Oct 2026 01:51:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f764246dda6dac0b1a34ead1cb962487ab57e37b0da06f6a562f5122b8a00428`  
		Last Modified: Tue, 06 Oct 2026 01:51:39 GMT  
		Size: 5.9 MB (5932369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98acf255981f8da47ea07e138a14483bd27da7447fd4175dcf14215e95fa8fad`  
		Last Modified: Tue, 06 Oct 2026 01:51:38 GMT  
		Size: 1.2 MB (1227479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08610c4a8dd75ef63327bbeb5ac59483e20886efb5e82a91f01665089792ccfd`  
		Last Modified: Tue, 06 Oct 2026 01:51:39 GMT  
		Size: 8.2 MB (8204284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efeec4ab7edf3b89154ecb980895fd5e9bb6a1eee6768da1f0347a9888ca8eda`  
		Last Modified: Tue, 06 Oct 2026 01:51:39 GMT  
		Size: 1.3 MB (1317387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527881364ebe79475de27da04ec2af3a30ed8299ac39fa692e7d93c1f9008c32`  
		Last Modified: Tue, 06 Oct 2026 01:51:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182e8ece1b58c6d2c878f25c2f0e9a83b7e3df961da9fb242a934c8b9bb6591e`  
		Last Modified: Tue, 06 Oct 2026 01:51:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2fcd28aa99f91e6bb0a0716d73af8e8387bd18d4f79c558bf7399f7546776d4`  
		Last Modified: Tue, 06 Oct 2026 01:51:41 GMT  
		Size: 47.6 MB (47615969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e2eda471bdd0515dd4352b59cdf0849af78a42f26d42ebe97963ab75ec445d`  
		Last Modified: Tue, 06 Oct 2026 01:51:40 GMT  
		Size: 21.6 KB (21599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3baf9f9367949370cc110f18fa2fc78b48182f06e37d6893e9ca32bc2580a37`  
		Last Modified: Tue, 06 Oct 2026 01:51:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ba74629d035807472660426edc4bb0c7a9fbd23f8c1b53a9663c1c15eaeb6e`  
		Last Modified: Tue, 06 Oct 2026 01:51:41 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f8ac08710f0be2370d59bc16d123379b2c70a7a1125b8ebb0ec4bdf240820d`  
		Last Modified: Tue, 06 Oct 2026 01:51:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:3cb396f8b52144d95846a635140b32566d652edfa617b7d447f7957fe77aecdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c724f15e016d88ce8af1f7df67e2962a943f704263b2eeeeb6abfad33e8d563`

```dockerfile
```

-	Layers:
	-	`sha256:edb41561e775969cd7e2b310c24fcff269e11121ae71e16ba5b5b8403d21e643`  
		Last Modified: Tue, 06 Oct 2026 01:51:38 GMT  
		Size: 5.1 MB (5137494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e0e03afa8ac3c702cb02aa3012100976e91abd5dcd60afb12f6f86e3f656528`  
		Last Modified: Tue, 06 Oct 2026 01:51:38 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:57aa1b26abfeb98ec95dc8b9e2781b06542213a3bc700765e676a9074fe87db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88622241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa16a80a92ddc1c35d5073fad377bf457613f94be1a1b80d798c43f6ebbc2029`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:59:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:59:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:59:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:59:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:59:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:59:47 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:59:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:59:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:59:53 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:59:53 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:59:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:59:53 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 02:12:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:12:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:12:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:12:00 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 02:12:00 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 02:12:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:12:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:12:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:12:00 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:12:00 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:12:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbd4e6706ca0aa4d9c2af77b7ca94f499623f4e1e099aaa2afa81132eb0f597`  
		Last Modified: Tue, 06 Oct 2026 02:12:12 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38bf17b1bd8878d1903e6ce106d0cbdfa5ddb9a2849d005ba134eff5abddbe5`  
		Last Modified: Tue, 06 Oct 2026 02:12:13 GMT  
		Size: 5.5 MB (5497344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8cd406d8d2c8e1435c96e975191004292d6ac4c1e2f8345d181c7aa244c9c1`  
		Last Modified: Tue, 06 Oct 2026 02:12:12 GMT  
		Size: 1.2 MB (1222439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a66b03f43370f5ff38d3d11afefd7ac87dae6b74e296829c169d2dc72790b7`  
		Last Modified: Tue, 06 Oct 2026 02:12:13 GMT  
		Size: 8.2 MB (8204073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa22d116b64981f0f9a80cc5b5b3439acd8ab097dd38632aa8a6a7fca08060e`  
		Last Modified: Tue, 06 Oct 2026 02:12:14 GMT  
		Size: 1.2 MB (1172694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e55aee7f49251975369230fcab03495a96a448a9d1cc2a509e995f91263ea8a`  
		Last Modified: Tue, 06 Oct 2026 02:12:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1a7e54fae04c7a0f00b5e4a0cd75d4fa612275b9f1333ee6848dd8320cce6e`  
		Last Modified: Tue, 06 Oct 2026 02:12:14 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f2590ad902b687b779cfee6317a3530c513968a88283e1f09f93aea7ffe5b6`  
		Last Modified: Tue, 06 Oct 2026 02:12:15 GMT  
		Size: 46.2 MB (46235051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d992760cf525329ab2c39d0099b6e210c791a8fbbbfeb73a2148f4ddf4c9e86`  
		Last Modified: Tue, 06 Oct 2026 02:12:15 GMT  
		Size: 21.6 KB (21611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32ec6edecfe898c3ce3f906ef5f605116dcbed9d8d80f9a2b83104794d44098`  
		Last Modified: Tue, 06 Oct 2026 02:12:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2e6cf3e901fde325f8d436e3c2e0df5a7391e69fb9d0c7966795b63d187a0b`  
		Last Modified: Tue, 06 Oct 2026 02:12:15 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43bfa54fe5ac22d5999c0129ad7f475919a9be562a50827e8a14acdacef797e4`  
		Last Modified: Tue, 06 Oct 2026 02:12:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:b8da08731fa4353de8453a08929f20cec77c90474da7f91b18b22142f775cdd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c1d8dc1f2ddd2f9a39e51b70c12acec79db46821efb3511bfe849dc8cc79d6`

```dockerfile
```

-	Layers:
	-	`sha256:665f4fd2be3852f4d1c95b4ad4ab498f97dce746fe10d604860e6eaddb48db0b`  
		Last Modified: Tue, 06 Oct 2026 02:12:13 GMT  
		Size: 5.1 MB (5136799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2d3ca1481b2d5f44a12661854f0e4b4ff17e0bd57a1554b7f77ad15f89f6cd0`  
		Last Modified: Tue, 06 Oct 2026 02:12:13 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ef4dcc3e01d3c7c23b0820d8a4121c1ba958d2060c2d7120a38d29e618f12969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162443716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f68a8671742ebcaef51a1fa1a7a8c18ecc7a029a2358ac743adbf5ce3a8336`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:33:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:33:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:33:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:33:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:33:37 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:33:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:33:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:33:42 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:33:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:33:42 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 01:34:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:34:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:34:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:34:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 01:34:02 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:34:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:34:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:34:02 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:34:02 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:34:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c198165baabad46844783b7d10f136651b4e5c3fdafb3163d6c0839f4741904`  
		Last Modified: Tue, 06 Oct 2026 01:34:10 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fb83e70301bf576f5d2d8f908c78f69b5d3abdc2a689ac469de10d9e4a9610`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 6.2 MB (6234942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3255230b928cea838decb2662d6854ffd87416d140fd1739cb60ca94fc8dd3ec`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 1.2 MB (1209595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea04cce0f63c97aee3c32d2bb111000c4c194676e082379184e0669b7e81236`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 8.2 MB (8203972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a247306acfbcd714f4a27308b38787a41359ac5b212b2f6f16b0f121f49ba495`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 1.2 MB (1220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04885edb7e2a5c9d2d03b7be3cf88f30b94614409ab36e67f2da6fd1aad4c858`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa951b32e18fa413c91c0150cd0ea971b77a878a964dcfec5acdde19a4557f9`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd81619f9abe9b748773aff1c0f9c3ae7a8743815299e1fb4ecbef3fbc852ebc`  
		Last Modified: Tue, 06 Oct 2026 01:34:25 GMT  
		Size: 115.3 MB (115341849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b5b45e0c021eddc5b2c700c451cf1cd87f0e7c624834503752a1504edfa4b5`  
		Last Modified: Tue, 06 Oct 2026 01:34:23 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3840d766f2006db56fadfd13d84cd9804e33a78b63ed64799fb7ace180e6a8`  
		Last Modified: Tue, 06 Oct 2026 01:34:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dbaca5ff2530e6960841a5db29972eeb2395518dfd4ae5668f7f6c11131700`  
		Last Modified: Tue, 06 Oct 2026 01:34:23 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853a2499736ef482824288b4ab3239c5da6e7997fdd681b257c5d6ac1c32307d`  
		Last Modified: Tue, 06 Oct 2026 01:34:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:437096bfd07a730db78d528f7d541e13cf3b2e399094db7dda527698695d8ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6060968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7146df212cfeb67d8db80aeb9e5deb176e5868331eedc036c9e16490426f957`

```dockerfile
```

-	Layers:
	-	`sha256:1a40c05b1a6c2612c8b324f63751c8d857c12a9a60906c9188c2ada364d77095`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 6.0 MB (6009428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4be821fb5c85ca3ba1ede201ccf6e3b241e0d1228d5d46475257e8b0c962f482`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 51.5 KB (51540 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; 386

```console
$ docker pull postgres@sha256:8a892b6f0fcb0b747f7548445c4d6d27af64690d974cbc9b18be3e86cc256199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98524301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166f3685d87fd926e5995b829e0d5594ff7dc5db70720e99d1097d4d1f43f18b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:32:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:32:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:03 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:33:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:33:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:33:08 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 01:42:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:42:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:42:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:42:18 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 01:42:18 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:42:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:42:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:42:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:42:18 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:42:18 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:42:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69af55f4241f3538fbf950fd915543590b4146511428ed58f212a11388b8391e`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8868ef38d57d6181f41bbbcc2259d35dc9051bdb63efd7d3b78aeac50c31ab31`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 6.6 MB (6631406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b56d27e1b04e876f988249fbf31ac4a951d15b8b4f28b873177fcd15818b57e`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 1.2 MB (1225881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1db04574f223275b928900777164cd728164e7f598a1f300698bded6782563`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 8.2 MB (8204040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb256013ca0f448808c05d34920ed5311048260af648bd834ab12eea463c5eae`  
		Last Modified: Tue, 06 Oct 2026 01:42:31 GMT  
		Size: 1.3 MB (1308327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad640d0b371daa9d76ba58a46e56b9f5e659d4e38d341672f5162d8edc8e9889`  
		Last Modified: Tue, 06 Oct 2026 01:42:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2934d27eacf89c82206d74db1f25a898f71d14e0115224001a9f2c92b28f21`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8f3a420be7619aac88adb163834f90c10cbf439965ccefd12fecb44f7ca4d6`  
		Last Modified: Tue, 06 Oct 2026 01:42:33 GMT  
		Size: 49.8 MB (49768900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6d691ccf1f0efb6daccd356c07c84246b6b45b70cc3d783d865498f9310cdc`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 21.6 KB (21605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7c0523e49913b3c1497356904edf254cb06b413f1b61ed328687412816801`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cc89c010216881a28385bef6fa8c4110b8279959c87b7f74e70d67ac26c2a7`  
		Last Modified: Tue, 06 Oct 2026 01:42:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30134f049fe0531f44ca67a7daf85925fc0631cbc596c5e39bb901958c52069d`  
		Last Modified: Tue, 06 Oct 2026 01:42:33 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:bdae2e141518d2d440b3553bedf24214b8e774356e88fb5c70e6e1b25865f774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5184141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbfd19e9eba0dd6b2c4e40a14b670d256fcac56faa72148026dcd0ac7154f28`

```dockerfile
```

-	Layers:
	-	`sha256:61f0337c935336b7b5497afdf1484d497f0a8cb504624cb8a9273efc65494cdd`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 5.1 MB (5132879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70470987a3982a38dbc91f1fac1c78a5e20445d603d9844feb8da29481db5ea1`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 51.3 KB (51262 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; ppc64le

```console
$ docker pull postgres@sha256:75220b55985cd58806cf810d4747acb488e4c9b0d94b7c67230487bf2b03086c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176348181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df13291d93c95179ce64d70aeea7fb260474801b676ffa48e1e19e047d1aec8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:05:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 04:05:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:06:10 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 04:06:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 04:06:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 04:06:22 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 04:06:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:06:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 04:06:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 04:07:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 04:07:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 04:07:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 04:07:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 04:07:26 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 04:07:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:07:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 04:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:07:33 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 04:07:33 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 04:07:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df8b866399ed4f90de73a1bef5daeae1c50f951aa6f1ad3e557d87f59ce9bac`  
		Last Modified: Tue, 06 Oct 2026 04:08:18 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f112247616d35383e32130efedacf49648114fce67711eb2e9eb534e0d7d3866`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 7.1 MB (7076818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46468b063ff118d7ea126988d73f6a9e639e395ebc666e91e23ec89cdd544153`  
		Last Modified: Tue, 06 Oct 2026 04:08:18 GMT  
		Size: 1.2 MB (1214759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e01e92cc0c01a61fd2b841c3f49f249a0959d8c757d9e24f0577f0769679bb`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 8.2 MB (8204034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd61f4c8b6545c4cadca1f539848bf4991598afee43b6310827062f20cd6b7c`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 1.4 MB (1394926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d650094b1248e0da8da058eacbb7eeba5cf27d2ab437a3586aea3ecdbbdffc`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5712043bd52f7888fc9ca81ad5f13698f8a4a76c6cd02640fca926c265908b`  
		Last Modified: Tue, 06 Oct 2026 04:08:20 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72833bc7cccaf116e0b01831b3b03fc10dda41423749663e178e27757a49d6d`  
		Last Modified: Tue, 06 Oct 2026 04:08:23 GMT  
		Size: 124.8 MB (124773599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbc9e73f48d19faceb44e79910ad5064c22088b25b5f174a45a03e57fe03c44`  
		Last Modified: Tue, 06 Oct 2026 04:08:21 GMT  
		Size: 21.6 KB (21596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144841eb23211926bd30420b3618e6617933447bc9417fc7f9b5a8f2148134ed`  
		Last Modified: Tue, 06 Oct 2026 04:08:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bed014ff467508bacdf4454f022c857a67bc096674743c5123636ae5816ea1`  
		Last Modified: Tue, 06 Oct 2026 04:08:21 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c3f45d66b2a4c9dc77f9a8809e344640408252be4526bd316acecbc5157833`  
		Last Modified: Tue, 06 Oct 2026 04:08:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:13a2e00f36c22b921a79a34efbeda5b645c06caaa7d44da44880a0c16e6f8f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7950111e010af3a03246abcd07344791a5a328a0f19ce0b818dc2e82f0c7af30`

```dockerfile
```

-	Layers:
	-	`sha256:d6c6a92405f0c3474e80247f30b521674e160fa568f3405fd9274c1a0bda81f4`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 6.0 MB (6009735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0b70c2186cadb6983b89b7fd893efcfe0ec7e0e2b4d24c216fc51418647274`  
		Last Modified: Tue, 06 Oct 2026 04:08:18 GMT  
		Size: 51.4 KB (51362 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; riscv64

```console
$ docker pull postgres@sha256:7968c755fe88f27e3db62f6fb0be0c42cbcd10e55864aef0840cea3b378bc30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93694173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325c5b3cafd63517446d5f49e8ce03418d1a58e464ce08b9ddd0c8f37ae3bedc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 06:34:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 06:35:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 06:36:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 06:36:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 06:37:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 24 Sep 2026 06:37:41 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 06:38:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 06:38:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 06:38:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 24 Sep 2026 06:38:25 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 06:38:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 24 Sep 2026 06:38:25 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Mon, 28 Sep 2026 22:05:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Mon, 28 Sep 2026 22:05:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 28 Sep 2026 22:05:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 28 Sep 2026 22:05:03 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 28 Sep 2026 22:05:03 GMT
VOLUME [/var/lib/postgresql]
# Mon, 28 Sep 2026 22:05:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 28 Sep 2026 22:05:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 28 Sep 2026 22:05:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Sep 2026 22:05:04 GMT
STOPSIGNAL SIGINT
# Mon, 28 Sep 2026 22:05:04 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 28 Sep 2026 22:05:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cd4f55128500f129f46a57a6c94f868132bb388489ca742f4270f2196f5bdb`  
		Last Modified: Thu, 24 Sep 2026 08:54:34 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aaf151fce52762383f7db29b531b57250d3278dcfa9544292fe41778962f5d1`  
		Last Modified: Thu, 24 Sep 2026 08:54:36 GMT  
		Size: 6.3 MB (6293055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c0241011daca333b7a1ec42806fc2a4cc2623c1045d605ffa2e01d0b29b26`  
		Last Modified: Thu, 24 Sep 2026 08:54:34 GMT  
		Size: 1.2 MB (1202098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc938560d0835c6fc67e88a0dcb68f0fc16efa5361976a25b49d22da906d1253`  
		Last Modified: Thu, 24 Sep 2026 08:54:37 GMT  
		Size: 8.2 MB (8203724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d766825a201cf402238a90e0a45204a23b75b69548a0758e8f2def7bc5dca`  
		Last Modified: Thu, 24 Sep 2026 08:54:37 GMT  
		Size: 1.4 MB (1402420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339cbb95ab0c1ff3d8e0204405207f7f9f77bb618f5d7a027ae40cfcc4b2e8bb`  
		Last Modified: Thu, 24 Sep 2026 08:54:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd050ad6f93f946c2b4c7b96369607452a64a673ffdd2f768e1844cbcef5ea4`  
		Last Modified: Thu, 24 Sep 2026 08:54:37 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e849cf1ccedabe046841564908944602966e47f7163fc490f15a81ecc38c646f`  
		Last Modified: Mon, 28 Sep 2026 22:07:45 GMT  
		Size: 48.2 MB (48236030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e2af4f5b009c3b159482ec9815051bf2ba90ee522434a9f40869001d5519a3`  
		Last Modified: Mon, 28 Sep 2026 22:07:37 GMT  
		Size: 21.6 KB (21610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7174715d15fbe40877ddebdddac3d578e5c9760fb97ffa5a146a3baab8b0603f`  
		Last Modified: Mon, 28 Sep 2026 22:07:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7515365becf98fe8ec7211cf3bafc61e6c490fe58a25eb62addbc3a5567d4d`  
		Last Modified: Mon, 28 Sep 2026 22:07:37 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832174e8797c922b67238a8ed535d5537acd4bd7dcd57339a6e2e86eb209e9c8`  
		Last Modified: Mon, 28 Sep 2026 22:07:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:44e4b6f70b5ceebddf6e2d109465e1d3fe375c70d11d73b3b00d66c739ca2b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5179132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958f0697481829d8859f42e3d134f0ac0a6753201c243b47951866376205e49c`

```dockerfile
```

-	Layers:
	-	`sha256:1a63d922fd727d2d9dadd8f3df0edec924696b303136aa3c4985a683a0b68efd`  
		Last Modified: Mon, 28 Sep 2026 22:07:38 GMT  
		Size: 5.1 MB (5127775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0bd57d6b990c426fc9964e0dff081a622ded04e5785a5a8fb0b9b93c7bb56f0`  
		Last Modified: Mon, 28 Sep 2026 22:07:37 GMT  
		Size: 51.4 KB (51357 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4` - linux; s390x

```console
$ docker pull postgres@sha256:09dc27cd6f185870b28beb6ccfefee028e6fc40c662bb52b5298dacc53fea4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178495940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6096dc0728e8a6a6b8a064162ba3fe8dd341401a4e17c87bc6ac587ec02216d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:38:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:38:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:38:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:38:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:38:22 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:38:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:38:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PG_MAJOR=19
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Tue, 06 Oct 2026 01:50:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:50:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:50:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:50:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 06 Oct 2026 01:50:05 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:50:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:50:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:50:05 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:50:05 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:50:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cd1f56368146f92d56030bf7480a66be9362f0ba896a16da2dfe780a433512`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29c8631e4eb3452b416e4c47582cff60dd2178de5268e4e5651060a64014aba`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 6.4 MB (6408484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0d5e7cb66f9dbf20c9fc313f2f3eb81facdb67b92b805a7fcdc8753fa3c03`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 1.2 MB (1230202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c479ad288210126e54c399b08963fa2bdd4d3fe7030da8ac4e00a687c1e5a43a`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 8.3 MB (8258974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce98d63cac64cb5f474c722a41948384a91123cf4dd76fbe9f78f9754b0fa879`  
		Last Modified: Tue, 06 Oct 2026 01:50:35 GMT  
		Size: 1.4 MB (1398252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0be2e5a9aa88fe7c8f965fe49a2d84ba03bc5bd63038d50356fafd89f02570`  
		Last Modified: Tue, 06 Oct 2026 01:50:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f4107c56aee058965f66d9b54638b2cf8329c0f4decd282bc740474ad77c39`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ea51fb674d1088b5000c50364ef8bd87193715e07bbc67a1fa2b6f67f3f4d3`  
		Last Modified: Tue, 06 Oct 2026 01:50:38 GMT  
		Size: 131.3 MB (131258328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa91f840aa2881da70799c77421b11f6fbfbc407c5565e8f00ba7669e3aee22`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49734200da075cafa9f6eb85e61ad4d0e60b92f8a2a65fd9ebf675b1ffe2fbc`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de024d0ffc811ca206d4f2e5d944c893d24c3e89609bbd29ba78961df44cc23`  
		Last Modified: Tue, 06 Oct 2026 01:50:37 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a762d5bb92bfaf402bec5a68e386809a5472d5f53c3eca1d5b3ecbb6964756e3`  
		Last Modified: Tue, 06 Oct 2026 01:50:37 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4` - unknown; unknown

```console
$ docker pull postgres@sha256:f1b7286a46396cb889760bb20c56d23c69b6945d97ce29302f2f4f095ca567a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6071113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef12ef0e97cc3db75b3f718668728247b66fe1a2dd2bf285c9e3f90366880f79`

```dockerfile
```

-	Layers:
	-	`sha256:f00f10ba9b41d513eaaeeb214dbf0b93a3989ab5aaca06e525705d8f6236cfa9`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 6.0 MB (6019803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:961f393661f7cca17ad4dfedbf8bea8dd141891a7ca08c871596a70b21ea8f75`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 51.3 KB (51310 bytes)  
		MIME: application/vnd.in-toto+json
