## `postgres:18-trixie`

```console
$ docker pull postgres@sha256:5486e8fb206952552c7e2eaf2e36e4c7be3cd36b2b396eb41de618aa5664a781
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

### `postgres:18-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:9770878138a2e83abcb10856d30cc3f24dae0d317bb956db6ab9159de6c3c80d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162486864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79061104669bb30919d015b549c764e2d8021a18ee39cb175581a2588fe90dbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:36:26 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:36:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:38 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:36:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:36:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:36:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:36:46 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 00:36:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 21 Oct 2026 00:36:46 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 21 Oct 2026 00:37:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:37:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 00:37:01 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:37:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:37:01 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:37:01 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:37:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f05ca1a2599003be4b0958ca4f0eb94de707f595a5eb4b57a5e4726315227a`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92accee5624ebb98122c1a18dfbc8eddf92b8891137543c6c6b32ee500ac0a03`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 6.4 MB (6442943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf0df4dfeecba20c5fee33fd017001d955192734d298d550bae505cc1f468d1`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 1.3 MB (1256718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc259989795e81abcb0ef910a154e84b4d233dbc1a15ec03c1321893b242c81e`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 8.2 MB (8203787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e59af3458cba7f14075c195caf91e9384c6521c1f38d48f9cba9112be882ab`  
		Last Modified: Wed, 21 Oct 2026 00:37:21 GMT  
		Size: 1.3 MB (1311699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea9e19f5a7425d2484200f3c84fd0baafddd3e7187178152feba2ad626627cb`  
		Last Modified: Wed, 21 Oct 2026 00:37:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f779d0bd48eb707b5df9cc8d270d8769e13c93935921623f6c467be6d6c283`  
		Last Modified: Wed, 21 Oct 2026 00:37:22 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9efa127f8597bcb04f1175f6014aa57e2752d698893fa8b91fa0b7642cb20c`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 115.4 MB (115397864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1084bcb3556d6c277e39604235196bb8de722ae02f0db08af78f44b32f7d55`  
		Last Modified: Wed, 21 Oct 2026 00:37:23 GMT  
		Size: 19.4 KB (19426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ebd398ec37f4ba1364bb3adde89cac0b303591bfa99331aef79422a8caa921`  
		Last Modified: Wed, 21 Oct 2026 00:37:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00490e632b7564e2caf3e84a26bd7e2360be528708ea35c78493363fbce85b68`  
		Last Modified: Wed, 21 Oct 2026 00:37:23 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed0c854313a8fb88c2bd186364480aca34eb0979ae9a3094fc0aa7c7bd30ed5`  
		Last Modified: Wed, 21 Oct 2026 00:37:24 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:5d741d032bcc1f0a1910f65be2731cc4fe3b8b3162ff859dc863195b9f093f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6015416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a17d92883d8793af3ef8a05d1487a128d9038d47b9193679c9c257347c52085`

```dockerfile
```

-	Layers:
	-	`sha256:5ac26356ed7c40adfc6ceffd13376dd1a29bace817d583076a99407f3e058d39`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 6.0 MB (5962937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22580ab3546a87b377d26facd5e3153c52f77586a200ea5485220b13797ee9b1`  
		Last Modified: Wed, 21 Oct 2026 00:37:20 GMT  
		Size: 52.5 KB (52479 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e77ea87caf17e31bb34e266c0b42903628f8a0c6f3d0e5afa95be917bbe8611f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91581704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb390334e9cc3fd6a970e024ec0158b7e6d46c1b6e9c1e88a0b1e4926d7a12c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:37:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:38:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:38:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:38:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:38:08 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:38:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:38:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:38:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:38:15 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 00:38:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 21 Oct 2026 00:38:15 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 21 Oct 2026 00:51:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:51:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:51:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:51:17 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 00:51:17 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:51:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:51:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:51:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:51:17 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:51:17 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:51:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9403953a66fa1f535241341c41ef4a8d5d25dfcb1476bcc210af9d1f83bd87a7`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68ae95c2410483e9c0aaff4093b6ce57837ea1da499cd27b4e10a481ed7c2b5`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 5.9 MB (5932385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afa2462100dc259aa60c7ff9ee20b7a40aad6732a010f98464771cb56329c41`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 1.2 MB (1227508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7547e9bdb026a5f1e5e5c542372ee0dcef1f96f2317b702051b6a4d28e958dc5`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 8.2 MB (8204209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e2f0b14a0ceaf52adb0cb2400a6b00162d0044e20e178b663c2ec7eda6627d`  
		Last Modified: Wed, 21 Oct 2026 00:51:32 GMT  
		Size: 1.3 MB (1317383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6c70c01bb0539c98b9ac8f6d0200d8f4447dd15fd9e025d4a55677319b073c`  
		Last Modified: Wed, 21 Oct 2026 00:51:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cdb490ddf6e54195f1b14841486a1e1ea68402bf94c9459586bd13b90b0da0`  
		Last Modified: Wed, 21 Oct 2026 00:51:32 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371604c54df2a0a0d5037154a30f2b94e73fb8112ed9785829cb789bd00789b`  
		Last Modified: Wed, 21 Oct 2026 00:51:34 GMT  
		Size: 46.9 MB (46862157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2bbfe143b0dab6abadaf9dd2e7f4b8b7993f99d315c0e5c077686bf47efb190`  
		Last Modified: Wed, 21 Oct 2026 00:51:33 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5ec9c4fb99a212265ed2357653598a5ab3e2f35f1a73df8001761c9574c282`  
		Last Modified: Wed, 21 Oct 2026 00:51:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39744b9111dfa5815c4aab420ed959373ebbd2cf86f9b005c5f173b3aaee747b`  
		Last Modified: Wed, 21 Oct 2026 00:51:34 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ef2fb871f24c72b9f22a3bd484a363ad530263dbca5fab489e6bf8413491f9`  
		Last Modified: Wed, 21 Oct 2026 00:51:34 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:914ffd7214ec476bbf0d107afed8b3ed23d5a46bc7e6d5b0925ca9d77682856c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2453f4e3424d326b194a10c18ba13f98081ee7d0dc045118e6e5caea08dd2e8b`

```dockerfile
```

-	Layers:
	-	`sha256:db75eacca888135bbdf88295ae0d502f2c29ad92038c24b4df75dd3e783f1311`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 5.1 MB (5126102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f7edfec7d71fe32556420af02990e64b72396549c269c7faa04c64ef8f009fc`  
		Last Modified: Wed, 21 Oct 2026 00:51:31 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:06bfcdeb7719e2730a9852ff32a4b487aa01efaad7844833262955b1d1f88aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87897670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5cf594ade0d7946526c450e05cdef1c516a1ac79d7a8bc4828679081b46e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:01:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 02:01:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:02:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:02:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:02:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 02:02:08 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 02:02:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:02:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 02:02:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 02:02:15 GMT
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 02:02:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 02:02:15 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 06 Oct 2026 02:14:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:14:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:14:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:14:32 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 02:14:32 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 02:14:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:14:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:14:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:14:32 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:14:32 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:14:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad629d21bd198b251b11d75e977758fa426057189a901960a133f0e82e4a489`  
		Last Modified: Tue, 06 Oct 2026 02:14:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a132e2d46fc8231aa85f70e1caea6a731662865db6f5a437345460b182c83d1`  
		Last Modified: Tue, 06 Oct 2026 02:14:45 GMT  
		Size: 5.5 MB (5497292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a97dd8e642e3a159541d7ca8b6ab6ff4ca306a8cd871dd520f8a90fc85b8bab`  
		Last Modified: Tue, 06 Oct 2026 02:14:44 GMT  
		Size: 1.2 MB (1222383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b006475ba9c8ecdf0242e6279e8af839ad8711a849e381b8f7ce66302ff2e614`  
		Last Modified: Tue, 06 Oct 2026 02:14:45 GMT  
		Size: 8.2 MB (8204059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec0cedf8cce7b0796c41af5d08d450dc2f499a49ae8ec6b03c90d6f3c084bdb`  
		Last Modified: Tue, 06 Oct 2026 02:14:45 GMT  
		Size: 1.2 MB (1172678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24142d39475a74012b499f8ad31aa0e5c8ed9ddde33e5622598549342887b162`  
		Last Modified: Tue, 06 Oct 2026 02:14:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190112b99eb8d0de4f20dc36d7d84563e360c7ba3a0822b00338195c2ee50fad`  
		Last Modified: Tue, 06 Oct 2026 02:14:46 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffd2d876795e38d0e4154bfbe0ae18becaa436f987fe34591387015b6cf7782`  
		Last Modified: Tue, 06 Oct 2026 02:14:47 GMT  
		Size: 45.5 MB (45512808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30630c76857d37a38dd0848fab98e9d7f9272c346ea9582b066c1992cf91ccc0`  
		Last Modified: Tue, 06 Oct 2026 02:14:47 GMT  
		Size: 19.4 KB (19433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db6e7202de9f53ffb47b5ad30c7e6ca6a242017cca764f1311410d8aa4afb7`  
		Last Modified: Tue, 06 Oct 2026 02:14:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08dba06d8ea8cf08db3af47873ce4e42649a9b13ecebcf402efcb9f3fb27d52`  
		Last Modified: Tue, 06 Oct 2026 02:14:47 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42b27eaf567973b9cd1bccfefdd1d38b3d3df3747c028ed5106a2a4c3ec7357`  
		Last Modified: Tue, 06 Oct 2026 02:14:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:65b00dacb9bc36aa1f33d704277072ab690e79cbc083e6f7259325ce77dfc881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7278de866d97c16cb26d2a9dae93a6474cee3575adfaab5c5c7390bd7a68dee9`

```dockerfile
```

-	Layers:
	-	`sha256:893b4a35ef2d409e15356409011de9aa17823e60b44f8c71c36d315b8da79a36`  
		Last Modified: Tue, 06 Oct 2026 02:14:45 GMT  
		Size: 5.1 MB (5125407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ead2126bf7884026780321ca959909ac511411a9508849c35f763638fbd5cf72`  
		Last Modified: Tue, 06 Oct 2026 02:14:44 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a8be76d23699a6c366437e9f80ead007975f24c35e01c9ee0533c6930ab57ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161099319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e2759ab4ea7238bc7bed3893439d7abb8edd5c8ac24bab0571e4179f405235`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:39:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:39:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:39:45 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:39:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:39:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:39:49 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 00:39:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 21 Oct 2026 00:39:49 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 21 Oct 2026 00:40:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:40:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:40:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:40:08 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 00:40:08 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:40:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:40:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:40:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:40:08 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:40:08 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:40:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6558a0d3f15ddb510708bf4d1eb2cd43345b2d354e55f3075e6bedbc38475938`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba34bb4fddd5acd5d6eaee49c9dee5ac65435ec68cb5994b018d5e8faa4a81b`  
		Last Modified: Wed, 21 Oct 2026 00:40:29 GMT  
		Size: 6.2 MB (6234983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fa55c0c3bdfefc9e3df6de8e1e4acedd08e6e6d368b608d83e7cfcece23aa3`  
		Last Modified: Wed, 21 Oct 2026 00:40:28 GMT  
		Size: 1.2 MB (1209619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534f576dbf8fa31bca643935b9637f932dc7f34ace5e37560d4d7925b36bc431`  
		Last Modified: Wed, 21 Oct 2026 00:40:29 GMT  
		Size: 8.2 MB (8203951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7818f2a9f69d67cfcea4195846a82dc6bb2fd174a3282e7a8445c63d30b3d`  
		Last Modified: Wed, 21 Oct 2026 00:40:28 GMT  
		Size: 1.2 MB (1220653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767521bc0e11c0b633c9e61ae2cab62a0027124246af8c25a996c7c695ea9980`  
		Last Modified: Wed, 21 Oct 2026 00:40:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48602007d632707e9cd91888644a269edcc47b5c0b1ec65ddcd823b38c2e7c6f`  
		Last Modified: Wed, 21 Oct 2026 00:40:30 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712ab05844fca7410b50184a595463b514c0a758e04ebda3b4280e337cbdd1d0`  
		Last Modified: Wed, 21 Oct 2026 00:40:33 GMT  
		Size: 114.0 MB (113999362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ef1e946430dba4539fa3cd50d2c628c177e5734760c8042edc64b155cf6ea1`  
		Last Modified: Wed, 21 Oct 2026 00:40:30 GMT  
		Size: 19.4 KB (19425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4689dab1db0ee0e1d3286a6781c141e01478eb97d12da78909b12e42d6b14c5`  
		Last Modified: Wed, 21 Oct 2026 00:40:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ab1befe6b4070aef7cca86436aa6a20af82785a94c2a04f94bc48722386715`  
		Last Modified: Wed, 21 Oct 2026 00:40:31 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f4aa72774577de107add9044154c0642c12d5b443ecfa0928085dc6366c40a`  
		Last Modified: Wed, 21 Oct 2026 00:40:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2dca4c6c995856fef4dbaa4920f7c6fa45adafc26255ed28d032df41c6cd0e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7414820e3a16fad869d86958d73f39278fa343191d34f1b3ae501139afdb3cd4`

```dockerfile
```

-	Layers:
	-	`sha256:489943f9f0fa1f938777e6dbcfd815c74a52e581e63bba79ab6715b7c3a2f020`  
		Last Modified: Wed, 21 Oct 2026 00:40:29 GMT  
		Size: 6.0 MB (5969302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b9eb5c0871df46218c4bb436234038e118b72e13c5395d7a98aa4486bb65709`  
		Last Modified: Wed, 21 Oct 2026 00:40:28 GMT  
		Size: 52.8 KB (52757 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; 386

```console
$ docker pull postgres@sha256:05464a702a665b5cc80c5b5d842ffd31c5503be58274f4c8cf96c50d3fa4d7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97718524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e44a903a6aa2ce09dc72ae764e0695b16e149678670b9be4d2bad7892c5cebc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:33:27 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:33:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:42 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:33:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:33:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:33:48 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:33:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:33:53 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:33:53 GMT
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 01:33:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 01:33:53 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 06 Oct 2026 01:43:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:43:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:43:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:43:19 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 01:43:19 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:43:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:43:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:43:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:43:19 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:43:19 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:43:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa8a74cc322e53d8d44dbed37b2b87c91588a31fce30ffd6e77a9e76652b65a`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110269f5c3acc115807c04916ea933094d3e3c4daabcaec077dba380383a82c6`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 6.6 MB (6631383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28162414e1d57486af19e5373de06e1b2c8bcb01c9ff9a62d9e445e739e2b673`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 1.2 MB (1225855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a28b4788c33424032502e13e12572ba1cd435487e8245a2098398a26a528f1d`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 8.2 MB (8204021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f595ec722bfe6363bc0d037f29072e715bce3c51851cdc547d878b240e7a1e74`  
		Last Modified: Tue, 06 Oct 2026 01:43:33 GMT  
		Size: 1.3 MB (1308311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f083500cbe4726f74903075c4f0b8dc4502f852532a7d1509c708604dbacdd26`  
		Last Modified: Tue, 06 Oct 2026 01:43:33 GMT  
		Size: 112.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f56870b1fd6e74a69a94ba529f7a38dc2ec303ae3bdbb706bf60617984dcf9d`  
		Last Modified: Tue, 06 Oct 2026 01:43:34 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e20d9d2cd0000d56d2b64350a273a2ee4ab4feda1fffd07f59cbb7133bbb8f8`  
		Last Modified: Tue, 06 Oct 2026 01:43:35 GMT  
		Size: 49.0 MB (48965397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945216754cf0dd5385e7e9e71c0c71a80d86d2cdad03ce1d20c9d49e04232b5d`  
		Last Modified: Tue, 06 Oct 2026 01:43:34 GMT  
		Size: 19.4 KB (19416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703a19b48fa496f3efd5fd29c078d036875c407eef41e511c5518c7712ca688d`  
		Last Modified: Tue, 06 Oct 2026 01:43:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cbd99b2260867e85782e4a5f6756904966b92832c5c4ef6784a596e04500cb`  
		Last Modified: Tue, 06 Oct 2026 01:43:35 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378415170b57035840e555de86b957338ca476166163fa28bc00f0259698def`  
		Last Modified: Tue, 06 Oct 2026 01:43:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e74003681cd9cc6b004ed45e384cef11d839e46f1f0cc05a427ec8d6f5987077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5173848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cf07e90606f372d8c76156b0b832996d91aee50d2a259ba38146b7f3dfcdaa`

```dockerfile
```

-	Layers:
	-	`sha256:0edc257099ddb403d4fa81689ed0924427653a0348958fd4a5ccfbbddeea3549`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 5.1 MB (5121435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45bd2ce21eadb47380375780f91c833e12c8eca5ed73675880d3ba7656318e47`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 52.4 KB (52413 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:58fff7c2d8fad6acec136b663c917c56f33ec82ef1ca32aefc94e1b0687bfbf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174903251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8f8737c64a15b3352cb4ce43426e91ecfdabb017cfcdf405b57949abca7a91`
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
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 06 Oct 2026 04:10:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 04:10:50 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 04:10:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 04:10:51 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 04:10:51 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 04:10:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:10:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 04:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:10:52 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 04:10:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 04:10:52 GMT
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
	-	`sha256:a09127bbfb8877c0d34c9d933d894787eceddc61884a2eac9b552fa4f602c8a5`  
		Last Modified: Tue, 06 Oct 2026 04:11:45 GMT  
		Size: 123.3 MB (123330847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a052c270ce37d1929a34f9341ce8c3f6c95f6b6d8786ba9737b6cee1964c604`  
		Last Modified: Tue, 06 Oct 2026 04:11:42 GMT  
		Size: 19.4 KB (19421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb96dddfc91ec406309090eaffb0929e2fc5f37c72f44388a2c518a383107d89`  
		Last Modified: Tue, 06 Oct 2026 04:11:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180aed11862d65a5eef7d437e9bd2cb29536fee0279578fb9783aeb0024cd345`  
		Last Modified: Tue, 06 Oct 2026 04:11:42 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8883c798b262becac13e348c6317048fea1e7bb6c49ad883a323db32067c8675`  
		Last Modified: Tue, 06 Oct 2026 04:11:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9d0bd7eeaee4c65b0222fe2fb0e91de08f5121a321be78131f12b92f1021621b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6022141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b781ee7107d986e76172e521e86a1e355cdff5e2c4a3273683fd495c410b7821`

```dockerfile
```

-	Layers:
	-	`sha256:a9ee14cf00cd38af0698a8a61cbe7ea9765b0b4b69ffc7a43e0900e3a8054042`  
		Last Modified: Tue, 06 Oct 2026 04:11:42 GMT  
		Size: 6.0 MB (5969585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95ad1c16bf0221b10c85cec311a8fd86163d7e98c42ff14342bc9748ea32f2e6`  
		Last Modified: Tue, 06 Oct 2026 04:11:41 GMT  
		Size: 52.6 KB (52556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:2337683c7a1556e93a8472ecb3c23a86d8d4c34daa534ef6ea0af23c082037f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (92993247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516f703a2f02cc000112e6dc0337f99d580eb27938711a8d8ad10b9083853cd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 05:20:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 07 Oct 2026 05:21:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:22:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 07 Oct 2026 05:22:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
ENV LANG=en_US.utf8
# Wed, 07 Oct 2026 05:23:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:23:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_MAJOR=18
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 07 Oct 2026 09:44:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 07 Oct 2026 09:44:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 07 Oct 2026 09:44:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 07 Oct 2026 09:44:31 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 07 Oct 2026 09:44:31 GMT
VOLUME [/var/lib/postgresql]
# Wed, 07 Oct 2026 09:44:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 09:44:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 07 Oct 2026 09:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 09:44:32 GMT
STOPSIGNAL SIGINT
# Wed, 07 Oct 2026 09:44:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 07 Oct 2026 09:44:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04276d84bdd5b1a89491c4c1f0f1bd23715a2cd0cbd28fd5c6a63ace51846c9e`  
		Last Modified: Wed, 07 Oct 2026 07:36:36 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f34d5932eacc8425fd245ae4f18b212850ccee4f3b8d4ebfe0a05c39e26d57a`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 6.3 MB (6293023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d00966b97b81f00099e96a8d2a5bc76a67d15adaace243a02e38133fa2a365`  
		Last Modified: Wed, 07 Oct 2026 07:36:37 GMT  
		Size: 1.2 MB (1202085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7478d7cf291d2297ac523c25dad89c3be79f4cdec82cf0ede13be3018ebbe7e`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 8.2 MB (8203691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4b67a45da65da2ac6956b1058b6923a5973c2b70ee147fc4eec47bd16c7aed`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 1.4 MB (1402417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa517c26b22eb5b6e36a15abe37b37bfb5e96aeab9cb78fb827e602f32ac35e6`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8052cdc30b8d44af226f3941b6370e4c67fc88e98268c86189e043faa890fa46`  
		Last Modified: Wed, 07 Oct 2026 07:36:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757d515b95b33ce0c6a1b51af0e6f765bdc3cb0dfc603498c18ddc7b48392ef3`  
		Last Modified: Wed, 07 Oct 2026 09:47:07 GMT  
		Size: 47.5 MB (47527992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca582bb01c5f5cec8b5322e0b898d02ff44c2619e79bfc0f85a79613a07d43d8`  
		Last Modified: Wed, 07 Oct 2026 09:46:59 GMT  
		Size: 19.4 KB (19425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a7949fb166fd48d6aa8ed796b66cce740ee13acb9e0d249e2f6018756c2346`  
		Last Modified: Wed, 07 Oct 2026 09:46:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a304c00510a627ee449dd8478b797b49b252ec449047ed4f11cffe781c164cd`  
		Last Modified: Wed, 07 Oct 2026 09:46:59 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c5dd0ed1f22e7d1b73349ab5fe93b86aeb3a4c0879557df5a334e88478f8fe`  
		Last Modified: Wed, 07 Oct 2026 09:47:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2aa0f3ec573a73a04926158ac131db33c271b32990e2922fd96f548ef6f3e57a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5168926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc85589e82c99027afe29547018ff7be92706f63b4d4682b822b075c0b564762`

```dockerfile
```

-	Layers:
	-	`sha256:918fb5c8b95b67bb0e426ee04cd77753c33e93bd583abe644592d897b869d7c6`  
		Last Modified: Wed, 07 Oct 2026 09:47:00 GMT  
		Size: 5.1 MB (5116375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a872ad9ce0b43b07ea41a9de0d428d5fe9e158b7f1d9bf7003e3565e4c5702`  
		Last Modified: Wed, 07 Oct 2026 09:46:59 GMT  
		Size: 52.6 KB (52551 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:3b1b1289edf5a217a154b5e64c4eba5844f393b9b81e08995a043c5a9acdf81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177134691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2422c816221925b64d2c76e536ac8c27fa19ac54ec73ed1a915d95a481e9751c`
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
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 06 Oct 2026 01:50:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:50:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:50:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:50:13 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 01:50:13 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:50:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:50:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:50:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:50:13 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:50:13 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:50:13 GMT
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
	-	`sha256:196f14cc93f1f3ba16c36464f0e176840ac81580028358360384c096aa9f52ee`  
		Last Modified: Tue, 06 Oct 2026 01:50:45 GMT  
		Size: 129.9 MB (129899261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf7093840b7213be7c7ed223b8e0833ec36200f377a9cdf6f5e5e21373bb43`  
		Last Modified: Tue, 06 Oct 2026 01:50:43 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860f34b3c14bbe5cbca39e20b8dc54981a4180e840d2b4d27cf03bdecb3b8e56`  
		Last Modified: Tue, 06 Oct 2026 01:50:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61d7a88cd87b3108154bcaf7e8a4c59aee19650353b1f1bacfb70c0aefac533`  
		Last Modified: Tue, 06 Oct 2026 01:50:43 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f50757ba0235d2827d8f3a16f8e3efd9871ba294576fda36c0d4b30c5933781`  
		Last Modified: Tue, 06 Oct 2026 01:50:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2c3cdda80eceaf969f7f1671182328968c8f24b50e541c1c008592f884239eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6032109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a594d9d44d631da4e13a711b2b368a68e1ac029a9191d7c868ee8876f81b0d21`

```dockerfile
```

-	Layers:
	-	`sha256:7cca0857045e651ae287f88332260ab9b45902e5cb3091d670a9751f61fd590b`  
		Last Modified: Tue, 06 Oct 2026 01:50:43 GMT  
		Size: 6.0 MB (5979629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b516bb76182e9a99b6d1b35bbe1389575f86ecc021eccdea0eb2f2282caa17ec`  
		Last Modified: Tue, 06 Oct 2026 01:50:43 GMT  
		Size: 52.5 KB (52480 bytes)  
		MIME: application/vnd.in-toto+json
