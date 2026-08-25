## `postgres:18-bookworm`

```console
$ docker pull postgres@sha256:33c86c9cfb790e257e470b29e8c97bd1bd6fee0a70ab2d7a2e377ab639c09935
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
$ docker pull postgres@sha256:a10c981235b4f635e65df0cfb66a5598064628128505dbc6a3ed4ca303717521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157245760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f372eda99ac2ea249c3dce566dcdf468397035371284d2cf2103b4bc52b3b39e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:41:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:41:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:30 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:41:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:41:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:41:34 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:41:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:41:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:41:38 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:41:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:41:38 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 25 Aug 2026 00:41:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:41:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:41:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:41:53 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:41:53 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:41:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:41:53 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:41:53 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:41:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e3ce97a8279499a0a9bcb2417379aae28fca52dc301365b1f8bfe1c641a1d5`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37111c57f5aa35dd2ad36433dd125b416383462017b0adfc882869ee68862d50`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 4.5 MB (4534204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cb1fe8c0d14ec66b7b7abe5cce60ba181e92683906e3684ff5e8064aece0ba`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 1.3 MB (1250046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227fb2bf8d7b11a11161e4292644f360b46d1893e8f4c1fc25da79042233c964`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 8.1 MB (8066442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39d72951262533e1ab70b13d7bac8cc215c177dc9cc39e688c347895ba04335`  
		Last Modified: Tue, 25 Aug 2026 00:42:13 GMT  
		Size: 1.2 MB (1196463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9696c0868ba1861fe5e5007a146ba8f4eb666353f0a55d0e5c4e8944f8d86eb1`  
		Last Modified: Tue, 25 Aug 2026 00:42:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e16465a208f813fca0e07cd0409aa10dc07611de4267578457c107df76a52e1`  
		Last Modified: Tue, 25 Aug 2026 00:42:13 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e38d8544e5392718cf637e26f8a31e2e6a58620b07711b9ad095ac153ea3a4a`  
		Last Modified: Tue, 25 Aug 2026 00:42:16 GMT  
		Size: 113.9 MB (113935777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d291e6dbf34edf2065ff886c53a20707b060d87315eb40e1fad0ebae29ae515`  
		Last Modified: Tue, 25 Aug 2026 00:42:14 GMT  
		Size: 19.3 KB (19320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0868f91773479569838111233a5534c60d1363e4d604815d8381d70a3b8353ca`  
		Last Modified: Tue, 25 Aug 2026 00:42:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ee9aeea627de0a8e2c682b5f25931a0e6c8d15d82713aab5e8bd9c94c3b141`  
		Last Modified: Tue, 25 Aug 2026 00:42:14 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f5f2b697ce7cf0e8b16f546bb0eda2e886bd8f8c20ca5e8cd5a65c50ede8f4`  
		Last Modified: Tue, 25 Aug 2026 00:42:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c327dc7432374fda613cd1fae3918cee00e1560adf5f7073ad9d750d99173882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6208159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa07814496aaccd9c5cd4b0082fca174f0d58f48cb312b4ed0f8c977069e68c0`

```dockerfile
```

-	Layers:
	-	`sha256:69a00a024e64675ad2db215964d51657236275b94398c8460125f355c06891f2`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 6.2 MB (6156569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b38f0ea834262cf415319eb2925fd50a8873efadccde849b0bb7ba7acfc0733b`  
		Last Modified: Tue, 25 Aug 2026 00:42:12 GMT  
		Size: 51.6 KB (51590 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8decda809bb42fb77a35d6eaca9f1d242d34812668f99334822b76ea567597bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83396056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048cf8a21381f1079bbc965a9ae1794b7362dc62cb97ed7017d51662c7269b81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Thu, 13 Aug 2026 19:24:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:24:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:24:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:24:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:24:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:24:44 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:24:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:24:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:24:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:24:49 GMT
ENV PG_MAJOR=18
# Thu, 13 Aug 2026 19:24:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 13 Aug 2026 19:24:49 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Thu, 13 Aug 2026 19:36:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:36:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:36:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:36:11 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 13 Aug 2026 19:36:11 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:36:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:36:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:36:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:36:12 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:36:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:36:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8e18247e245434d1cfd4469e67fcb5241a395d9d1d63e73d92fb1cb96465fc`  
		Last Modified: Thu, 13 Aug 2026 19:36:24 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9d760ae6062d8341cbcca5f896bd8978eac5fae4199802c6f1dbff451d7167`  
		Last Modified: Thu, 13 Aug 2026 19:36:25 GMT  
		Size: 3.7 MB (3742699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ab5ad8e151106e0a942a5142b2c6bb7efa307f708a990c1c4079954d90eaa6`  
		Last Modified: Thu, 13 Aug 2026 19:36:24 GMT  
		Size: 1.2 MB (1216527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70903ed5a726289be06748d2846e995383f3da46964f59eae43fa577893cade3`  
		Last Modified: Thu, 13 Aug 2026 19:36:25 GMT  
		Size: 8.1 MB (8066443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afe5b0edc3d29a70ff492e9213758f729010278999e870841cc255d13c701bf`  
		Last Modified: Thu, 13 Aug 2026 19:36:26 GMT  
		Size: 1.1 MB (1067295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f0e4d76c82eca3ba44240e8dba450e78ee5fe1307eb6f64eee84149c7cf190`  
		Last Modified: Thu, 13 Aug 2026 19:36:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90902f9b6bb5e0170f9d0d73f9f65f64bbeddc2721deee0a6a2da4cbe6c7360`  
		Last Modified: Thu, 13 Aug 2026 19:36:26 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55776e2b2ca5d0efb5e565eb6e0cfc792e280db728a82da8a185aba8afe63ff`  
		Last Modified: Thu, 13 Aug 2026 19:36:27 GMT  
		Size: 45.3 MB (45333180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d82e04cdf852c433f2614587352ac1e574e1cdf25b67c350d0defa8c8bf7a11`  
		Last Modified: Thu, 13 Aug 2026 19:36:27 GMT  
		Size: 19.3 KB (19320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfddf69650468584f75c8f17ccbd06a7bad08712fd01f1a32e6abad52386c3e4`  
		Last Modified: Thu, 13 Aug 2026 19:36:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287ba9f751dcd477883b4f7b2f6197276948efbddaebea661831420a3c5047c8`  
		Last Modified: Thu, 13 Aug 2026 19:36:27 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4f2a081d0eef8d82b4e8e3e0aff47bcd23049ef1afc068c186330aff665313`  
		Last Modified: Thu, 13 Aug 2026 19:36:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a26f454dbb13c65a45be77278665eaf57c8fc9b9c72d8dfa0ed4c99bb57c3d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece6350020d8c557687b8bef1adcdc93d9a199a57af6758d8d6e20adeadfa99b`

```dockerfile
```

-	Layers:
	-	`sha256:b95288f76cc2f5af09a5df4345b00b402b2bfec8329247f3adf50540ce435eea`  
		Last Modified: Thu, 13 Aug 2026 19:36:25 GMT  
		Size: 5.3 MB (5316339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d506af8b989d9524f4b1ed19b20b7830efbbedaeea8acaab0a29902b571694f`  
		Last Modified: Thu, 13 Aug 2026 19:36:24 GMT  
		Size: 51.8 KB (51787 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:4d155aa3f2c2cc1838bb70e81396f76373ec7275ec9ce9cf32873cd677c9a992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155241177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85269e8c6aa961524542eb4dcca44c4aa1deba2cf507e9e28d5ba8f971aeab9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:43:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:43:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:43:14 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:43:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:43:19 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 25 Aug 2026 00:43:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:43:37 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:43:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:43:37 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:43:37 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:43:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545481733576eae22997a02807d7947613125ef556fc5267d8b71b8633888312`  
		Last Modified: Tue, 25 Aug 2026 00:43:56 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ec89b686ebd79b724a8429c13f58185a441a1c483bf8819931d566db040829`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 4.5 MB (4519566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f79a42a2dfe06e33db86854c4f0484d3fd98636de77570703312d26f0df24`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 1.2 MB (1203841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ba4d1b9b1aa469776fb0250fffeace022a871a88d423518cc33fa388ffc663`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 8.1 MB (8066459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a8987b6f5cb2778463a82a1f33a53b667e76f57aed25ffcba1f70b16c9ab59`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 1.1 MB (1108983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef8a510d41418d6cf3f98cf24533b81adcba4bd5689ae1e60c89ad5c4336e3f`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7105667d1505a2ae58b986439108a7fd8a3a8cab26eb47f1009ae60c3986ff2e`  
		Last Modified: Tue, 25 Aug 2026 00:43:58 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840f3b8b2441f35405e77774444fdc3233c4c83ea240af495f58ad95390c67be`  
		Last Modified: Tue, 25 Aug 2026 00:44:01 GMT  
		Size: 112.2 MB (112194873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2cfabac35eb0d31771041e04952ee51afdfb69a6d41a2dbae864f63bd7a070`  
		Last Modified: Tue, 25 Aug 2026 00:43:59 GMT  
		Size: 19.3 KB (19319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca026fbec3730f56a63cea66221e2aadbf90e89f796f967dee89cfddeaf09819`  
		Last Modified: Tue, 25 Aug 2026 00:43:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db077a768c3b2e74f651728b16ce42dd1adba16a42ec7b3402c1209f8204cfef`  
		Last Modified: Tue, 25 Aug 2026 00:43:59 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53367cc5fc824588caec6e186b0a5641c4c80e25a36002faed84d4eb6e9dfb2a`  
		Last Modified: Tue, 25 Aug 2026 00:44:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:0c7c2cea3fa439101a4d27894aeebbe1d9581d61615deda7dc1910b3b8dca09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6214726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5226de97239946ec5e25aa1b7cb0502d3ab7eae294561bef64f68e4b97bb4c25`

```dockerfile
```

-	Layers:
	-	`sha256:2e4d0c85f636bc3c8c6c4abfd255cfc16f203e91b62cd5a07f04106edf8d34aa`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 6.2 MB (6162894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:693a28c42a1f142f00dee0ec38e1f3177c1f150a2c8e6af38cdc461c7c57838b`  
		Last Modified: Tue, 25 Aug 2026 00:43:57 GMT  
		Size: 51.8 KB (51832 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:8d752209dccbade2f3e801f751f5a38191f004acef2abf2e83cc20430415cf0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94075155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7346204fd119bbd9028baffcba52bd71c41895e878a25153cc83425d6ad949`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:39:10 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:39:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:39:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:39:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:39:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:39:26 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:39:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:39:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:39:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:39:30 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:39:30 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Tue, 25 Aug 2026 00:48:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:48:03 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:48:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:48:03 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:48:03 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:48:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:48:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:48:03 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:48:03 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:48:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449f5186a9d566eba6636d3d89662dc184756b781d92103eb48ab12ba8575971`  
		Last Modified: Tue, 25 Aug 2026 00:48:15 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57179412ea34ed0e9b2550dc6e5a3a746c1d65e6fb332103fdf81a403d99f0b`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 5.0 MB (4966156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1be5d569728b8da3c2dbbddd6ac98fb2fafd7f01214ca88647fb62594b1a7f8`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 1.2 MB (1219081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbaec274e147b74a2ed303bdc3080bc6fa3baeaf81d3d0afde996bda62374f60`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 8.1 MB (8066460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c097ab7585808130edb92b78573cbfa30d4323a943bfc200d7a2ef82fb20fb`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 1.1 MB (1137523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90662789c606c95c250f1a67c075bb1f216e569217a7644dde327b5ef3a7a3a`  
		Last Modified: Tue, 25 Aug 2026 00:48:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07df4800cc7da0c923cbf00740cd9a5f02861b3bfebfb402ca4a97ad1725ed76`  
		Last Modified: Tue, 25 Aug 2026 00:48:17 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f907d87cd60ad97eeb0f42c6160af0bbb7ea45837068225b2f9c52cff317703`  
		Last Modified: Tue, 25 Aug 2026 00:48:18 GMT  
		Size: 49.4 MB (49434710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c05252eb2f752e631ea6ee86c13d186a572152c9ce52e0d039b8826dd20b8b3`  
		Last Modified: Tue, 25 Aug 2026 00:48:18 GMT  
		Size: 19.3 KB (19323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551a0bad4660f25ede6693fc33ed3942fcc9a5f9699bdbbfb80e6888132c671b`  
		Last Modified: Tue, 25 Aug 2026 00:48:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e727d12758cb1cb3d9c29b14ca92b96f5af2b4ab82eac3b179979f2773f9b1`  
		Last Modified: Tue, 25 Aug 2026 00:48:18 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d3360269dca2b5712df53dd2c5fbbf4403e2d0d11749c51863ce6114a219a9`  
		Last Modified: Tue, 25 Aug 2026 00:48:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a32ecf659e00819d37b6128be39a846f110723906d22eee5310702045e07aee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f810b6556ca9d998f73b990eecd56c0ff57fad372ab7f919b08b54798e6382d`

```dockerfile
```

-	Layers:
	-	`sha256:51ef1f48888cfe794de016767771c0873d2413683c7557ac8f41feb4bc8edace`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 5.3 MB (5311654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb714b7a30d5120512cb333e5832989facecbd4477bf2ceb68cbbafbb921868f`  
		Last Modified: Tue, 25 Aug 2026 00:48:16 GMT  
		Size: 51.5 KB (51538 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:27c6f715360ce76e216c046c31a05116156952ffddac64de7d68fb5a6caca75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170144510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b813f7ccaa387ae4e547c6ab64d5d967d1a527efa652423dadcc35aaaa08120c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 00:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 00:48:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 00:48:19 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_VERSION=18.6-1.pgdg12+2
# Thu, 13 Aug 2026 19:20:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:20:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:20:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:20:33 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 13 Aug 2026 19:20:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:20:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:20:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:20:35 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:20:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:20:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cec939a79644ab6bb78d28a444eebff366ed6b949f2b7290c972bdc67fa6f75`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b540a69468854421d4735efa7a83f681adc411de8c514dbd9b0226b58da5ff8`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 5.4 MB (5368560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb35cb0ec0deb640076d3857b908b44243fc6f9647e7a06c813803509dd30610`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 1.2 MB (1208180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97fe6452754394c6c13687328c4dd74149ba2f00bf61d6b8bb6d1a070fc892`  
		Last Modified: Wed, 05 Aug 2026 00:49:51 GMT  
		Size: 8.1 MB (8066511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c09e453d5bfc9f19d37c4fe21e8fbe55a806430542ad4f894a620a8ee53ae39`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 1.3 MB (1283621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca6b0a85b1dd222d227227e64758c77d24db36e13875b8f144c7de1107ea63f`  
		Last Modified: Wed, 05 Aug 2026 00:49:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16ede0afaeb0072156a4047fdb2b7cbd8ec5aebe178590a468624158eab2bc0`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a93b2094dd80153bc2c5151666117fb0535e640e2e1fc02ae88650605b073fc`  
		Last Modified: Thu, 13 Aug 2026 19:21:21 GMT  
		Size: 122.1 MB (122111152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbaa89752080fde4e90beb660adc7ef83bf77addf67f97bd15b3624bdc84502`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 19.3 KB (19314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f502aefbea43c38185002cc86ecb15374859ec1395432248e7b4aef14b4188`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578050de3fbd6a36f2a93726b4294fec525fad92ab426224794949cd904ed0e0`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6393dd9317630c0eeee1fbcb710dca07439a70bc6b2ab82ca95659c960812a8`  
		Last Modified: Thu, 13 Aug 2026 19:21:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:35f07afcfc92e171563f9e0599ac65a7985bd91a34d7404685b1b1414d7a69ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6215602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c1108f296859d60384685a3e931ec9864c56bd7ae3239bab564b4577d56b06`

```dockerfile
```

-	Layers:
	-	`sha256:e7094b419c5b6275af8c7a5f9a47d8fffe93a6be2d7407f49d4a4420c12f14ac`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 6.2 MB (6163954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e81c143d20d9f6f8b9186ef71445cea73962bfdee3f15c2a772b1d740166a19`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 51.6 KB (51648 bytes)  
		MIME: application/vnd.in-toto+json
