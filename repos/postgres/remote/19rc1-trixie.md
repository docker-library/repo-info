## `postgres:19rc1-trixie`

```console
$ docker pull postgres@sha256:09043a94052fc69dd875e78e3dc314b51aa2062587b1200f75ad21c626c5eebd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `postgres:19rc1-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:a773c07cee13f6656aa8f699ae3fa4869d5b614ab558b09b87775b54958a4fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164341669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa85fd014b541ca34a386563c0e38f6d8e1cd26d91e27ab218ce7d36c4c7181`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:42 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:46 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:46 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:50 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:27:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:27:05 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:27:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:27:05 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:27:05 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:27:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3ef3c7ea58405c003cfe7f189a7d3b0ec6473d49c01c310d67f4beb027759c`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7caae4961de627d81dcf2409352132d10ac47e21d2815807afb4c63ebaa5e6b`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 6.4 MB (6443021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a875469997e174fd44f3a06a4dd177b2ded7a592c8989cddf3bc4fb1faa6bbb`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 1.3 MB (1256753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b214fdb123c9da663ec9b8ade7c58ecb2b3cec1047579c4cde083fd6996e3581`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 8.2 MB (8203838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9228c541dcf3da670aa008937edee6c7ab12f7a5da050156730fbd9e373a9ae`  
		Last Modified: Fri, 16 Oct 2026 20:27:25 GMT  
		Size: 1.4 MB (1419908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66397d68fd99b50aecef3b2adabe5b0a8e605fd2494697d746edd796e6eced35`  
		Last Modified: Fri, 16 Oct 2026 20:27:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44986df8848c2faf54b1256f5f8bc05837cf713e66dea4f9ac39f40bbd11945`  
		Last Modified: Fri, 16 Oct 2026 20:27:25 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4690a19d89d82fe3110b7772e05e99cfa136afc5d4b27581de48a34a498e9b7`  
		Last Modified: Fri, 16 Oct 2026 20:27:28 GMT  
		Size: 117.1 MB (117142340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6caa184fc6e5e140be415c990e743ec9451fdc84f45219c4d618fc785cf2097`  
		Last Modified: Fri, 16 Oct 2026 20:27:27 GMT  
		Size: 21.6 KB (21610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dccebf050999b8f2a1ce2745032deaaec710986dbcbbcb574568e2283dadcf`  
		Last Modified: Fri, 16 Oct 2026 20:27:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814a5fd4c36f24aa1be238703cf73ae45ceeea179dd3724f98199f945c2261a1`  
		Last Modified: Fri, 16 Oct 2026 20:27:27 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7ef287ed07f0ef7ebabc32f322924bb1b0cc86012f421d141aeceb72e87ac`  
		Last Modified: Fri, 16 Oct 2026 20:27:28 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1245fb63a6cf46ad301acb75da38d071d2486127650c17f7fbd71cde02fd4720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6059994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e95e560ea522b9c0af3154ff6cf6ff119d17db157754f02d9a1f94b62c2e2e9`

```dockerfile
```

-	Layers:
	-	`sha256:eb7a0a3f72217ed0c2d5feb56ddf8e4f329a9ae23377147a6154b4a80607fd87`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 6.0 MB (6008704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d096fcc7eacf62dc60aa6befbbe98c7712cb23203e84d744bc67275001a89d8b`  
		Last Modified: Fri, 16 Oct 2026 20:27:24 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6bcb2d5b6ed385fa4d95d06ad103d162ff0c34d59f814857e37420683bae3ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92803055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568b6a0f775a1627cec3409a4b0ebec31b4def44bb99ba0cb0686e94f016f085`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:27:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:36 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:52 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:52 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:41:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:41:38 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:41:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:41:38 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:41:38 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:41:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:41:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:41:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:41:38 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:41:38 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:41:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d1a97884d9ac305d393e034a6c3dc99b736b07f000cd74e5c5ff3db7926bf4`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb9fbe5cc7331158ad423c10db70a6e67472ab7e0bf25c970e56779b3e4230b`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 5.9 MB (5932394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491a30693dfcb5b05fe53fc167ccda4503184318bbe7847441cc71b080a02f03`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 1.2 MB (1227475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465c29fda02274b355d1f57b7bbfb920eb1407724f7c81d55e3fe959c8148024`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 8.2 MB (8204274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98f8c466e2ae7e3f34c55bc8843555264a0213cdef94980b939c1c734d310cc`  
		Last Modified: Fri, 16 Oct 2026 20:41:53 GMT  
		Size: 1.4 MB (1418056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd8611fcde77d82f03a2ebff768d0bca33a6d3200870cf5226196c56006cc43`  
		Last Modified: Fri, 16 Oct 2026 20:41:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7562e0c3a723adf9da6d1e5382d1940d80558211d744856098bdab64b903b723`  
		Last Modified: Fri, 16 Oct 2026 20:41:53 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2b3a4f091cb260d1be9991fea7d4af11b7c65c1daf2226dcfd4acccd1c4bd7`  
		Last Modified: Fri, 16 Oct 2026 20:41:54 GMT  
		Size: 48.0 MB (47980915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f943e3f06085b337e45529246f386337071cc61e76878867afef923c38ff722`  
		Last Modified: Fri, 16 Oct 2026 20:41:54 GMT  
		Size: 21.6 KB (21610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449c3e63318e1e0eb97fca09e0d34230bd5f5bf7e360b6a1e0beafe1511b40f8`  
		Last Modified: Fri, 16 Oct 2026 20:41:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fce9032cd69bf0cb91325e00cc305c249ade21609998937a60fd02f0b50003`  
		Last Modified: Fri, 16 Oct 2026 20:41:54 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e4b45f49661ee969bf28477855c0d6715730225e4a7cae9ac6da5b7ea6e1e7`  
		Last Modified: Fri, 16 Oct 2026 20:41:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7571e54769f7987418462f95a0404033d78775a845e2b04a3489cbb5da148cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5194570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0a7b410c68035654d007ff8e2541825c3db7c0160ae4e2e8537c13d7910e38`

```dockerfile
```

-	Layers:
	-	`sha256:e74fa6caccb112a06d520fc550cab7205eb9111dfc7821fb29658229e3b0c4ff`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 5.1 MB (5143091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaa401c334f73386a0ed767189100d3ddbe1a70910e08015416cfc7e29f2cb47`  
		Last Modified: Fri, 16 Oct 2026 20:41:52 GMT  
		Size: 51.5 KB (51479 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0516448fa86bf50cfbde57e1880883f8c073cf7528f3ffa737e222fbcbaa1e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89063491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6394b74d211e302090f2f92303296cf3e3f7c6d5c97f0f07f18a288a519abd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:40 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:52 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:39:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:39:39 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:39:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:39:39 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:39:39 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:39:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3162ab99b5fbf787e4204e44f12a3c8f3fd6b8bba25c89290b46767aa109b23`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71082576df47c91ce0b432fe4f0628f0879645108a54f073ded65d06124de96`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 5.5 MB (5497244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa607c89a69b726271cab53bcebf0788d7b894d2193e20dcb26bcb3b8d1594c3`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 1.2 MB (1222311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b7012f9d6d166c388d8cbacb591a6fdb76d837038d0b597ae93de49d680d79`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 8.2 MB (8204085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f00f4e62a55c8165af614418237afd1ded3e9203b6ea99fc30a6822911c66a`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 1.3 MB (1264375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a30edc903271ad9fb230d96ca71c8897bdcfb809d7582a751fdeabd9a94a9d`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0030f35c3e8aacf8f6aef3e7630519c595e4e667dafc1fe8510cdb1c1310fbab`  
		Last Modified: Fri, 16 Oct 2026 20:39:54 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4eeae3f00e3be5a4b5634f2a335427fc4f249418d78894780338491d60e90a`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 46.6 MB (46584827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec368a5b9ae856fe94e4b6157fa5ef82dc55ee81c57652fc7f0776c378ad2579`  
		Last Modified: Fri, 16 Oct 2026 20:39:55 GMT  
		Size: 21.6 KB (21623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44afee1531a11d0fafb7bd18c10a59c8724404a5c6c7fd4aeb01959a011630c`  
		Last Modified: Fri, 16 Oct 2026 20:39:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e50779c533f92fd973fed05f4ae00879aa6264fea2be40c3d3eb8a6061a831`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c8691cc10415396faed193c3733585576af49c8df766b9501c5f831b20c9c7`  
		Last Modified: Fri, 16 Oct 2026 20:39:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:84fe85cd24cac964a49b452360dfbe0e885e73f160a768c5cbad25fe5d355080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5193874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2d3837b6cb890089c7ac019e829f923284c43954c265cb06a2c68e705dae598`

```dockerfile
```

-	Layers:
	-	`sha256:55ebfccdc794d88b3199fec11d2f9ffe90b781741ad0c700b5abd1959f246f37`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 5.1 MB (5142396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58e866dc4f81b7c3512ea4773e0bd3be58ecfe4961760d1fe23a484056be2b2a`  
		Last Modified: Fri, 16 Oct 2026 20:39:53 GMT  
		Size: 51.5 KB (51478 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2a99df43ad74144afdc33f0a3fc5c7cb1a4414f57ffc27cb99cce871f5efab57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162935172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97d46de1be5e94bdf49386cb6bca284844e4942a450a28088145c967432bf42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:34 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:40 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:44 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:44 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:27:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:27:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:27:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:06 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:27:06 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:27:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:27:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:27:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:27:06 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:27:06 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:27:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396de5308123059daed8b72daafd06027b001bc04868357fd70f7315311877e0`  
		Last Modified: Fri, 16 Oct 2026 20:27:25 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c6c958ba65618365ecba6b991684fefd92349272ed82a3a9c5e2aa3baaa896`  
		Last Modified: Fri, 16 Oct 2026 20:27:26 GMT  
		Size: 6.2 MB (6234918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a141d7975f34aeee6fea1f70335c6fd9b6d7da93916d1e5bde490d63552031c`  
		Last Modified: Fri, 16 Oct 2026 20:27:26 GMT  
		Size: 1.2 MB (1209594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77912ad351bacf96700385772317911ff9ea03f69b8e48df157dddaea5a44f2`  
		Last Modified: Fri, 16 Oct 2026 20:27:26 GMT  
		Size: 8.2 MB (8204047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3c9f480c56b0b8dd73bb992bb36f1cea0d0f8711e1db1c39e3137b1db9c3d7`  
		Last Modified: Fri, 16 Oct 2026 20:27:28 GMT  
		Size: 1.3 MB (1327528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9a3530daf9ac52041c82f6f9b4da115230526f654b3ce0997298c57173ef0c`  
		Last Modified: Fri, 16 Oct 2026 20:27:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22195fe692943b0a237da548d836c7e5f64f500dd1f26ebb217fd5c315d6ae96`  
		Last Modified: Fri, 16 Oct 2026 20:27:27 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0086a8ca85a5bcd7fd538ea508afb3c028618f07a70e0674a9ae57e9e3bda6ea`  
		Last Modified: Fri, 16 Oct 2026 20:27:30 GMT  
		Size: 115.7 MB (115726342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc257583a64e80e28d57844c2b35132556f29af70fe4e304c10e3b7dcc713ff1`  
		Last Modified: Fri, 16 Oct 2026 20:27:28 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c38bf1820580e82029dc504abe1d1adaa14202245a862f4df20b46c1580aaf1`  
		Last Modified: Fri, 16 Oct 2026 20:27:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58e95949995f7ce75aa0eaf78b93d035805de27d8c0b41777a056c8391ad78d`  
		Last Modified: Fri, 16 Oct 2026 20:27:29 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07653d9160cb4a070a0881c52a70c70fb0250746efbaa35d3cc357237c9232e`  
		Last Modified: Fri, 16 Oct 2026 20:27:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:4a15633b6af36b33c5a399011bde5bf37eeb2341fea8d77d7750fd7e5cd4b4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6066541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba57b72f3cf23170e3ab4136585efd1f9db387ab7915e463289b044bcb8c9a7`

```dockerfile
```

-	Layers:
	-	`sha256:345852930d9ca157e48a18530366e0199800ae4890b1971ca7a40f62fb69bdb3`  
		Last Modified: Fri, 16 Oct 2026 20:27:26 GMT  
		Size: 6.0 MB (6015021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dcbed4ec815880eb917df5520871e7099676e0c6e21e45e070c58bf89afaed1`  
		Last Modified: Fri, 16 Oct 2026 20:27:26 GMT  
		Size: 51.5 KB (51520 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; 386

```console
$ docker pull postgres@sha256:121189b4c8ba8b6f9e5273464a76262f694cbb11fe58b1c06f047da0c28edef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (99012432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0dc08c17db0d762ee9395f8893a6c36749a7b8107e0957b08b8f3a6570b6161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:26:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:44 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:56 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:37:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:37:16 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:37:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:37:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:37:16 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:37:16 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:37:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e810c9fc62cfbe6492d100e0786310a35f233f713e9c74afcdf794912dbb4c2a`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f2094cf8cca0237a0bd5c353ae485bde90c46387f42ef338c94ba62d9d8fb3`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 6.6 MB (6631425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a58fbd3074059d0ddba9c9b4da35ddc2c04989521c1b62e6a451e9efa72d256`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 1.2 MB (1225853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a1fdd2f0f674e1d10b2e1ad971b20934f2f86b638d7870e9b342aee44f75a8`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 8.2 MB (8203975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b010081f83bb9be18366845e78f043f13c55db32833b3d8147c6a3a1f09397d`  
		Last Modified: Fri, 16 Oct 2026 20:37:31 GMT  
		Size: 1.4 MB (1429467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96080af8bd9ca8b9ddcb0bdcfe34c7481a1f2724be9572242a9a812f8003a78d`  
		Last Modified: Fri, 16 Oct 2026 20:37:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e593e5e1aa0304bdba31e18af4dacb5e39d76635ba8d29629322318f7fe3b9`  
		Last Modified: Fri, 16 Oct 2026 20:37:32 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ae3bdb270ab8eb73d4e561229bbb8421cdfe4762b3b66fb019839406c558ac`  
		Last Modified: Fri, 16 Oct 2026 20:37:34 GMT  
		Size: 50.1 MB (50135951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8691a0510d5ecda5da2aa5013ab9a261c6e82d41ca5aafb4bdd361fe49b4a5da`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 21.6 KB (21612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e595a3fb5459128f633e979ed023703a7f818b88fd47071ed4e1d22bf84dae`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb708712f69cadfc496e647d47299e7ed2372b3bbe00584395a9d25e2b027764`  
		Last Modified: Fri, 16 Oct 2026 20:37:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be54a7f473e27efa59d76613239755065debee9c02f0324d5b4f9d3f58a6699`  
		Last Modified: Fri, 16 Oct 2026 20:37:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3169dd50de435b3df4a28004c20aed6f9ffef2588466b34bc3f18727fee53020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5189718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c99669b186324f73ac17378313ae4176d056eeb0e0380d15e0e7106fb2bff7`

```dockerfile
```

-	Layers:
	-	`sha256:313f50999668b0ca279feb5e6adcedd367d6ca0288ca9f8ddc4a9afc81ed727a`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 5.1 MB (5138476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:544527fd29e31b05fe84adfe2e9183b93f52239bab63f024e324a1cbbc2708b1`  
		Last Modified: Fri, 16 Oct 2026 20:37:30 GMT  
		Size: 51.2 KB (51242 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:8bb5a837d33753d84edd86ccf6de9c33191fda6df77e88639d27d20c034bda5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176832909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc456098b040babcb424e97824192c71f0cc140bd1d270d458ce5d51760b95a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:25:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:36 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:00 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:28:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:28:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:28:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:28:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:28:15 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:28:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:28:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:28:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:28:17 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:28:17 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac235decc3283cbb6a209c9b2df7abf9f39d50e6261805e86dbc624f087a6a98`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953668be41bfe6e19385d5da5117dea351db35a2bb41d446353e542b004a4703`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 7.1 MB (7076890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0943e497d01ff661ba6a4be3a618eee1bd41ff2923a7fd4b9fe905abe8d6b166`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 1.2 MB (1214852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9258e2addef014bb4b16daba885cd2d05c4fd404b59cc95c4460838a2804d8`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 8.2 MB (8204067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173b4861c97b7684e6215c418857d6c81aae3ccdfedd930791ae4b58e66fec48`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 1.5 MB (1518170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4536d99014f209945f615e8b80fbfcd1c593359dba597a0e5d1985dd7f43bc3`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b44bd83ff2539fc87aae0f399f806f4f3e1da77950ad848de22cead97de9e94`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9247a601ace9d7825b66dd2121ab6adac5cf6df4471756bb50f8a6f47de1b4b4`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 125.1 MB (125134877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d19a53fa107ba2357318f2374e682e43775838c77a236cf2c89bc21b7a21ce`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fcc7203cf479fbcfd0824c6250d2b0595e267438e003e473d754df47cc3adfb`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b99b7be8dd00e496877c83d9bc5d94045f95dbc97fa05c49269c0d5e2e9cd2`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d04c232187cf66c873a575e1fc993bbc0b5f6f7907d457ef9e74b9a9396a9e4`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f5bc4654f5fdfb27f6a6563e192369247367123c58150c53ba8eb4426b3a00e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6066670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754a4b20b8f9195a35518bb5e95ed756c4d06ebfd6c8837dfb5bcd057ee04991`

```dockerfile
```

-	Layers:
	-	`sha256:a38009354b41d29e4f762428eeeea4b64ea865a1b4f267f269a89b7708a72e2a`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 6.0 MB (6015328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85810b0c9759015cf631f1a64142b23f1bc114b997ea42681f51b163a2b3f74c`  
		Last Modified: Fri, 16 Oct 2026 20:29:34 GMT  
		Size: 51.3 KB (51342 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:7e35aeb5cb9b49e23b491917eac8d0ac41bc902767d803d7e3139ccc36d05566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178992720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47fe46c584b74f3e254508216de501909b4c289ecff50c859abb3fac13db235`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Fri, 16 Oct 2026 20:25:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:25:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:25:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:25:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:25:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:25:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:25:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:25:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:25:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:25:52 GMT
ENV PG_VERSION=19~rc1-1.pgdg13+1
# Fri, 16 Oct 2026 20:37:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:37:22 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:37:22 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:37:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:37:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:37:23 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:37:23 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:37:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365dfcde8942f4554b5411a2c34ca57d67e9dd676f15156f34507189e523362d`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abbd8b4a456aaccaa2d0a863f081d7f8184718171002a990420d072e1ed0422`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 6.4 MB (6408401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa14bd0d9b5fe485c314f3e19c52a25ba2eb23a7665eaf5a87ccf4504ca5933`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 1.2 MB (1230213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b0bdf6061741a4d919e9941eec902d8238c53930cc5888f224abc74eceb931`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 8.3 MB (8258918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddca2ab8eeb7e6514e695a72052ac2a54ed32d666301d7c507c1289d3d279f8`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 1.5 MB (1510537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b2e35518e72a1392338446973e2672c14585f3b7d9f21d2672327763ad77ca`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f676bc10fa46c1106801f73738502e0ba1c15b1df20f41c47f26993683e3b3cd`  
		Last Modified: Fri, 16 Oct 2026 20:37:53 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4410eb776893b1f2c35ae58fb2a195ef760f3f43ead66ef6063da2cc02530413`  
		Last Modified: Fri, 16 Oct 2026 20:37:56 GMT  
		Size: 131.6 MB (131642944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fcb6375f4d63e108a4faf44cdabec2a20af8833a8b1c55f3eb2a7e833951d75`  
		Last Modified: Fri, 16 Oct 2026 20:37:54 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372d1afd169b2228e07feb66bd8f513d44c70884d0671e19fa953afc6b302a86`  
		Last Modified: Fri, 16 Oct 2026 20:37:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ba019ba4a34117164552ca453f07f18149a94c5e3d3ac32f681b84cd6e89f9`  
		Last Modified: Fri, 16 Oct 2026 20:37:55 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55a1d56ddf3657b483d1c81bfdf76972cd927e4320755692487108e38b3097a`  
		Last Modified: Fri, 16 Oct 2026 20:37:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2d98ad557f499b78bd76edb28b11fb844af76c70b27121ccc7363c30cdc5d82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6076686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc59f1f68c3797af9e63c136d738cd1789ac9f503f893cd7e8fc6ce62ade9a8`

```dockerfile
```

-	Layers:
	-	`sha256:ed9d86b4bea24253b67ff1904cfa4ac706fcab88dc3957fe1ed008b965fcfbcc`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 6.0 MB (6025396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0905b8519bcae0034245d3b3774aed3f30a14a68b13b493f27e1ec7205c1ff4`  
		Last Modified: Fri, 16 Oct 2026 20:37:52 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json
