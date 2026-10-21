## `postgres:18-bookworm`

```console
$ docker pull postgres@sha256:ed9475dab2438f7a8ee063fa29a0740e7fbf7185e5549db1866eb722f12b49f8
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

### `postgres:18-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:6b38fe68f2c02cafffbbce7496f76d110d8a947c039bd22c067e9a43c2250240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157268716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d4ad6f3de5e288238b3044970a677dcb0e77004d8b6050732aa0cbbeedf5d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:36:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:10 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:37:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:37:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:37:14 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:37:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:37:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:37:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:37:18 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 00:37:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 21 Oct 2026 00:37:18 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Wed, 21 Oct 2026 00:37:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:37:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:37:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:37:33 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 00:37:33 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:37:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:37:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:37:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:37:34 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:37:34 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:37:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c521588a20e47bd4fc77f05d4f6b18811b7332de3aa62ac28333a02615280ab6`  
		Last Modified: Wed, 21 Oct 2026 00:37:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae674a5799defdb0f9481eea66502f2a9a4916926e9ad1b7dd90b54c03b45f1`  
		Last Modified: Wed, 21 Oct 2026 00:37:53 GMT  
		Size: 4.5 MB (4534248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5394b61f3adbd5fbbe48c68950a286ee0d515caba415a919fc38591fd8b7ed3b`  
		Last Modified: Wed, 21 Oct 2026 00:37:53 GMT  
		Size: 1.3 MB (1250075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e548ddf2aec167cd114acdb83946c8dbcd81239a780649e9869c89f71e0f7f94`  
		Last Modified: Wed, 21 Oct 2026 00:37:54 GMT  
		Size: 8.1 MB (8066444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53caabbf07ef9085fc7dac1953dc09f866a5ac9d36dcf2ee36e699212256ef45`  
		Last Modified: Wed, 21 Oct 2026 00:37:54 GMT  
		Size: 1.2 MB (1196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7f9cdd3a5eba5c4f444c37e592a449bafd3ed79315bfeb1ad55f6d3e863a56`  
		Last Modified: Wed, 21 Oct 2026 00:37:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eff413432fe630a2acdff40de9ad0da49a590174e1099e69aa7a0aa6db5026a`  
		Last Modified: Wed, 21 Oct 2026 00:37:55 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3bbebe5f69a9c120d7cf25c5ba11c62d9c8c5c2a169f2dccb34521faee605b5`  
		Last Modified: Wed, 21 Oct 2026 00:37:58 GMT  
		Size: 113.9 MB (113943377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ccda48b8c8db2605fbf7856dc5f218c35c5286bdf8d90859ee9ac151d3f5196`  
		Last Modified: Wed, 21 Oct 2026 00:37:56 GMT  
		Size: 19.3 KB (19324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522fb51536535f7b1e6c6b9cfe722918666abc724b873f0c508eb1982a2b4801`  
		Last Modified: Wed, 21 Oct 2026 00:37:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666690849feb3622b1c4c5beedfaa45c6b99bf6088ab900d772c183c8f7af674`  
		Last Modified: Wed, 21 Oct 2026 00:37:56 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34d64930ea080b3b6f716638062dd7625b0f422a7b2adb8264f8fbd2fae7198`  
		Last Modified: Wed, 21 Oct 2026 00:37:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:52e967d017c9cb26540395cb407146b1eb238021bb09be0eb496c9636f88385d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d74852a2a6ee396ff79ddb4533f559c283b7618e8279b27ed7d6245dadf9b3f`

```dockerfile
```

-	Layers:
	-	`sha256:a2c197d1953a07458ec0f69401c54d6524070669eb80aa4a29b816552f2284e5`  
		Last Modified: Wed, 21 Oct 2026 00:37:54 GMT  
		Size: 6.2 MB (6156605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4fa61e6269def0d87d6f32c3f639854142123533c14819c795f79b90b9d48f1`  
		Last Modified: Wed, 21 Oct 2026 00:37:53 GMT  
		Size: 51.6 KB (51589 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:f7661e7b1812ac9584d4f6f94453bcac001c3d172ac08dc9141631cc3e9f06e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85502713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1616f635180566d96341fd8a8a7ff763bfced9fdeeea33f4cf996356570b53eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:03:41 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 02:03:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:03:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:03:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:03:59 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 02:03:59 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 02:04:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:04:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 02:04:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 02:04:04 GMT
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 02:04:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 02:04:04 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 06 Oct 2026 02:15:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:15:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:15:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:15:32 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 02:15:32 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 02:15:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:15:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:15:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:15:33 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:15:33 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:15:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09ee9ef16e958d6fabf31304af04148efe5b1755918cbf344cc3374310f4061`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0489c374a0b7f62e419e46ab2672562ffc39353e1f8c0e2331366429553c72d7`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 3.7 MB (3742673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff345f8445dba222d418230aacad79eaa4a9234628410ce242c5c02e2ba58734`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 1.2 MB (1216514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861ae7cc9bbbe282f6f9ad8f23d94987d8ab64fbc559b26aadade58abfc8c7f3`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 8.1 MB (8066404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093f9f66d83b01bc5d6a7e132650127e1854b0e68563e65b3af07cb5e5138592`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 1.1 MB (1067302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1e1ada7c10692aa0689cd9fbf3d58be552008175fb56fa6fac265fbdf58ae2`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d87d0dac792bd13da42b691a119715b68a4b9c743a916dce78f78185a2d6ff`  
		Last Modified: Tue, 06 Oct 2026 02:15:46 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10989bc07de723c4c0a9fb65081775e8e6eb10d36d108a29b72beec824393771`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 47.4 MB (47423069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e4ea067c25b269f6f6d411f759b7955c1ab0c7f06bdfb275800a02a95d6236`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 19.3 KB (19324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5f66cdaac71f0e3becd730df8633270eed662e9682c18f0da75195ba0e1091`  
		Last Modified: Tue, 06 Oct 2026 02:15:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcac2b34972a6477a8c9cafa61aba124851fa2aaa3275a2ec7c3e3605bdfea1`  
		Last Modified: Tue, 06 Oct 2026 02:15:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3e5f850cabd3ccff66a8970ca6800b4eee664d2babd9ae7d976b06195de2a0`  
		Last Modified: Tue, 06 Oct 2026 02:15:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b1156756029d896aa6d67c7aa117999129db34a16eaf5bc4f820f6e5601525ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d8ef3e4ba04f4f7c3324486604fd5c6be9cdc3d60f41c67bc3372f0504e8f5`

```dockerfile
```

-	Layers:
	-	`sha256:6a9f1dcac7ed3751d2adae0cca2f9b59c3d6cebb491c9d1b2bee91daf7f1a09a`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 5.3 MB (5316375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e476f994a029af643a774c5637b59b69b0d0d1773bbdc94d9b83d37c17c24d17`  
		Last Modified: Tue, 06 Oct 2026 02:15:45 GMT  
		Size: 51.8 KB (51787 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a5377a521c0383c9862394c90bdbf7707800ac9a6e40d18318193badfac52ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155254874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1518a079f5f4987988538d2dcde58230afeaa22a1822fe3f09767bfb5d7fb932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:39:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:39:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:39:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:39:37 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:39:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:39:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:39:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:39:41 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 00:39:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 21 Oct 2026 00:39:41 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Wed, 21 Oct 2026 00:39:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:39:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:39:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:39:56 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 00:39:56 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 00:39:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:39:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:39:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:39:56 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:39:56 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:39:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6558a0d3f15ddb510708bf4d1eb2cd43345b2d354e55f3075e6bedbc38475938`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19e03d5dfb12da3912123e74fb3371ecce064ea7eb1ad29dadb1e30aa5044e9`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 4.5 MB (4519571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364e1feb80d71f5d2d3af96a5168d6c2c6dfd873d31cbfc7f723bc4b8f641273`  
		Last Modified: Wed, 21 Oct 2026 00:40:15 GMT  
		Size: 1.2 MB (1203817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ba393934836f90b0a90329f1fb80bc1270384570a065f5ac733ea46e5c7fd5`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 8.1 MB (8066490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32732b44d92d11f06b205a9d64e48449383e845e89363493a56059a7a08ab4d`  
		Last Modified: Wed, 21 Oct 2026 00:40:17 GMT  
		Size: 1.1 MB (1108993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae881a2fde2a957f46a467da10767a3b77584b1020ff1d2fd26e3a9fea8836a`  
		Last Modified: Wed, 21 Oct 2026 00:40:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e10ec972e8b022113a61206bf62fa6080cb6e8a8957ae8026a68a63ecce9cc`  
		Last Modified: Wed, 21 Oct 2026 00:40:17 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7e35bd8b29c3167e1f2196152c33b2ebf918060e49edac95a46cec24f32dd0`  
		Last Modified: Wed, 21 Oct 2026 00:40:20 GMT  
		Size: 112.2 MB (112187403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46771f9ed2eebe685c5173fbd193fc0aca2f6bad2ba7e5d1dbb06ef3bc86c4`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 19.3 KB (19325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ce5956994360fb7d65cbc7e4b87678c6e4bd52a2d51533766fe28138aed0b5`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37133259ed11ce99f62a312444754a0e142c4d04cbbdec3b44b7bf32adc8da5a`  
		Last Modified: Wed, 21 Oct 2026 00:40:18 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54e5a3c777572ddee29d24b013f77bc227b3d307219b7887228c6a83b9e0c55`  
		Last Modified: Wed, 21 Oct 2026 00:40:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:65aabc95876eee92522c5534730423ca09a31585efee578fd954ba34a1e52768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6214762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc9983dacce61f201b1c6e6f3f0fae0ac1d7aeb4b9ffc30a23196fb1e839c94`

```dockerfile
```

-	Layers:
	-	`sha256:6828143e04c7fa1435f4afa73b74f1542234e9679d024e93c6c62df037db1b88`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 6.2 MB (6162930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4230d84a07c7ced9784a58799f7b33ed67896f2807062707a18f9f5705bed4ff`  
		Last Modified: Wed, 21 Oct 2026 00:40:16 GMT  
		Size: 51.8 KB (51832 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:3bd5f13e7d698b30b8d38b14ae0d3777bc22e4d08fca3861c9739f0be5bdc9ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96547378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74f5a9489c1ff030a77c952ecfcdff16e9103f71da39b6e20e240bc7bbea11e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:34:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:34:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:34:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:34:18 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:34:18 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:34:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:34:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:34:22 GMT
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 01:34:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 01:34:22 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 06 Oct 2026 01:44:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:44:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:44:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:44:09 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 01:44:09 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 01:44:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:44:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:44:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:44:10 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:44:10 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:44:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bc817fb4328a28690d09b223642e674e3c889945f67364668b90b21c733f0a`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cf6e9779b2b0285b0bfc21767b51616fbd2edf4d606f0b05115c8e8ee08213`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 5.0 MB (4966125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf6be6e56699e8931003f81e56fdcee10df5c75223f705c40c26e67daa37571`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 1.2 MB (1219031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd0fc49fc35bbf2c0840216c3f27f5a6972ab66de7eb39f521751c0f665bcdb`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 8.1 MB (8066467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6311b0d7079e779df3337fdb6fabd83fe3b9f6377d0163d1068ab951218674be`  
		Last Modified: Tue, 06 Oct 2026 01:44:24 GMT  
		Size: 1.1 MB (1137491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e2a107f61d6ea7c18b8b859d9eee1d91456a2402629bc821c3c67cab95e524`  
		Last Modified: Tue, 06 Oct 2026 01:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44582443cda5c4298edf6498d241aff53f623d5b1d7b0e86beaf76d9b1fbe1`  
		Last Modified: Tue, 06 Oct 2026 01:44:25 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee55042976f0d0ae39c09749b7909168a9a1f8fbe50c84d61458db399fcb307`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 51.9 MB (51888726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdab275e2af2321b6a1362839679c78e45b1c8013497d33ea73693ad55b3df0e`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 19.3 KB (19323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564eda4d87099748fe6898fda25d9a6271453bbc455d8f18b6048f915c2bd72d`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b269e46d2f4a691124b57e466bf5eb4d47870fd86b267b5eca4545fedf22512`  
		Last Modified: Tue, 06 Oct 2026 01:44:26 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dac12d0776e545b6237e22996fa0198f47e99a54607781f944ba769aa8fb7a4`  
		Last Modified: Tue, 06 Oct 2026 01:44:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1964e06c5f8b01fd350d5f02f13e23826cec240119190c81ca79711a5233255e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce19800ec37cfbe1c6d91d8dfa0316c53356252a68d76617fa024a409d7ab8b`

```dockerfile
```

-	Layers:
	-	`sha256:7b743f881c30522ced03a8fc89df297db954ffae8c3bfd9b1b79a0357ee75d2c`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 5.3 MB (5311690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89fa94e1b65b5f0b120590a31a76f0ce9806de1276846914c402b320642f44c`  
		Last Modified: Tue, 06 Oct 2026 01:44:23 GMT  
		Size: 51.5 KB (51538 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:89521e0aa4a1f7bb915d42c32c72f68f33518cf8de0f2710c5cf05de829b34d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f1e832153d7d3e3eb39f50b00ee5e07229a63b0264bb96523c067ad4b164bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:08:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 04:08:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:09:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 04:09:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 04:09:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 04:09:12 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 04:09:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:09:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 04:09:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PG_MAJOR=18
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 06 Oct 2026 04:12:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 04:12:48 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 04:12:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 04:12:49 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 06 Oct 2026 04:12:49 GMT
VOLUME [/var/lib/postgresql]
# Tue, 06 Oct 2026 04:12:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:12:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 04:12:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:12:50 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 04:12:50 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 04:12:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92fb1f89846de71039438d39d3324f859ecca82781ae0c94131d8f973c4c616`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b466a7e91fd54c0160ccd3e5476653bfd308c482af056335642986e69b830f1f`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 5.4 MB (5368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9ff9c704e1b31c4da4c601569d11baa88c2741f854bf92b4cd932073fc36b3`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 1.2 MB (1208866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933017d685d59538a7b9f3dc98869f43e9d6eb48fd795b8e9d2dd19efc68b43f`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 8.1 MB (8066577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2932a7c3a741c59d19d8656db9595b1750da0947f5a930ac4e747a4960b00f85`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 1.3 MB (1283643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2dde9a82686f171740ac6ff99e38bba872ef7137fdf4519c72d82362249a8a`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17974808e22dc5fe293682a762d300965ebc97df16eafc3ec0bfe7535c3d1ee`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e420ca859a9c0ff0843b91c019be4b38c4ed96eda30312c0780330d0065d407e`  
		Last Modified: Tue, 06 Oct 2026 04:13:36 GMT  
		Size: 124.6 MB (124579119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df4cd5440d57c9f487c104256e4dfabd00060125fb39e43723ce19964946f97`  
		Last Modified: Tue, 06 Oct 2026 04:13:33 GMT  
		Size: 19.3 KB (19317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d73ea5947e1152f9bb14356be2f4ba54748e3dd03f7a5d82d38fd375df19572`  
		Last Modified: Tue, 06 Oct 2026 04:13:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb5358cdfcd06ab31d8b14ce87d00a3947f3b395c4f037ba1303fd962f040d3`  
		Last Modified: Tue, 06 Oct 2026 04:13:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35df198e301652249c70dc3c2849f0af988e1e4e654c5a1b45b1e58a34785e3f`  
		Last Modified: Tue, 06 Oct 2026 04:13:34 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7434f4d4fb620ea487051ac145ebc1b40fb054ce1d696b9a3b184e7f974f1da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6215638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ecad0d514486cf1ff2ba194ee9f580ad5328df31bc9bb19bcc5a43072b4076`

```dockerfile
```

-	Layers:
	-	`sha256:039942db89810af11e87f60fc340bb6acb0a5ee1fcec651b708db53897fe72ef`  
		Last Modified: Tue, 06 Oct 2026 04:13:33 GMT  
		Size: 6.2 MB (6163990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c3480fbd61ea4ac963be23e3e82e26b47f14d16565ffd62bd8f565859ab09d4`  
		Last Modified: Tue, 06 Oct 2026 04:13:33 GMT  
		Size: 51.6 KB (51648 bytes)  
		MIME: application/vnd.in-toto+json
