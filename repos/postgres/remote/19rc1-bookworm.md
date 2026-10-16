## `postgres:19rc1-bookworm`

```console
$ docker pull postgres@sha256:228dc3e5a9bd18343efeecc7ae3f52aee9b6cf3a9dca5159ece1eef254a80f06
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

### `postgres:19rc1-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:83dcaa2c59b77a3eb9c47040d28f3f4bb0d53cacef8d1312d9d3d16caba8813a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161284754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22300198cc4c8d1e71f5b222760130e7eda694829560c34e01fc5bdc5566c502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:26:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:56 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:56 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:00 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:03 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:03 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:03 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:27:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:27:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:27:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:23 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:27:23 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:27:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:27:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:27:23 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:27:23 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:27:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d982782c1a5fe95a7b879bb7cd2b34398ca0acfa724da8608b848b453db56d`  
		Last Modified: Fri, 16 Oct 2026 20:27:42 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a130f3fae96727030fec668d09773d90c6d02c57154e39cd807680c63e76d59`  
		Last Modified: Fri, 16 Oct 2026 20:27:43 GMT  
		Size: 4.5 MB (4534230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d0da8d7a0211f6ade0159abe00109ca329dc80b9a0b41b2333327772d9ea55`  
		Last Modified: Fri, 16 Oct 2026 20:27:42 GMT  
		Size: 1.3 MB (1250057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2082ea158bfef0de8df6402cef9cf021b0e9cce6247d583c6481fa938a68609`  
		Last Modified: Fri, 16 Oct 2026 20:27:43 GMT  
		Size: 8.1 MB (8066423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaabb8f0d2f84c8ad96c7e6d954c67124a3bd116ab04186db4d37eff30afdece`  
		Last Modified: Fri, 16 Oct 2026 20:27:43 GMT  
		Size: 1.2 MB (1196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bd061132078f0e18ab2f650fbb14666c74fa5237e23df43db7eb42f3105be5`  
		Last Modified: Fri, 16 Oct 2026 20:27:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e01c08a78b2d2bc4b0ace413524e8fbd9d67d7e95178055202ca0c8d3cb7f25`  
		Last Modified: Fri, 16 Oct 2026 20:27:44 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6904f8531b040f2ac4d9bebf9d9987926d5e4fd4acae6a11628b245627115565`  
		Last Modified: Fri, 16 Oct 2026 20:27:47 GMT  
		Size: 118.0 MB (117955895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca1adf8aca8c8812ea709fc7ffa319b6d6a449c972f1a2d0932ba3b8e6ff7ec`  
		Last Modified: Fri, 16 Oct 2026 20:27:45 GMT  
		Size: 21.5 KB (21512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0326ae767196416622245b63b711e48b9097d00814d72e0a94660d59be8659d`  
		Last Modified: Fri, 16 Oct 2026 20:27:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8803715e3a50058bb38aca5938402b401d05d3194fe1ac7b3d6bd2f1c2df3c84`  
		Last Modified: Fri, 16 Oct 2026 20:27:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5365af3e1e2d1f77b82fcea17eaa2200257b64caee8cd49036045becb48e7a0c`  
		Last Modified: Fri, 16 Oct 2026 20:27:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:63f143616e93cedd8845e415b20200c1ed2009f954c1a9d151d0946e5a52b730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656c870f8547f6861fbe99d784be369344475ef4255e2062334290cf94f4ea4`

```dockerfile
```

-	Layers:
	-	`sha256:2700d984168489f47630379e545fd11c148cc3932c09ac48f38a2231f8d160f8`  
		Last Modified: Fri, 16 Oct 2026 20:27:42 GMT  
		Size: 6.2 MB (6202958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ecccc680399a067767e6445559c574f8acc009db1acabd54efcdcf34b8a8705`  
		Last Modified: Fri, 16 Oct 2026 20:27:42 GMT  
		Size: 51.0 KB (50986 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:f58ec821efc7baae3bf11aad9200a4f7d6724fa5c7d21533c5ff0c4cd4e76323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86575477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c5cf2ed003528e86e387b9e98c382752d8338255a72761aef1d93519fdb887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:27:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:30 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:36 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:36 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:41 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:40:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:40:02 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:40:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:40:02 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:40:02 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:40:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bdeddb952ace706077206d32d0ba2cc42c31645d2c8af75bbecf5e1107321d`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbc23f5481f2f70e17d4b53ee483b3b4b4d9a4f073f86cdc492092e0e5e80f0`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 3.7 MB (3742703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783fa095e66177488591f4cb6c7c15f6ee5f716f84739f27fd3dca58a9a44b79`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 1.2 MB (1216496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389d29e9d2f6f82952160b59c260e543c5c5186f31994f6d03eae4612257d413`  
		Last Modified: Fri, 16 Oct 2026 20:40:16 GMT  
		Size: 8.1 MB (8066402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0200ad417a3c7da769b13e71b1c1db7405bb8f7d85033bb0a7179c7159b1cacb`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 1.1 MB (1067284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d539793bc7f1d5d9e12efbcee53776520a7ffd0675d9be67b37bf15ae8ac9fac`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b146b9889e42db4d550d3ddef1eb4c9e4e2411f33d6dca7f0e078a18cba5c9a1`  
		Last Modified: Fri, 16 Oct 2026 20:40:17 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea299e9f19743cce9a269f6db75dbbbf39256495392a7680ee9da0243f48a6b`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 48.5 MB (48493661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524a98d5ce75592001bf7d6b785cc74dd47540f62a85ad03a7bc573e4df458c6`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 21.5 KB (21509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152395f474f570edd26501d51301812a02e06e6bada04967b8709355241717e0`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cae4a47ddb84985d404453259c654cdb62e73e71f5cd07b01cdbe4244eb2ada`  
		Last Modified: Fri, 16 Oct 2026 20:40:18 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbb4260796be0aff07f0d06efb7df63f31d09df37fb00526aa74c47bab57e57`  
		Last Modified: Fri, 16 Oct 2026 20:40:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:0fc1e42e85e159730ef06c2ccd15785a62fbe6d573f719f9d90f8a6e0e507592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5385133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8172af3f8b1137e599ded5c0fa13814a89d0f25e45ff5638bfe4fcf93292844a`

```dockerfile
```

-	Layers:
	-	`sha256:1aa32f15d3d98e5f90a8cd5e8a4e12451c79314a000c33fd64d9b1a2a77b7cb8`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 5.3 MB (5333966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ced4c18ed111f176a3e66669e2f1b6a98ef471de0dba63de6368f4cee4af2ff`  
		Last Modified: Fri, 16 Oct 2026 20:40:15 GMT  
		Size: 51.2 KB (51167 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:0e92e10c6102a297150b97debcb428aa1177d0481b42ae001059f1d203529375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.2 MB (159224698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c099fe7019d636a7d9c79bab35aa656297270c069e87235888923ae676574e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:26:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:42 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:47 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:51 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:26:51 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:26:51 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:27:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:27:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:27:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:27:14 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:27:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:27:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:27:15 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:27:15 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:27:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf88d3e160c5d10c41d2d38a0abbd413f5794d252af5b931690b47d41265ee8`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa26ff5b95bcb657180807a4743e0b6d2f265eb39e9d93c116c0f4925b32ddd`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 4.5 MB (4519549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e784578cea6ec1bec3f4d3117f5678885df8e2fb9fe5bc2948102a87614932`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 1.2 MB (1203810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bdfaf60d022ecaac1c1143355d556324f34124e6f7278383d42962c59ce6ec1`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 8.1 MB (8066483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a741a029d793f6cedf520e2e6ab2198ae2e5483683f2501fa999fb830c47f7`  
		Last Modified: Fri, 16 Oct 2026 20:27:36 GMT  
		Size: 1.1 MB (1108986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03813634064464417f531648abb86e538cc9bbb712e15d318a3cfd458f7a96f8`  
		Last Modified: Fri, 16 Oct 2026 20:27:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18461e968b1c6cf8bc6bf9653af2777eb86892a1638c11a20bd401e6b123e72`  
		Last Modified: Fri, 16 Oct 2026 20:27:36 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddcc2ec55405c03e6f5c138e5f428a689a5cbd75bcfeb0716559dfe766cbddf`  
		Last Modified: Fri, 16 Oct 2026 20:27:39 GMT  
		Size: 116.2 MB (116156328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0280259d41701708410944283c769a22d12f06f4bcb306d66fc03909ebbf806d`  
		Last Modified: Fri, 16 Oct 2026 20:27:37 GMT  
		Size: 21.5 KB (21510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e14559cf1db74cc4e1df8c0fb6ce63e32cbeb6c8a67e48211dcefebcfd767c5`  
		Last Modified: Fri, 16 Oct 2026 20:27:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b200288baf61db4befbc012ee50458c275d1d56f857b97fa1cb7b78c1df477`  
		Last Modified: Fri, 16 Oct 2026 20:27:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6d5d7438121622aa8ebe8aeb24fcbb3b3775e9287de481fb2259d82092536d`  
		Last Modified: Fri, 16 Oct 2026 20:27:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:95b090ff87bdbcb5001b7e456039b9e878001d39f4991ce29563bcacec6d033f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6260463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e862ab5f2d6d9eb15c9437fbe2bb2f420b9cbd839cbbb22ccd16cc5232a76f8`

```dockerfile
```

-	Layers:
	-	`sha256:3549beac6fc40d0aa42ccad56b0366bd416b50180f8b2b94140af278cdef402e`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 6.2 MB (6209259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b01ef7412f175b89e3b2ce7557504d6fd89c844908bb84e325a9c9af966895fc`  
		Last Modified: Fri, 16 Oct 2026 20:27:35 GMT  
		Size: 51.2 KB (51204 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:b66131469732c7b086775a8773db0ff1a2fb16d8867ebccbe1268df1db9b4b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97708499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba633f9dfa43c8d38f1d0fa98708cd39ddcbd37f0432c59cb1bedcdd0022101`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:27:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:41 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:27:45 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:27:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 16 Oct 2026 20:27:49 GMT
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:36:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:36:34 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:36:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:36:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:36:34 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:36:34 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbb92ea389d84d22cd4d374220a42aa39d848c4a81ad315993ef6f4783e4b0a`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a70d2751d475f9ab00f0c1a59adc2f7e4c06f2ab0cf85075ed60cf5f52aee73`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 5.0 MB (4966140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da56bf92374e893c353917c2c926e0e40dc251b4a79fafdf2fad412a190d2d`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 1.2 MB (1219049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a280d8df5a0e6fa3d2a7f922beeca6c1e9f26f5a33c9821072c1e02ab3c0f38f`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 8.1 MB (8066488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d41f870ffa706b773dc892d44a016aa8c914870cf27966a17dec70491116e1`  
		Last Modified: Fri, 16 Oct 2026 20:36:48 GMT  
		Size: 1.1 MB (1137508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7f65a9acc1c669f842a73b61e43a2aa4d95da168605221b742d63e82e99009`  
		Last Modified: Fri, 16 Oct 2026 20:36:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9223616b5d94f7b087e582678a6f3d78fe7f2f3048bb62eef6421b60855bbe54`  
		Last Modified: Fri, 16 Oct 2026 20:36:49 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1355606179ae460b52e87b74d03b8b3aef0bee288326b3979794221bb71c81`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 53.0 MB (53047577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cfd00bbaf73632e69647d160a4def1561161108068f2fc333b60bc1f23fa91`  
		Last Modified: Fri, 16 Oct 2026 20:36:49 GMT  
		Size: 21.5 KB (21517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add16ad47082bf67134682ab98a03ecd6751d662b12d5ca36a87aff9ae1ccdc9`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e58d127e28bc215b08714e7d42276ec130676ae3958680b1ab8b29a0fa29c4ba`  
		Last Modified: Fri, 16 Oct 2026 20:36:50 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454739a692bf54a992b1ebbd97dea3a454edde27f3ad9b272be3fb4d475218df`  
		Last Modified: Fri, 16 Oct 2026 20:36:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b01b9a2bfcf256e06ef3503fc5c1fc8fc94a185ecf5168869c6581aabe79efb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5380250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb72501cdf1f6db93f382c18c4b205d610e06e3b76301078a73772d22fdb830e`

```dockerfile
```

-	Layers:
	-	`sha256:2eb0e87cbc0080f21f51bb51a72c4610df4008219b3d74c4970878c0fc176a8d`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 5.3 MB (5329307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebbfc9fe369ada4dd9274dcdea42e3a4bbd9f907e9153c50a710755e7355a7de`  
		Last Modified: Fri, 16 Oct 2026 20:36:47 GMT  
		Size: 50.9 KB (50943 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:dd35be44346609db9e341365957bd2d6b43095264ad8c06ff4ba4c08acc01463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174451370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110ff911f053b70e38f93b9eb1872fb7665d9be8fc33f2355c5dcdefc5041d80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Fri, 16 Oct 2026 20:25:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:25:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 16 Oct 2026 20:26:32 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:42 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 16 Oct 2026 20:26:42 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:48 GMT
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
ENV PG_VERSION=19~rc1-1.pgdg12+1
# Fri, 16 Oct 2026 20:28:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:28:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:28:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:28:13 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:28:13 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:28:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:28:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:28:16 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:28:16 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:28:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647dbb5d1137a79cd7644fea7e5f9b514680467ae028aa82a3d48abc2c87ceac`  
		Last Modified: Fri, 16 Oct 2026 20:29:14 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d475c50238d6b8ec9d1632a7abd4a821f7606baf91ce1a250a79773c52e72f`  
		Last Modified: Fri, 16 Oct 2026 20:29:14 GMT  
		Size: 5.4 MB (5368674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3406dd757037ce393f60d19770328b0371dc44954c032db3f1ecf41fa47476c`  
		Last Modified: Fri, 16 Oct 2026 20:29:14 GMT  
		Size: 1.2 MB (1208888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcaa87569d430d2cb2205c58f654eba3b1932cbd31845cbb4dbd4aaefa033f4`  
		Last Modified: Fri, 16 Oct 2026 20:29:15 GMT  
		Size: 8.1 MB (8066592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81956f283868ed016f72e55212f3d741f20466b4666f7283781259b2162997c`  
		Last Modified: Fri, 16 Oct 2026 20:29:16 GMT  
		Size: 1.3 MB (1283694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66397d68fd99b50aecef3b2adabe5b0a8e605fd2494697d746edd796e6eced35`  
		Last Modified: Fri, 16 Oct 2026 20:27:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7621fa944cbef5a8c4853a6a455cb7a9963d9f28099ba834fad693d535abb7`  
		Last Modified: Fri, 16 Oct 2026 20:29:16 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0659075c823a154fc94ef26a3fd94f23a17dc8bf8c8d2987a983edd585f69d5f`  
		Last Modified: Fri, 16 Oct 2026 20:29:19 GMT  
		Size: 126.4 MB (126398719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e99ccb48379afa822eb26cc6aefeaf01fe7ecbb35916976a2b9430dee618a5`  
		Last Modified: Fri, 16 Oct 2026 20:29:17 GMT  
		Size: 21.5 KB (21513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33063717223229bcfa2667f782523823ccc4991f9ea35c8c237b0693ff601891`  
		Last Modified: Fri, 16 Oct 2026 20:29:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc56df2c24463473f4856f8a6f724570922820c6129e0577e82627ddd7cf6126`  
		Last Modified: Fri, 16 Oct 2026 20:29:17 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc7c4e5cc7eb57b26fd52a5274083a10df06081e39a394c0cb74f95d451f318`  
		Last Modified: Fri, 16 Oct 2026 20:29:18 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:04b39c3a3b3726ae4f695f396cfff438ec809fa4d1de21639d2209ee08870ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6261363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eafa7054fdb4aab09e872111a976e1311a34c35f3d52a52b8a37946c797c133`

```dockerfile
```

-	Layers:
	-	`sha256:0e6c674e8ee533afa2824cd4a5bd883214ec4378f7a3e959012ef7a0b3ab272e`  
		Last Modified: Fri, 16 Oct 2026 20:29:15 GMT  
		Size: 6.2 MB (6210331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bbd455d4293c6c0cf624131a934b5c39c94ad27df0dd05bc2813538656d7626`  
		Last Modified: Fri, 16 Oct 2026 20:29:14 GMT  
		Size: 51.0 KB (51032 bytes)  
		MIME: application/vnd.in-toto+json
