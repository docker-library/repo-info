## `postgres:15-bookworm`

```console
$ docker pull postgres@sha256:b0c5bab0fbba8e0c221f73b1dc6359ec35f8650074377e727299df248fc8ad51
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postgres:15-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:fafb7480959eeeb7f1e43b479e642ffef2aa0f067242a1954ab41f2d764e2786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152983060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cd37850629c85ffa07818ca9a02568289a360aded79d54aee9401cb684667f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:36:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:36:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:36:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:36:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:36:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:36:34 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:36:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:36:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:36:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:36:37 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 01:36:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 01:36:37 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 01:36:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:36:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:36:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:36:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:36:49 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:36:49 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:36:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb16e7f6fed3dd1778a0f100c959940780a5ace2c0a4b1355111e85723e27dc5`  
		Last Modified: Tue, 14 Jul 2026 01:37:06 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e884dd10cff7696c07d4061ea7bc3dfa290d562ba0c070461a4efac25159281d`  
		Last Modified: Tue, 14 Jul 2026 01:37:07 GMT  
		Size: 4.5 MB (4534208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6c2306c2c04523f973e672227ed9505dea137f6f3a0a4b14c950adb49348bb`  
		Last Modified: Tue, 14 Jul 2026 01:37:07 GMT  
		Size: 1.2 MB (1249495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d650fb15677a27d4c09c657a613fb154392388dca6f73a00edbde7b989289cff`  
		Last Modified: Tue, 14 Jul 2026 01:37:07 GMT  
		Size: 8.1 MB (8066504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824a4a14323be77b8c6f686717ed4c335d961431d02de7bc591b433157e81811`  
		Last Modified: Tue, 14 Jul 2026 01:37:08 GMT  
		Size: 1.2 MB (1196438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bdb817fc34272f81c9590a47b961180b7afb1d0ae3c4797b1464821e20311a`  
		Last Modified: Tue, 14 Jul 2026 01:37:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82ec0ad17f9cfbbe7d7f387210af888945012e425bad620f9936f19588258f1`  
		Last Modified: Tue, 14 Jul 2026 01:37:08 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9c19ad3e2c6ae603f305253195b394666ec7ad5993e4d07c9368edd0f1a68f`  
		Last Modified: Tue, 14 Jul 2026 01:37:11 GMT  
		Size: 109.7 MB (109682988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c833a0efd3c9f55ccd042dad1876fab5f1bd30ac912e10cab7cd2584e25a8df0`  
		Last Modified: Tue, 14 Jul 2026 01:37:09 GMT  
		Size: 9.8 KB (9773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b70ddf3fbb473eba76fc9a3428fb2aff1629c3cfe93f426d0e846fa0c0c05d`  
		Last Modified: Tue, 14 Jul 2026 01:37:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e813a43dbb579ad5f1e35c38d3448e868609811b98db6dec0a84bd9e61682242`  
		Last Modified: Tue, 14 Jul 2026 01:37:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18cc48df0e79e2f85f45a8d4193f64907d94b1b93240f66fdbc1491604ea9797`  
		Last Modified: Tue, 14 Jul 2026 01:37:10 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef53f7ba71d010a33ee4661feaad40396b56c33c90d9cfaead7c1a9af0429e1`  
		Last Modified: Tue, 14 Jul 2026 01:37:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:2a937aabf32bc1e64ce0a5cb85932c3ffc6418d439096976753ec8006c9b7c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5896715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef844615fe43e84b07c34dc6228519845fd7cda9e44696c66fba9042afe64b46`

```dockerfile
```

-	Layers:
	-	`sha256:7e828dc50d58baa4500557aea73103b07ee517da672691edd26756f3a8a88d67`  
		Last Modified: Tue, 14 Jul 2026 01:37:07 GMT  
		Size: 5.8 MB (5843420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93e9f3ed95de016b810767f00cd9c91a021d91b922408250275044bf8a4efcee`  
		Last Modified: Tue, 14 Jul 2026 01:37:06 GMT  
		Size: 53.3 KB (53295 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v5

```console
$ docker pull postgres@sha256:933e8997858db2043ca780dddb1b8145a5fbc2fa7e424d7aaf217e20be2749b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145925075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95a58d624c6aa219b29187c72b691fc4eea0ab643e9082f2ef0f8d38bf619b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:04:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:04:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:04:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:04:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:04:31 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:04:31 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:04:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:04:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:04:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:04:37 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 02:04:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 02:04:37 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 02:19:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 02:19:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 02:19:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:19:08 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:19:08 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:19:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1c9b9cc9660939ca6a733102f55ee8694e0218bfc63bcd2cf72f4093124edc5f`  
		Last Modified: Tue, 14 Jul 2026 00:13:52 GMT  
		Size: 25.8 MB (25767982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e80fb1b8075ddbf0740682d029a05c9bf5b2b4ba68a6d91390a11d2bbe45a6`  
		Last Modified: Tue, 14 Jul 2026 02:19:26 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa8ad8453484d4d72e9f9b5d2599521d8b8becbd7a638087631447bfc7eb965`  
		Last Modified: Tue, 14 Jul 2026 02:19:26 GMT  
		Size: 4.2 MB (4151293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5081b6780af58cab428c319eeaba8d6bad8113d6486183d2d2833c5dcedd6ebe`  
		Last Modified: Tue, 14 Jul 2026 02:19:26 GMT  
		Size: 1.2 MB (1220254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9d559c133b5a256ae1ceefe05c78b9a14d49c7452900c1bde20a121b766577`  
		Last Modified: Tue, 14 Jul 2026 02:19:27 GMT  
		Size: 8.1 MB (8066648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fd3379549c7be8e5a64956562d4e5584ba482effce9e8975f773f0e32dbc98`  
		Last Modified: Tue, 14 Jul 2026 02:19:28 GMT  
		Size: 1.2 MB (1195133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3621d12afc587f62a99b0d46b9b93cfc82a8b11c71dd8c9ff274bf174c910982`  
		Last Modified: Tue, 14 Jul 2026 02:19:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8250dd086d43fc4193c03028bf348c75ea31294eed1c0c64b185d25c7ccb20`  
		Last Modified: Tue, 14 Jul 2026 02:19:28 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d997e479987e0f0308706ed6af63e3d4b56392d5df01fd1ccc06eef6c4019f92`  
		Last Modified: Tue, 14 Jul 2026 02:19:31 GMT  
		Size: 105.5 MB (105502964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd140e72440e2559ccc5d75e7251f51be8e3b25573d539b422943deea54def01`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 9.8 KB (9785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0970d9072c3d1bfc6a2f6a0afc61b445b6d06c4d392d8abf6694709190e91ddf`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e754a9ddf0e7ce81c878330527e85e2b120d00ec33ca1dc7ad75965f3acff187`  
		Last Modified: Tue, 14 Jul 2026 02:19:29 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b28ed67138457b56ae92d278366982b6ab3970d81796306d0399fc40c915a1`  
		Last Modified: Tue, 14 Jul 2026 02:19:31 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5140d94402bc7d6e6ad7a07fc2d27d92b2ae2279d3073d728e036ab345324a60`  
		Last Modified: Tue, 14 Jul 2026 02:19:31 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:0cc14c2171adb31a3b202cea1f374704740a078f3b41e01687bed559c3571c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5911024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c57013f1995cdf3efebab31b0b8e23cb2f73eae9a988534998d845ff874f976`

```dockerfile
```

-	Layers:
	-	`sha256:fb6070b8a5c3c4f206f10193198da8f88bb0369b7a151650d4c2af6b6594b69b`  
		Last Modified: Tue, 14 Jul 2026 02:19:27 GMT  
		Size: 5.9 MB (5857521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcead1c09f337946a4fee41c083240b82dfe51dc44932a1f924b89f15e5c633b`  
		Last Modified: Tue, 14 Jul 2026 02:19:26 GMT  
		Size: 53.5 KB (53503 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:7680c69571dde180d3a3aeb7f7fdaba5ee6a14c77cebe91a4cdf43f652d2b0cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140982457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b1826fcac3533d1632c786adaaa3391495ac44105c03ebcbb1e43155d72964`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:16:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:16:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:16:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:16:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:16:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:16:24 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:16:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:16:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:16:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:16:28 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 02:16:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 02:16:28 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 02:30:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 02:30:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 02:30:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:30:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:30:41 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:30:41 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:30:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739e70591a980fc85c5e3a0c70558ac896921070dc28254ae70389c6fc521949`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5450b13d82ae1e4f4c42c981ae77c1b359b7871e55f1812c456c8f7921600cae`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 3.7 MB (3742718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c473d5846308419246106fd02707ddb548ecba39f9d85685fc6e857f3b220beb`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 1.2 MB (1216175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4d287cabd35743bd40cafc2eef56bd689c072a72a96268c609cf8348ebf119`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 8.1 MB (8066412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ad9bb4b2a2f80691b46e8f938722a8032d306c4159514f60c77549a3a1382`  
		Last Modified: Tue, 14 Jul 2026 02:31:00 GMT  
		Size: 1.1 MB (1067323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a93c6de533f4646034fe5c4b9d354932d804b99621ee6e84a26fd71de5eb75`  
		Last Modified: Tue, 14 Jul 2026 02:31:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e383802d25326e74b134d2338eaf2af2b0fe5649595f10724fb0dadd9b644c9`  
		Last Modified: Tue, 14 Jul 2026 02:31:00 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfab5fb4a4572d15c808b05f79144bf068b13af53fd011c7d45dc538532a7fb`  
		Last Modified: Tue, 14 Jul 2026 02:31:03 GMT  
		Size: 102.9 MB (102929251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c6fe40792cb17f192015fbef2eabbbdaa99d2b224b1e7af1735841ba61d6ef`  
		Last Modified: Tue, 14 Jul 2026 02:31:01 GMT  
		Size: 9.8 KB (9786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55ef70f00f9beeaa29496db6cfcc01ad1cecb0a28c8b90da5cd432b1f9daa4d`  
		Last Modified: Tue, 14 Jul 2026 02:31:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28c8845450ede52528e6661e451fe612e0d03bad898c6479d15079f6da0bd31`  
		Last Modified: Tue, 14 Jul 2026 02:31:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c230d2bb27cfbad00bf61ef208bacd5138f06446e4fffccab3214ab596782a55`  
		Last Modified: Tue, 14 Jul 2026 02:31:03 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752e9bdf99d116dfc887304a5cdeea1d6d41be704370ce0459555d2e27fe7ba1`  
		Last Modified: Tue, 14 Jul 2026 02:31:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:022573f7eee31ee3404d4b4748ba16f2f380e7ba4b0f2e97819d027e28140cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5910279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13eb3e429da481a208cd26b3a11dbf60c2f8a97e6d79a69b4040a38a0dc9c2b`

```dockerfile
```

-	Layers:
	-	`sha256:00133d0ad61f717c1d050796303b14edfbd849a34c70b637fc4dc100062b840c`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 5.9 MB (5856776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33b8ce1ae4827bc28cfef51b503983a64787fdd78c9c96cac1fbde02b2e6db4b`  
		Last Modified: Tue, 14 Jul 2026 02:30:59 GMT  
		Size: 53.5 KB (53503 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:92c67be3a884bc55d99e73dab0baca3f7a2c1591dc1828abadfdd640b10866c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150987135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a69f282457f54628ec3d617caf4280ac16b1e6ddcb087cb74658ccd5e9389c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:26 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:39:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:39:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:39:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:39:41 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:39:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:39:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:39:45 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 01:39:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 01:39:45 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 01:39:57 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:39:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:39:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:39:57 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:39:57 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:39:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a2eacd519a5407a853f6d57bb7dc8e91b97769b8389505da8982fd5ca05102`  
		Last Modified: Tue, 14 Jul 2026 01:40:15 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1821fe9f9dcb51371cd4865ce476ed48a6aa80b7f2a244d42dd0644fb10eb2c`  
		Last Modified: Tue, 14 Jul 2026 01:40:16 GMT  
		Size: 4.5 MB (4519510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47a3f10fe8d7191c828905e77e7b73ed9a566477b2e2e16a07bbd28b471a18b`  
		Last Modified: Tue, 14 Jul 2026 01:40:16 GMT  
		Size: 1.2 MB (1203332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a594e606c16c91bb3530556912a6dbd13a3ec18f24f2d0c1dc32b15ac459c35`  
		Last Modified: Tue, 14 Jul 2026 01:40:16 GMT  
		Size: 8.1 MB (8066458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebeeeaa3d2ab97e32ab42ba46c82a548ca429d0d32cbd32589c0f3ee805cbd4`  
		Last Modified: Tue, 14 Jul 2026 01:40:17 GMT  
		Size: 1.1 MB (1108983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ece6589c25f7b9144114225352a34875ac9b3e2f768ac3a1b43a737cc060a1`  
		Last Modified: Tue, 14 Jul 2026 01:40:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458ba354de6c923089e45129e13d4063745d14c13f6a0856fa6a0096e55c5cae`  
		Last Modified: Tue, 14 Jul 2026 01:40:17 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f650b87816bee4ecfa2625cc68dc0a56c33c6b7607cd68f868fbd24cbab3539`  
		Last Modified: Tue, 14 Jul 2026 01:40:20 GMT  
		Size: 108.0 MB (107950811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a043a338a378145395651b449f494cc2a2b61a76fb29a51ee665b2852641cda6`  
		Last Modified: Tue, 14 Jul 2026 01:40:18 GMT  
		Size: 9.8 KB (9776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a609742390a2cd76d81de8a4e60476b5e9738373a1de7dc812f7b4fda9bb94`  
		Last Modified: Tue, 14 Jul 2026 01:40:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc15617f563f35074451ef50a24f45d0a53d49e71af62930f52618a527f546d1`  
		Last Modified: Tue, 14 Jul 2026 01:40:19 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4689f7850c65320c203058c374695099102e5534816b1f92dd8d282e5e40fb`  
		Last Modified: Tue, 14 Jul 2026 01:40:20 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342876eea270a0ab8ca4563e20d58d18024f999fef9229039d2e99cb865ba415`  
		Last Modified: Tue, 14 Jul 2026 01:40:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c921895c599e7c5ef1589904c978acb3c8a45ea1950bbfd9e9f83e885ee24133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5903271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac496410452a9ba109afa1b104e22236ac496eeb7b57437b1e1e666870930e5b`

```dockerfile
```

-	Layers:
	-	`sha256:6e74dc1256ed19cb004c7915a7acd6a0149abc0878a397caeb1765653c6da802`  
		Last Modified: Tue, 14 Jul 2026 01:40:16 GMT  
		Size: 5.8 MB (5849731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b0d29121aa4485ae564b698e413677020de275a80c1572140fb5d481e628a7`  
		Last Modified: Tue, 14 Jul 2026 01:40:16 GMT  
		Size: 53.5 KB (53540 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:b2376a954cff6aa4dcae8bb240b996106e318f3f470bb85207aed506925fb8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161703792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1f03be4e828686ac0f06d52f0862740b8c86a02a283b8ceaae5eaf76182c75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:39:00 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:39:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:12 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:39:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:39:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:39:16 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:39:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:39:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:39:19 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 01:39:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 01:39:19 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 01:49:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:49:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:49:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:49:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 01:49:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 01:49:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:49:07 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:49:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:49:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba94ccdd06331e406d0aaeffedf7d70ec5caf3e71a2d5cc933cbc7aae4a7ae9d`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60585cd641babbf6badeb8007f29386055360c03c2b8de4d001537356835562b`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 5.0 MB (4966162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd857827c7c86e0c381bdb11cfc93e8aa294fc6dba6c54907ce4b4dcdc77ed9e`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 1.2 MB (1218687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7cdf3f9b8fadb5f024fa5174d7a4ef7b65fb8bd04bcf8aeb850d3fd1031d71`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 8.1 MB (8066458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d127f9fe8a7e35607594b6960197d3d5949f4ff91976ae36874f2764200dc4`  
		Last Modified: Tue, 14 Jul 2026 01:49:26 GMT  
		Size: 1.1 MB (1137530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f725473c877df9e8bf7c6f153c031cd740274c9f1197c8fd5780f8b78be8d550`  
		Last Modified: Tue, 14 Jul 2026 01:49:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fdfa27d4f19cf62acf9d7fd64c649bbf3b205e374646b90d3f6b2dcc055ccd8`  
		Last Modified: Tue, 14 Jul 2026 01:49:27 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7262e033e3e22372678b027419be2302d9d3dd064d023d1622ec9691d9e0d604`  
		Last Modified: Tue, 14 Jul 2026 01:49:29 GMT  
		Size: 117.1 MB (117073111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124101e97fe6f9b7596d3a733705162350397979d06290066d3dd728f726b548`  
		Last Modified: Tue, 14 Jul 2026 01:49:28 GMT  
		Size: 9.8 KB (9780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce126bee9c59c0cfb45443aab1692374f143b2a852a2d5408e5661d952acd0d`  
		Last Modified: Tue, 14 Jul 2026 01:49:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8adf5d48491ff018f35bcd3a9eff5c7930f7d88cf89cc90674e7cf02b59089`  
		Last Modified: Tue, 14 Jul 2026 01:49:28 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462e6e310bcb48f60334cb603d72767712f81583e1cfb0eb25b1f870b477945f`  
		Last Modified: Tue, 14 Jul 2026 01:49:29 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b179006ce3f8cf1c9842dff829282aa035bc86623f84c2f2d4d709dfc563cf1`  
		Last Modified: Tue, 14 Jul 2026 01:49:29 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:cbecded6c30cbaaf5a3e46b320a9c6cb91d2aa770c0c7e2eb8faeb78e9183e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5908916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477bf51e97a40bfac51421b1c96582d14b2f10c071bb2462567150322cc69394`

```dockerfile
```

-	Layers:
	-	`sha256:74d52f20d0e8ab489833648535b923b51c9dc243b7f354235f9219124585a535`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 5.9 MB (5855664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee51a2816782c753fb00f7c4c62025c7493de5c072ed8e354e9e21e45cf9ca3`  
		Last Modified: Tue, 14 Jul 2026 01:49:25 GMT  
		Size: 53.3 KB (53252 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; mips64le

```console
$ docker pull postgres@sha256:14f0edb8fafd278d7c3604150f31947b20af180792780ce0c274d51d708b29ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151786911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37712c20d8e3712ca38c169baa5df4831d6b8c5ed609d0c31b9e9ec5db80b24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 07:41:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 07:41:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:42:29 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 07:42:29 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 07:42:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 07:42:57 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 07:43:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 07:43:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 07:43:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 07:43:39 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 13:45:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 13:45:44 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 13:45:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 13:45:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 13:45:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 13:45:48 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 13:45:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 13:45:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 13:45:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 13:45:51 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 13:45:51 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 13:45:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d21b0b947b634d95463968de77b75d10281e25c61d8caed6ddc0fca630368421`  
		Last Modified: Tue, 14 Jul 2026 00:13:36 GMT  
		Size: 28.5 MB (28523225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15c646e0d51c0ac640171fddc89b7a4d230d65543fafab70e8729fd96a1149f`  
		Last Modified: Tue, 14 Jul 2026 08:59:43 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827ee61e769a03c1f5ba821c4513dbdd18ece78b6e9e528fd81f7ccf6a79bbb3`  
		Last Modified: Tue, 14 Jul 2026 08:59:44 GMT  
		Size: 4.5 MB (4475169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749d12796792952bc94045d72f04d0c4598c872634e6664f3531a715b2b4227`  
		Last Modified: Tue, 14 Jul 2026 08:59:44 GMT  
		Size: 1.2 MB (1159228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b817be9e7cb468ca31ad71419bb38707a069a87ddf131708ef6d123b2561d8e4`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 8.1 MB (8066663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83317881d43c3df345bd7a5f14539953e6ec58f1e5d7f5570095ed3c52cb412b`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 1.2 MB (1182920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6235b650f46021bf4b4dc41969bba96369aa20548df0f81e14cb8d08f11be0d6`  
		Last Modified: Tue, 14 Jul 2026 08:59:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c4fbafd561a158b37f14aeb1e6d43d077e33f0c47edb8db5f07ee5f477e0fa`  
		Last Modified: Tue, 14 Jul 2026 08:59:46 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3a612e7a169a6c77f67fe65dd0245b41a9116c74864fc314427a29d58ea73`  
		Last Modified: Tue, 14 Jul 2026 13:47:57 GMT  
		Size: 108.4 MB (108358902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cfe43c84708b0ada820b96ef3434ae80689fef55c3d995b29b8286d38f0a6d`  
		Last Modified: Tue, 14 Jul 2026 13:47:46 GMT  
		Size: 9.8 KB (9781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd932bf0badb4c5a8efb845269dd2679c37a86d0fbc939dcb8fa8f77233aabb`  
		Last Modified: Tue, 14 Jul 2026 13:47:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2309aa0b2a41475ddb3c7162811310a5408e62d24bc40cb71d3cf09a6a98003a`  
		Last Modified: Tue, 14 Jul 2026 13:47:46 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce31d7c353ba695b0c1f9cf553190bb848e05c5d340f16cd4fd0d22856b9b5e`  
		Last Modified: Tue, 14 Jul 2026 13:47:47 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6809c00ad74be557e69cff1ef722044a4885bac849bafe04a9ffbddf6e59c8`  
		Last Modified: Tue, 14 Jul 2026 13:47:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e6c018bd31dca033035bf1a384a1ed48f633092ab9ea76520f41e33672760f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 KB (53162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d15263b6b40062df4f399534cc0ad3a4483ba5e4b6de47ab3a6adca8fe86df`

```dockerfile
```

-	Layers:
	-	`sha256:74bff611ac6f7c045385597265f228fb83717b4d17653a167ddd6f24940d6f07`  
		Last Modified: Tue, 14 Jul 2026 13:47:45 GMT  
		Size: 53.2 KB (53162 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:09839424d0a3b6002306ea3a1173d328b05edf02e5f86310f9a00a72d2b32200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165714674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3513d4376f5a84860b2f957a9a250db80b99ac865837ca81b7c5101e38a91e44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:24:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 03:24:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:25:15 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 03:25:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 03:25:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 03:25:26 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 03:25:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:25:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 03:25:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 03:25:35 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 03:34:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:34:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:34:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:34:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 03:34:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 03:34:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 03:34:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:34:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:34:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:34:17 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:34:17 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:34:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20acb8bded812c5804f95dea74ef2dc2101c8f147a395bc8c72022f073292ae6`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7da70dc4ff776eaa7b80eb0209d54e2a3467a7baf66486f60394518b20922a`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 5.4 MB (5368678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dcaf7e146d7ebdbb827690b0282db8d65ebe20b174f6710e277990361111e2`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 1.2 MB (1208271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4af0c50f138658e95a850c4e79b907a3a189083e680c841d1e92b5fcdc0bc1`  
		Last Modified: Tue, 14 Jul 2026 03:27:35 GMT  
		Size: 8.1 MB (8066567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fdbbf47d14f7976e34442e335b036234bfb8a0aeebcf1df9c1b15c4518aab0`  
		Last Modified: Tue, 14 Jul 2026 03:27:36 GMT  
		Size: 1.3 MB (1283670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90933cd6f802b7c837bc275af6b2a3611e8770c76d8b5d3d69433d307fed80e0`  
		Last Modified: Tue, 14 Jul 2026 03:27:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6b2f55a0188cd12323678e9ab20c5dec70b64c53b8a93916f1600bbdd4fa97`  
		Last Modified: Tue, 14 Jul 2026 03:27:37 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9f415137b2f86063ba5ea92d3f1a7b6ceb208294487e91a25be15ca8755844`  
		Last Modified: Tue, 14 Jul 2026 03:35:12 GMT  
		Size: 117.7 MB (117690279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a677287f2a46727a02d29b6a66ab2a5bc2fd25974bd2b630b0b954aa6d21cee4`  
		Last Modified: Tue, 14 Jul 2026 03:35:09 GMT  
		Size: 9.8 KB (9781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc4c80946142e8705513bcc693be4620d1e22c36775292ffc6856e2cd99250`  
		Last Modified: Tue, 14 Jul 2026 03:35:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a4fa1d609362a17f7e6929b78a46587babd0290208c3ec6acd158febbdcd84`  
		Last Modified: Tue, 14 Jul 2026 03:35:09 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7976976e1786e2ec9ccb246acd07d97d951644677d7c442ae30c10724427c97`  
		Last Modified: Tue, 14 Jul 2026 03:35:10 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368e878f42cbc4efcdb095ff7e9bbcfb0370230b841ea95794f64362aabcd368`  
		Last Modified: Tue, 14 Jul 2026 03:35:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:579a2cab0506045db75290f4c6990816ab9b1bd335c1aefaf4fb47d39fd140b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5904130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2df41f578eb83b6a605402418c768b759d02026822c2be2e3572d839272fa45`

```dockerfile
```

-	Layers:
	-	`sha256:e819dce173783bc9ec638a432ada53c779f1b8e288e3a030eb15d1c746b91968`  
		Last Modified: Tue, 14 Jul 2026 03:35:09 GMT  
		Size: 5.9 MB (5850781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58636338ecaf6ddc0050b37da658dd0bac88d7401fb29d2729a345349973c582`  
		Last Modified: Tue, 14 Jul 2026 03:35:08 GMT  
		Size: 53.3 KB (53349 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; s390x

```console
$ docker pull postgres@sha256:26f317f77f086260d3a9c590a4cd99e10fe2f9fb51782d191a9026129d530946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162158787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ab52d468ff7c5464729710d6776cb65a514b032e5f239bda49526233619440`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:20:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:20:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:20:42 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:20:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:20:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:20:47 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:20:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:20:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:20:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PG_MAJOR=15
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 14 Jul 2026 02:20:52 GMT
ENV PG_VERSION=15.18-1.pgdg12+1
# Tue, 14 Jul 2026 03:02:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:02:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:02:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:02:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 14 Jul 2026 03:02:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 14 Jul 2026 03:02:34 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 14 Jul 2026 03:02:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:02:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:02:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:02:35 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:02:35 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:02:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3a455e8c21d2bc475846b888f0c2ad2e57d49bf3e3386598436709b88f2b29`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7717bed772ad4a48ef6e5028b898ebc1e14f1799e668308ed1c439c3c83534b8`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 4.4 MB (4391213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf4d0c955b2bf39a0bba638425f0050724f2c1c181928dac1e4b278697bc261`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 1.2 MB (1222817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96057a86d9388db41c384c27de421f76377dacfca779723d7734b900ec91e144`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 8.1 MB (8120755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a21301481b96a18b24b1a31cff440936467c10d577172cb159188af94d6f6e5`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 1.1 MB (1097074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27cf75dc2e665579a5d74c515ee5abfc7b416ff8b1be39fc630a08f9b50d250`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a2ab9a93f8f2221ef8353c2d66ca42ddefc32cb323f2f9b902ddd303ba466`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94490dfc9c1f7510b607a08bba5616dbeb29f04ed092dced103d50afcd27512`  
		Last Modified: Tue, 14 Jul 2026 03:03:07 GMT  
		Size: 120.4 MB (120417862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e71fba9786496dad83efda2cc04d3de2eabd2147846d0236b95b51bbf002cd0`  
		Last Modified: Tue, 14 Jul 2026 03:03:04 GMT  
		Size: 9.8 KB (9782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d45b9db971dfa32c4f846031bc3c11cd67b084abacdefd14e7139796af57e8`  
		Last Modified: Tue, 14 Jul 2026 03:03:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28aff6b338dbac769b898d9a5d0cd2daf05de08b9b9d73ee61909c07cf5365f`  
		Last Modified: Tue, 14 Jul 2026 03:03:04 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e840d892f27d8fdbdc6d2f100b0c449e25746c8e9acbc2240b85d60659b7ae`  
		Last Modified: Tue, 14 Jul 2026 03:03:05 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5af4b190e3265d3102fc48fe65633a46477a98361a07390092d264d0f610c9`  
		Last Modified: Tue, 14 Jul 2026 03:03:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:90028759ffa1b9c119b4878c08acc7e19f26b8bb234acafc18f6b2de25ccd5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5905436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48748c242d6ff881b4e404a31f2f524a1a8b43649bd0eca0cd022c3f55d9c979`

```dockerfile
```

-	Layers:
	-	`sha256:db448304756e7a4f4b37d456907e1942c3ceb263ae2da08db6897ced84934f53`  
		Last Modified: Tue, 14 Jul 2026 03:03:04 GMT  
		Size: 5.9 MB (5852140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb95b460c3055452e6ac8ba56c4b3de8c6e3677e04abd72677ea9e5d1cabcb6`  
		Last Modified: Tue, 14 Jul 2026 03:03:04 GMT  
		Size: 53.3 KB (53296 bytes)  
		MIME: application/vnd.in-toto+json
