## `postgres:19beta4-trixie`

```console
$ docker pull postgres@sha256:f070a5f35b3a3d91269d5bc87b7e86e646fa5f01b931a13dd30943867b502e5a
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

### `postgres:19beta4-trixie` - linux; amd64

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

### `postgres:19beta4-trixie` - unknown; unknown

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

### `postgres:19beta4-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:c0ecc5d9c6e51f9cbfc4d2255ed901a6bd747e2e01e7de2e09b4efc5b91da5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92327383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2ab961bee1f4fa7a280154672183b8b265aa299844d241c5ebf7b6e9b70dae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:02:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:02:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:02:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:02:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:02:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 24 Sep 2026 21:02:58 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:03:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:03:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:03:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 24 Sep 2026 21:03:06 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:03:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 24 Sep 2026 21:03:06 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Thu, 24 Sep 2026 21:16:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:16:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:16:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:16:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:16:25 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:16:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:16:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:16:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:16:25 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:16:25 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:16:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbcebe128409f05f37ecc0b386b5fec19271882ca599d3d3fcc30ff92dd83cd`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0beadf23329e921c66fa2bca714c7a006703adb2d6f3d03ca1de3d1dc6db4e90`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 5.9 MB (5932416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316c5a08addff358eb3448c5fae274d43f2ee4724020c430b0f0000dcdf86afa`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 1.2 MB (1227523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3c110f456f3c200e74463ae1561ca94c18b1fb8dfa18c0efff1be1cdb5be18`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 8.2 MB (8204159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c458bb45026fa59b4037c66ad4269455dd795033cb4c3ae3c2e6952997125f`  
		Last Modified: Thu, 24 Sep 2026 21:16:39 GMT  
		Size: 1.3 MB (1317404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb60dd17450255dc51fa01787b253487cc5614ef628e89cb316cf7343344b3e`  
		Last Modified: Thu, 24 Sep 2026 21:16:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c497fa1d207de7c1011155f4fe46c3a5769448ec4016ec2c00c8216c5197f549`  
		Last Modified: Thu, 24 Sep 2026 21:16:39 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c22837af5c8eb8bfa777940cd65fbbf56bbf2e7b04c2c37d8be8fe6b4103b`  
		Last Modified: Thu, 24 Sep 2026 21:16:41 GMT  
		Size: 47.6 MB (47615396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112b29b003bf6426a97c84ab349fcb1640240ad20f35b1303998a0fdebf428f9`  
		Last Modified: Thu, 24 Sep 2026 21:16:40 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a762d2d8ef83f19d26c71e926652f252b80c1d707cb8cf86d2e15619802a0b5a`  
		Last Modified: Thu, 24 Sep 2026 21:16:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75c332b5f49ef8f25e5a0d41d236ea45e6b6448e574ef3750db7404ee3c6cf1`  
		Last Modified: Thu, 24 Sep 2026 21:16:41 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76826fbd2811ca4b8347469439652e440abff8824739bc2b1e93b5f0225d0cff`  
		Last Modified: Thu, 24 Sep 2026 21:16:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9892d74cf55cd7708bb48568c902d02c5476b00581a87b83cccb455157e3d211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ebb808e1e4151cbf2e3d0510b67b6fd0949ab27f21b64b399c0ddb0aa6231f`

```dockerfile
```

-	Layers:
	-	`sha256:a9a4fcb88bdae593180e2ea56cc6a50285da33e4756b21d14df9973f51a172d6`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 5.1 MB (5137494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe806103b298c1e8388070e1c27a52702fe9e6d3ede52d84d1d9843e5d25b395`  
		Last Modified: Thu, 24 Sep 2026 21:16:38 GMT  
		Size: 51.5 KB (51498 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e79b10d762b84e322b971ba5fc8eab6e388e0ef055538c8c01220cfe6236bba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88612859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2055cb099324653585ca10948e0cb4a0a585d51a416b4bdbeb7953a4d87c8a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:01:10 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:01:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:01:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:01:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 24 Sep 2026 21:01:34 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:01:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:01:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:01:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 24 Sep 2026 21:01:40 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:01:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 24 Sep 2026 21:01:40 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Thu, 24 Sep 2026 21:14:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:14:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:14:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:14:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:14:12 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:14:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:14:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:14:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:14:12 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:14:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:14:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897913e66da8c9a32f22148bbeed1dbeb406b46af07b0b6d9cacfca88e347494`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7c2ddef9a4e759a9ee7d958c5a070594b706d13d7b1d8288c0f138ca13917c`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 5.5 MB (5497348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33764abbdbf82253e25327e5af47860a42497f500f2e4eaaa0cc9942ad4865ce`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 1.2 MB (1222363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d32d4b1f95745d8909fd2cce294f6733d749e66d22426a2cbc7f32e56745e6`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 8.2 MB (8204060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b62670d6cda6477992da22c116ad08dc27d2d0f06415c50d5cf04fad4145559`  
		Last Modified: Thu, 24 Sep 2026 21:14:26 GMT  
		Size: 1.2 MB (1172675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0345335bc1c0038a49ff0de7895b1a118b7983afc23c4664b470b92e58ff4f84`  
		Last Modified: Thu, 24 Sep 2026 21:14:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a4183ee99045e7899ef9c31ace45eb24574843839d4e2711600c6ba00d7918`  
		Last Modified: Thu, 24 Sep 2026 21:14:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8dcde5619ef402a7ad5652f942b3abeb084577dcc2baf9cf74a093aa84b5b1`  
		Last Modified: Thu, 24 Sep 2026 21:14:28 GMT  
		Size: 46.2 MB (46235018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345b88c5143b2c9071b4a32f056f4eb7d2d7db09f13582945373510f7b2149f7`  
		Last Modified: Thu, 24 Sep 2026 21:14:27 GMT  
		Size: 21.6 KB (21617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3e3bbbfb34c077e6815dce2c115827bb0fe093954d20825c5575d8338f13d8`  
		Last Modified: Thu, 24 Sep 2026 21:14:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300a6d3bfc03b0b48917a9d61b2966487b87fa53299bd87e4c912ef0d1241868`  
		Last Modified: Thu, 24 Sep 2026 21:14:28 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b125eb87b8d32fe8d978e4469b9662446573dc0ba2dc6b3bbf07b2253fb238`  
		Last Modified: Thu, 24 Sep 2026 21:14:29 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:dfa8641790a664ac172e1c0e3fb29c9aa76e68b42fd711cac274c494a6501d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5188298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11561fcb29d4a9b1691fd2727fcd1d077101e298293dbf665263a9e88f460bf0`

```dockerfile
```

-	Layers:
	-	`sha256:6bc1a5729edb63ed863aee662a0b035fdc2c69bd81fe87e73c1c3e60fcdbcd53`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 5.1 MB (5136799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6c76383d83bcf18d72101cf00a85ec3f361927c200219b772d8154d3aa42173`  
		Last Modified: Thu, 24 Sep 2026 21:14:25 GMT  
		Size: 51.5 KB (51499 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-trixie` - linux; arm64 variant v8

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

### `postgres:19beta4-trixie` - unknown; unknown

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

### `postgres:19beta4-trixie` - linux; 386

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

### `postgres:19beta4-trixie` - unknown; unknown

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

### `postgres:19beta4-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:9c3d2a86491560fcd57d7aca5eee4e8cc1bc807586e1cb3e925d88a1a711532c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176338091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cd065fd40d66a8a4ea37f6805ec8259d27058ccb3dda3d9a9ddf982e088151`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 21:30:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:31:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:31:21 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:31:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:31:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 24 Sep 2026 21:31:34 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 24 Sep 2026 21:31:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:31:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 24 Sep 2026 21:31:44 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:31:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 24 Sep 2026 21:31:44 GMT
ENV PG_VERSION=19~beta4-1.pgdg13+1
# Thu, 24 Sep 2026 21:32:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:32:28 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:32:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:32:29 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:32:29 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:32:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:32:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:32:30 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:32:30 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:32:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac2b082024e120b2eb95a68c8f95656dfadd433930fa71d9b41764b8ed48f34`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d718b01604ce50090f81cc960a4259abbb966afa02c930d572a0a6d67c4cf5`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 7.1 MB (7076894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42404ab27d2fe51dba277622c6e5d0c9fe583350d79aec18a35865ae15940341`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 1.2 MB (1214847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db58146c5d2c9cd5063be4495bcc6fe5d8354e0b186b3a061c66eb811b8edc89`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 8.2 MB (8203961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5134f989acae206c0125e44dcbc88d3cd9f7fa981e2e3890a8fbd7c24fa9e1c1`  
		Last Modified: Thu, 24 Sep 2026 21:33:15 GMT  
		Size: 1.4 MB (1394974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2f29d4961d21ba1bedab0a09253438f3606f5bd426ec8add110a8b7a8b794c`  
		Last Modified: Thu, 24 Sep 2026 21:33:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319a8bdf0c9034205fe1358843b7909a392c4b69d28f0617d1b2da39c2e9ca34`  
		Last Modified: Thu, 24 Sep 2026 21:33:15 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658184bccf3995bcfd2c71bf2e8f2ecc29419db33b8b0183de4364b726b1d3bf`  
		Last Modified: Thu, 24 Sep 2026 21:33:19 GMT  
		Size: 124.8 MB (124773735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697de988a1a2e834ad71348115b37961e088da4d4f0fcac1c9902bea7d8c081c`  
		Last Modified: Thu, 24 Sep 2026 21:33:16 GMT  
		Size: 21.6 KB (21597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fcce6437ed02d4bd7d9ff77c805305e3ce19b07e2807c5183863a502349f89`  
		Last Modified: Thu, 24 Sep 2026 21:33:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fae0422d1406b79be891276540bf022d56212771fcdee827f985fec6f8af4c`  
		Last Modified: Thu, 24 Sep 2026 21:33:17 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f07b7a64829468c848db76a46725c8e4d0d9b09a0afee8ca710c1fdcc8c88d`  
		Last Modified: Thu, 24 Sep 2026 21:33:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1e6a64c64d88a355f43c6d37f3529ef6bbd5be2a1681c942abfa5c9482a702fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41e7fc24421005abe62c346aaa7edd1d4faa08fff353429b22f3718af0c137e`

```dockerfile
```

-	Layers:
	-	`sha256:253170f6b091f9af8adc281d69eaff7bd0331c543561b9737c43c033f8360796`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 6.0 MB (6009735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e693e15c59dd709889a5d56ff1a101a4fe4ee0a72f7ac63268630470196c5fec`  
		Last Modified: Thu, 24 Sep 2026 21:33:14 GMT  
		Size: 51.4 KB (51362 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-trixie` - linux; riscv64

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

### `postgres:19beta4-trixie` - unknown; unknown

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

### `postgres:19beta4-trixie` - linux; s390x

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

### `postgres:19beta4-trixie` - unknown; unknown

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
