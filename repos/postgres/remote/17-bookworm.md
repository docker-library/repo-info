## `postgres:17-bookworm`

```console
$ docker pull postgres@sha256:839fbb5a4942a7758dd93e18b42ea5649807491a0545b5eeeb8f0b8bb11857a5
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

### `postgres:17-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:2cd2c0f809604aaeff6f0ec8f40aecbd025613107561015c69369a1a7f1d3416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156195045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99445113a4a19e82dd3713c65bd9f6fb5bf972065ab043df8d1e1c93e957da9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:30:51 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:30:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:03 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:31:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:31:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:31:08 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:11 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:31:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:31:11 GMT
ENV PG_VERSION=17.11-1.pgdg12+2
# Wed, 28 Oct 2026 01:31:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:31:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:31:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:31:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:31:24 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:31:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:31:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:31:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:31:24 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:31:24 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:31:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcbc8f713132a335970bb0973bf14f697af0aff36703f01b72eec775cdf888f`  
		Last Modified: Wed, 28 Oct 2026 01:31:42 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3c977fed9093d2a1d40b490025a9e32e0b7ec6a7702e9ea88431cca468334b`  
		Last Modified: Wed, 28 Oct 2026 01:31:43 GMT  
		Size: 4.5 MB (4534269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64d8a47f0d19343ba718f6ad53bed45c99f029b829d56667ac8b07f86f8e59d`  
		Last Modified: Wed, 28 Oct 2026 01:31:42 GMT  
		Size: 1.3 MB (1250084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af1a04687f4ed00bc9a3b96fb844870ff41fabf11cf5c8e42970533a287585a`  
		Last Modified: Wed, 28 Oct 2026 01:31:43 GMT  
		Size: 8.1 MB (8066436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc53bcd6f1e9dd18c17f1fc36b2eac119ff0d1152af6c8101415dab75becc88f`  
		Last Modified: Wed, 28 Oct 2026 01:31:43 GMT  
		Size: 1.2 MB (1196449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9186c527446de21bf23e15c079eaf121c00241813bc75e86db133292d3693bd9`  
		Last Modified: Wed, 28 Oct 2026 01:31:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b418f0a5bbe867d249786d893286717da8a154ad809878050924204291bb6a`  
		Last Modified: Wed, 28 Oct 2026 01:31:44 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ca25700f91a222d3a14c81bd289bfbe8573785a27ac179643727210d8bf5ce`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 112.9 MB (112879006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9402d450cd6969148638cb476d2f754cb72807215c6ba7a5b2fee77d5063b944`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 10.3 KB (10349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4e779350b9960345f55ea969e59bcdb991a8f2e5da29e1228baad2dc162f6f`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5916baf4e6f1cf9ab0ce7429fbbb0d701cde3ac9370febb0310d62d442bac1e8`  
		Last Modified: Wed, 28 Oct 2026 01:31:45 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07fcf9270465c1c0f7ae53033cc2aa500084e68a07a853917c53809ee7d48fb`  
		Last Modified: Wed, 28 Oct 2026 01:31:46 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a974f630cde832f6a9fa6ae1000ad99c2d7d01b18e3c67882c87d60b47bf7b00`  
		Last Modified: Wed, 28 Oct 2026 01:31:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:68892360a68734bab0097085f296fa3b935583648c9042f15c943c83cc0ba302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5980880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62e2235eaf5bb688fd2ed91445cd2215fb82f06d5abd477776584a4b6110538`

```dockerfile
```

-	Layers:
	-	`sha256:9395659b30374a5257cba53df226f2b0440b875811aca4a3fc2f85b2ed92edc8`  
		Last Modified: Wed, 28 Oct 2026 01:31:43 GMT  
		Size: 5.9 MB (5927580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec29ca02e0aa005a618b48cad08be01fffcb632c579bdba41de7de272b767513`  
		Last Modified: Wed, 28 Oct 2026 01:31:42 GMT  
		Size: 53.3 KB (53300 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:275152060d1921e19321df5cb6a0398537981452289b5aae63c15e416461884c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82881187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7ae7dd0203f087ae38a831b36e721a79114f8eb1ca40ea5d9ccfb0754a8777`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:07:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 02:07:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:07:18 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:07:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:07:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 02:07:24 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 02:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:07:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 02:07:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 02:07:28 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 02:07:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 02:07:28 GMT
ENV PG_VERSION=17.11-1.pgdg12+2
# Wed, 28 Oct 2026 02:18:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:18:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:18:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:18:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 02:18:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 02:18:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 02:18:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:18:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:18:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:18:33 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:18:33 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:18:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c77f11f51beeb1de58351132f6105ca9e8194193b4fe6362535301ebec7ca63`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c46d45ba54a53ddaaa646daf3430e91660e57a5d37d4a13520eaad130d84a7a`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 3.7 MB (3742721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8fb86a5a10230f496c28faded7dfbe0f4da462812a95555c67c015c6d3c629`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 1.2 MB (1216650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95763ba36dbcde79b2189f712c672dbfb8a1507780a71575570880d8cd47acb`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 8.1 MB (8066473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c127f5bb3fd9f14d95b4310affa0cf60e8e283148b403c24afbb4095fc728ac2`  
		Last Modified: Wed, 28 Oct 2026 02:18:46 GMT  
		Size: 1.1 MB (1067289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c3d003118ada137428b65517d4abd9e8a9089ca541812ca0016a91db345dd`  
		Last Modified: Wed, 28 Oct 2026 02:18:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f2fd6c4c4f8d936bb2de808895425517aa4b556b5efc90c1aa07bea8d3900e`  
		Last Modified: Wed, 28 Oct 2026 02:18:46 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab393955692b5953b780cb9f2b3beaf9654e344097cf944d27d5c569924d29a`  
		Last Modified: Wed, 28 Oct 2026 02:18:48 GMT  
		Size: 44.8 MB (44805719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fa20130b4be0abd8bbab2f8d51691198800dc026cfdd626189ec57218a9e16`  
		Last Modified: Wed, 28 Oct 2026 02:18:47 GMT  
		Size: 10.4 KB (10352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d79e16f1b50523a3bea04c88b504f6b849cb4ef2241742478bd860cc610f71`  
		Last Modified: Wed, 28 Oct 2026 02:18:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82be8be33fc05a6c6444ec47f79fc35a3d429adeb48e41e227c870c27347ecc8`  
		Last Modified: Wed, 28 Oct 2026 02:18:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45ee2b3538957dd8e3ce25f2ef907d6965912d6856f05c469cee4f64458870a`  
		Last Modified: Wed, 28 Oct 2026 02:18:48 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455e68bd23c586abb1a8f78f9338dea210f42abab039bb1f4d01e56dbc097c1d`  
		Last Modified: Wed, 28 Oct 2026 02:18:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:f9cd4aa1d4a8014851ed15aba9d0eaea36aea277e7e8b30a0fcf57e837c3a42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484af1e24deecb36eea8b420f143416cb9cb0bbe6eda73142a2f3e8267bc942e`

```dockerfile
```

-	Layers:
	-	`sha256:ecc7b6fc869e13a0c1dee6c5dd61b7d4d1eb84a8de9c26bfc1376cc67d052a9a`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 5.3 MB (5291221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053de9d9d41622bdb5fe7ad6e3a290b6462e8c630287b641252cf019f2f58d08`  
		Last Modified: Wed, 28 Oct 2026 02:18:45 GMT  
		Size: 53.5 KB (53502 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e692f23ba2393c8b13879dd4ee9f4f0d7bd146fbddceb4c8e10c4ce1fb53e737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.2 MB (154204373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92e98998515ee76149a895785ea1fbece6dec5657bf9ab9204037d6f9849fef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:53 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:32:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:33:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:33:09 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:33:12 GMT
ENV PG_VERSION=17.11-1.pgdg12+2
# Wed, 28 Oct 2026 01:34:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:34:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:34:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:34:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:34:14 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:34:14 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:34:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd02698a385d828993928554dfdb2cb50b8fb7118ff1052700a5e2ff4e898d1`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e225efba3312ca80c7244c094df6ba82d3970b0c90e4da0f5d727e3280e7047`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 4.5 MB (4519551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca485e33ebd28debf6c16fd0420928be3e01640e836ff60a859099a0bf83805d`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 1.2 MB (1203813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f95627e2a86d05c0c03356c79dc0db2b26ee3c61ba3ad308ee64860027e53f`  
		Last Modified: Wed, 28 Oct 2026 01:33:52 GMT  
		Size: 8.1 MB (8066486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf8dc366f1420ece9b923812bf4223627de6fd3798bbf89f6ea74d3f94afc84`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 1.1 MB (1108992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a348db12a2e0f324fbd901f7e507bf5198ea3a9d7b1b2d8ecb85c5ce2be0c7`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0184554a609f12f7ebbc19762c7f1bf52e22ef97fd9b65b06a3a7acd2f3e103b`  
		Last Modified: Wed, 28 Oct 2026 01:33:53 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca292963f6502cbdddbd7a9b545f36cf0ac6a4d03001f13df55435c460f4be55`  
		Last Modified: Wed, 28 Oct 2026 01:34:36 GMT  
		Size: 111.1 MB (111146212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f8d3cb3510698ea1e23f0798a4e0e5fd29990bcee6925beecdf79eba060347`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 10.4 KB (10355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e56f119ac7b15c5a14932e34e654042d5b6a303dc7af129611e4e6a562ee073`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ad4561232df32125174c00b3cd5bfffe4fd9f00ace051edf5ccd177bf959ee`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2bda43fd2e8d2e4e0d0cfe1c1b9c6a7e9a5b2b5aba7f0a9cd818914244eed0`  
		Last Modified: Wed, 28 Oct 2026 01:34:34 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a6433c4a314d980f3515c7e21c3501850c06b92ecdce1739e44840203c174b`  
		Last Modified: Wed, 28 Oct 2026 01:34:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7b09455bfe818c67ced2faf415181626be56a08f5634a666e9417b03b6348587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5987437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cc360777b1e20fad9f9ca007ea2ac70ce1aa704d67f7d448ad3bf821a99482`

```dockerfile
```

-	Layers:
	-	`sha256:351cb569edaa36e03196e94696859853a265553d5d3132033998d9250e92d289`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 5.9 MB (5933891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a46134c25c38404fe46d87b6df0af1aa7501b596adbce9992ae85562a99c2c71`  
		Last Modified: Wed, 28 Oct 2026 01:34:33 GMT  
		Size: 53.5 KB (53546 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:59f75b0702aa4d3051fed572306bce2ed95169c6e04f6ec18ea88831f21a59d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93475120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a95a8c856501d189ef424f21fa9d41e4924cac3713eedebb8ea349ffe51aa9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:32:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:32:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:31 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:32:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:32:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:32:35 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:32:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:32:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:32:39 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:32:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:32:39 GMT
ENV PG_VERSION=17.11-1.pgdg12+2
# Wed, 28 Oct 2026 01:41:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:41:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:41:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:41:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:41:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:41:22 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:41:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:41:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:41:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:41:22 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:41:22 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:41:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bebe7bdc74d007683cb737356f6ae97b96d34883f5b9c7bc6f4388c57faf48`  
		Last Modified: Wed, 28 Oct 2026 01:41:34 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ea63018e72d2d1a430c583be27cd155965f9c144293d04d765071dbfd6cef4`  
		Last Modified: Wed, 28 Oct 2026 01:41:35 GMT  
		Size: 5.0 MB (4966117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3730ed9a1d649576b17993e647541ab435e8e5b1a33434a9360edd5911bfbaf1`  
		Last Modified: Wed, 28 Oct 2026 01:41:35 GMT  
		Size: 1.2 MB (1219021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c226745bfb29543bf829aef1514eb01601c49e201875be66383f76d879034ca`  
		Last Modified: Wed, 28 Oct 2026 01:41:35 GMT  
		Size: 8.1 MB (8066527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2725347d7da315efdd452b6755e4eafda558327e21ea75f0d8f816edad7fbcc`  
		Last Modified: Wed, 28 Oct 2026 01:41:36 GMT  
		Size: 1.1 MB (1137495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5587d10a7eb6904c67c10f2dfbd3aa81dbc3e1f5014f4ca9057a0f10b72eb7bc`  
		Last Modified: Wed, 28 Oct 2026 01:41:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679e420547972cb4867f60dea022adc3b652bb359e90486271d79d9e2d0ae12c`  
		Last Modified: Wed, 28 Oct 2026 01:41:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2a8577bbaf162985c6d4f0182712a40175ac38a044ef496beff5a44dd5ca97`  
		Last Modified: Wed, 28 Oct 2026 01:41:38 GMT  
		Size: 48.8 MB (48825805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1916641e3744d18653d512da5e17dadbf2b1cf3050c5eda3d5b5183aeda51b`  
		Last Modified: Wed, 28 Oct 2026 01:41:37 GMT  
		Size: 10.4 KB (10361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f56549e046bca95f2d3d4c25900893fda0085caf163a7f74f9b30d3f491e407`  
		Last Modified: Wed, 28 Oct 2026 01:41:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104980aa2654972e9b1d6855c6f4082e295ccefbceabb46c580f015d9f813656`  
		Last Modified: Wed, 28 Oct 2026 01:41:37 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd92bf3fa4943984b3e39002cb238eea308b8d256d2a97e09cfb9c360f46380`  
		Last Modified: Wed, 28 Oct 2026 01:41:38 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e979b66c404b2d541d98b8b6e4e8daf66dda52e0b2daf64bd9ed33100f0593f6`  
		Last Modified: Wed, 28 Oct 2026 01:41:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:efb1a90cce339655d51eb1e5e1ecfa8fabb65a0bea40c6b74a31a76b85e4bb4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1257ecc04bda8b3e03ab56a990311b1946a93dc2ce7ef763cf730fffd60a2df6`

```dockerfile
```

-	Layers:
	-	`sha256:0a64c5bbc7e863e83ea0a1888f481433cdf6a74a34b624ede05191ab988e9804`  
		Last Modified: Wed, 28 Oct 2026 01:41:35 GMT  
		Size: 5.3 MB (5286559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a604657e9b3c1f6f5b655d8955f64035913a5b9f85d4929b93523914e42f3d77`  
		Last Modified: Wed, 28 Oct 2026 01:41:34 GMT  
		Size: 53.3 KB (53251 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:6ca16845abd90433c435db3815fc4f21f36261451d6dae5e9b7b13ec69a16b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169040421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2979f20fd15b234c7089d425c678cc33872e6295ec5204d10bdf6ecdd144d493`
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
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 03:57:17 GMT
ENV PG_VERSION=17.11-1.pgdg12+2
# Wed, 28 Oct 2026 04:01:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 04:01:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 04:01:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 04:01:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 04:01:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 04:01:29 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 04:01:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:01:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 04:01:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:01:33 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 04:01:33 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 04:01:33 GMT
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
	-	`sha256:bc5a3b4ea51aa258a4e3bec4a7a9020c0c66d63c6e92aa9540e9c37f0ac362b1`  
		Last Modified: Wed, 28 Oct 2026 04:02:20 GMT  
		Size: 121.0 MB (120998535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a6e5f7ddade83ee3eafc14560dd9c903d03c5e2941ec97dca6712ea5c8f3d8`  
		Last Modified: Wed, 28 Oct 2026 04:02:17 GMT  
		Size: 10.4 KB (10356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e64e5509a28552a27ce2969d00d2f6ddea499c722ae50bcd6b001541022287`  
		Last Modified: Wed, 28 Oct 2026 04:02:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e77490813b588c01f5b2e3d17e595508a99efc55fce102e94fa4bf68563582`  
		Last Modified: Wed, 28 Oct 2026 04:02:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d167175917229b6ba4b65a2a6d99fddbbfc3f49750b4e94ec13339c4e771241c`  
		Last Modified: Wed, 28 Oct 2026 04:02:19 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f330e62b080bf3775a63d9c478ff293be56452f68e20d9f4899283d505ce04`  
		Last Modified: Wed, 28 Oct 2026 04:02:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1827dd324ac5df7f3971b1e035855bc9b0902fd1a38298b177ee52719ddb8a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5988296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fc114b6289298642276997e8647aefed10afe0eb6e361ad6232fabbf4964a6`

```dockerfile
```

-	Layers:
	-	`sha256:e9b9b3b1bf94ad68d5a3b46bc6e8e6dd152b8013205f76d33ff91f8099ff48e5`  
		Last Modified: Wed, 28 Oct 2026 04:02:18 GMT  
		Size: 5.9 MB (5934941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56b6074097faa7abf1eb231c81b123635d5dbdb269ea40e6864861989e16afe8`  
		Last Modified: Wed, 28 Oct 2026 04:02:17 GMT  
		Size: 53.4 KB (53355 bytes)  
		MIME: application/vnd.in-toto+json
