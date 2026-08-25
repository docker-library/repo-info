## `postgres:16-bookworm`

```console
$ docker pull postgres@sha256:90ca5a03eee7e5ec4fba17e0f579cdcde56ec436791c1a0bd869cf53734f7e94
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

### `postgres:16-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:1938c16e9d2f10a6a3623b344b64ae8d45f407f2c5f34f0979468bb689b9227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155111561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f71c21b69a7977b82247582e2e731ed76bdebaadb7dd7945ed76bcc9ed06632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:41:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:41:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:41:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:42:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:42:03 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:42:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:42:06 GMT
ENV PG_MAJOR=16
# Tue, 25 Aug 2026 00:42:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 25 Aug 2026 00:42:06 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Tue, 25 Aug 2026 00:42:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:42:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:42:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:19 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:42:19 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:42:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7af40ae67ad99f933a785c512ac69da5c0d6ed91b9fc154312252c25bbb140f`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ae2cba81fd05651bc9b02c8f77670bbd28207eb6c336d382b3981f89c5dd7a`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 4.5 MB (4534269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db28dbab443b290a47801c0c811f07bf409b3fb3369cbded61a742ece7539a5`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 1.3 MB (1250052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4827842fa5e43f2a951ee42a23c4c5b78040fbe07667703e9cf74a9dcda464ee`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 8.1 MB (8066504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d4e4d9c5723d65b1a1433d68512fc7c955bac5a05bd4ec04176931c48cd92a`  
		Last Modified: Tue, 25 Aug 2026 00:42:40 GMT  
		Size: 1.2 MB (1196454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca46ca6518514ce7f4e7bd52b70b3b73f07fdb339fe9eab4ef829ed443791ac`  
		Last Modified: Tue, 25 Aug 2026 00:42:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3320d5513610fff2343fa08ea736732ec6871597833b820d3418f3e5ec037440`  
		Last Modified: Tue, 25 Aug 2026 00:42:41 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc0849873739bada842166b3a054715c46b054adf16176b18423b6c9ef1b505`  
		Last Modified: Tue, 25 Aug 2026 00:42:44 GMT  
		Size: 111.8 MB (111810593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2620c4b83e21763b47d726608bcc7be70d295cdd34ce7fc71a5102dbd0202b3a`  
		Last Modified: Tue, 25 Aug 2026 00:42:42 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056882c7cf135febb3d275aa790e1ae6cb2c8ca38c6ab845f30ba6d26a0f72b3`  
		Last Modified: Tue, 25 Aug 2026 00:42:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c2f8e41f83887980de3967ffdd61cbcb6086ba058ad01d779e878ba4084d22`  
		Last Modified: Tue, 25 Aug 2026 00:42:42 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea6527442030bba03ee6cb0818f43c3cbd0b57f60e80a25df73b2947afc631a`  
		Last Modified: Tue, 25 Aug 2026 00:42:43 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907a9d0cea7b7c52b864474104632a445531507064aa5780d64df8eba6c312f4`  
		Last Modified: Tue, 25 Aug 2026 00:42:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:4ba017d475bffe5bb91d50107c339b64a43853b264a2426ceddfa47557939ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5962929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df74e667d6ee2b52eaf1c111c31b2199a1f473c0b005fe884be3cc9b9773959`

```dockerfile
```

-	Layers:
	-	`sha256:90162b18863727e5883dc9c5fcae8c65b6ff353e7e9caa03292e77626d386d47`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 5.9 MB (5909628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81926168df652b2566d246259a832e999ed94d3c134671eb1adb6e07a292f05e`  
		Last Modified: Tue, 25 Aug 2026 00:42:39 GMT  
		Size: 53.3 KB (53301 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6eeb633ae69701f804cbaf35f6107ec497f962b56362712ef1d458eb0e6895dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82241751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cd03b8f81018f6a8880bb9e2ec888abfe85a9f080613ee73f4ca8ed3e6bcff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Thu, 13 Aug 2026 19:14:03 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:21 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:14:21 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:14:25 GMT
ENV PG_MAJOR=16
# Thu, 13 Aug 2026 19:14:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Thu, 13 Aug 2026 19:14:25 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Thu, 13 Aug 2026 19:44:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:44:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:44:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:44:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:44:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:44:52 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:44:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:44:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:44:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:44:52 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:44:52 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:44:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f142127778dc0ba4a516b6a0afc1b80baf64e22f3509f78b003a715286459e1`  
		Last Modified: Thu, 13 Aug 2026 19:26:44 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7444096034fc262d95bdca83e96b65cb8b43d9b790f11699aec34b8769abaff3`  
		Last Modified: Thu, 13 Aug 2026 19:26:44 GMT  
		Size: 3.7 MB (3742709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93601715c0fa54045d4939d33c06918142b777075d96c76c260e744408f4182d`  
		Last Modified: Thu, 13 Aug 2026 19:26:45 GMT  
		Size: 1.2 MB (1216519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75dcefc4010b791bbb6d9407b35d9698e96ea49da50b1ba66059cc558b252c7`  
		Last Modified: Thu, 13 Aug 2026 19:26:45 GMT  
		Size: 8.1 MB (8066441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53470f569b1015e8d205bf83c8496c460f71f1b40b1787ff62314ed8add27da0`  
		Last Modified: Thu, 13 Aug 2026 19:26:46 GMT  
		Size: 1.1 MB (1067295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8582f2ee1b30ec890aed98a1c7d0380dd4a159e60a0d02627e1a235160a8a8f`  
		Last Modified: Thu, 13 Aug 2026 19:26:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9af7503a35785534b4e42ecc5e593384a6c747d438d356e497fe896cf5b3fe`  
		Last Modified: Thu, 13 Aug 2026 19:26:46 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4ce91c7ff3b0fd3c3b0d565e63df3c8bfb2736628a7d32589e9261c4ec7537`  
		Last Modified: Thu, 13 Aug 2026 19:45:05 GMT  
		Size: 44.2 MB (44188013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7746b8a48a2c19008c4868a0bda689b761de6c2d1dd69500ccc952b130a34347`  
		Last Modified: Thu, 13 Aug 2026 19:45:04 GMT  
		Size: 10.0 KB (10009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b70c6b905ce2c59a02727dce8e1aa908aa502ebcfec3ab079c59c15baa468e9`  
		Last Modified: Thu, 13 Aug 2026 19:45:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0801477d5a3e3fb91ab89c946bd209bb7efaed8174dd5b1e41ec3ab1bcd1e0e5`  
		Last Modified: Thu, 13 Aug 2026 19:45:04 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5c394b964861821de867762cc55a1c176b388ae9216bffe76467e32e0b245b`  
		Last Modified: Thu, 13 Aug 2026 19:45:05 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0108434efaee01b42e6b8b5ed3c9c161b4e80c1e6cba33d63afceccb4624a3c`  
		Last Modified: Thu, 13 Aug 2026 19:45:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:09ae929033fdf4d6aedba7632e245d56955d988d7339067bc16579a173fe62b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bfdd68d94bb2a9bf1b0de2a72b1c54948ccba895358fd051f208285b4154a4`

```dockerfile
```

-	Layers:
	-	`sha256:38ac41d548e876dda85b443a7f77739f1014e11e546b4df96af6c5616bbd4e7a`  
		Last Modified: Thu, 13 Aug 2026 19:45:04 GMT  
		Size: 5.3 MB (5280332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d4e488232640fe5f59e7be785584ed6142222c3baec6a17a8521fbe9af4d3d`  
		Last Modified: Thu, 13 Aug 2026 19:45:03 GMT  
		Size: 53.5 KB (53502 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:82d79b2af75e0f30e9df79f4b1197bedf3be936b188b9a63cc2ea917051260db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153112414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6e27d09055c2375cfd2d57329eca6188ab913c93cfb5b3935961606c823b6a`
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
ENV PG_MAJOR=16
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 25 Aug 2026 00:43:22 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Tue, 25 Aug 2026 00:44:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:44:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:44:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:19 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:44:19 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:44:19 GMT
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
	-	`sha256:751c1539d5405c1d9fb1fe319bc10d2b60f0aa9b7b1c9755d5aedb950f0af244`  
		Last Modified: Tue, 25 Aug 2026 00:44:40 GMT  
		Size: 110.1 MB (110075245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bfbbf06ae9e66c690ae48cbf4f3ab59b3220a72192cc4b8250b69bcb796cfd`  
		Last Modified: Tue, 25 Aug 2026 00:44:38 GMT  
		Size: 10.0 KB (10014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826d3041d5bf27bfb127850ec5c2e26ada90ff6b55aacadf65dbf0047c1d0753`  
		Last Modified: Tue, 25 Aug 2026 00:44:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6c039401b5386c9f9c438357fd99068a29b049d3500bba1bb0406e2c7a8507`  
		Last Modified: Tue, 25 Aug 2026 00:44:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5393023b6e4ea514707d9ce63810d8d879e142306726567da99715826e7b6bed`  
		Last Modified: Tue, 25 Aug 2026 00:44:39 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06661088c2ef974e03145b81117a978b70d94e562b779639e048b8b4c568ec4`  
		Last Modified: Tue, 25 Aug 2026 00:44:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d81c758ba98806af24a7b70e9bed7843d59296c23bd257bfe9b29278c0ba4767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5969485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126c6b784aa07b9368eeae710130fead79fff74692b0e758e58d29ec381bf735`

```dockerfile
```

-	Layers:
	-	`sha256:529802aa0458426dcd062b431293b80dd3566aa79fdd233304912c84c8d4893e`  
		Last Modified: Tue, 25 Aug 2026 00:44:38 GMT  
		Size: 5.9 MB (5915939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9578c29d75a8d2f47e08da434b1d06d96aa7530b84b23c4d40b912311284b91`  
		Last Modified: Tue, 25 Aug 2026 00:44:37 GMT  
		Size: 53.5 KB (53546 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:755be97b3bd33ad7f152149a1ffced7377b3032eae18f7b475a9b655d4ad0997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92739032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adf23024efe2b020393e9ee4286a46d0f761ac8e86d07bc438277754485232e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:40:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:40:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:32 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:40:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:40:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:40:37 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:40:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:40:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:40:40 GMT
ENV PG_MAJOR=16
# Tue, 25 Aug 2026 00:40:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Tue, 25 Aug 2026 00:40:40 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Tue, 25 Aug 2026 00:48:54 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:48:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:48:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:48:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:48:54 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:48:54 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:48:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93bf55d2174c27a59d5885394fd41fc2146904deb876d73efc13cb15be60971c`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0341b67a0e7b823bc8b12cf0c770ef3eb149c800bead90db325257eba34490`  
		Last Modified: Tue, 25 Aug 2026 00:49:07 GMT  
		Size: 5.0 MB (4966081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51d206344de39a06834a4683e8cdd91dcfb1eabd535b97d63362b96a39fa6d6`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 1.2 MB (1219039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4c2fbe045f3b55e2995be04e5debbee503822e2da6aba8f370eb1627d0a36c`  
		Last Modified: Tue, 25 Aug 2026 00:49:07 GMT  
		Size: 8.1 MB (8066447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fdee277c3a2e903015f32f4264e5faf7f21822c1bc1f9149124a3e511a7657`  
		Last Modified: Tue, 25 Aug 2026 00:49:07 GMT  
		Size: 1.1 MB (1137486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebe669b375cbe5fbb0015dae20ea73b4ae549ad11828452ccdb5cf025164c0e`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668d28a1cf3b9c91982f92e0b26b65e7bcb8c7c10892b029b8d92a5f69897298`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa07464a0c18d0d7abfa558d9fb985495ea194d5e52dc7fc1d60c36eff775570`  
		Last Modified: Tue, 25 Aug 2026 00:49:09 GMT  
		Size: 48.1 MB (48107894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75202205c93527035551890e7a5e4722d2fd7b8313c856642e8652fa978d4ab0`  
		Last Modified: Tue, 25 Aug 2026 00:49:09 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9607931fbd38f72e75c9b7e8b7969d1a659c2df913d0865f24e39a5de6260d47`  
		Last Modified: Tue, 25 Aug 2026 00:49:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff5e71e233b77a6e928db762936c1e89672f6a41dcfdc7f795f806410c4ed56`  
		Last Modified: Tue, 25 Aug 2026 00:49:09 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7284d85642a44282ca1633fd568d7aabe0ad8e2faa1e789812aa7693972f5010`  
		Last Modified: Tue, 25 Aug 2026 00:49:10 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b8527167ff6ae646cb71facc01cf99613c264656f428d4b67bc356ec12648b`  
		Last Modified: Tue, 25 Aug 2026 00:49:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:5609cc557c75edcb7c2f8fd375a9dbbdd43575272d12f3d9b6de2006511b4f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5328921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7774c67c6543ae80158dcfcb142f29eb22e14e91c05f671ce3ec83dc2f9e7db`

```dockerfile
```

-	Layers:
	-	`sha256:799f8918618f8cc8ea6f71364f37a85f0c451a670e21bc5c1dbfb460359389ce`  
		Last Modified: Tue, 25 Aug 2026 00:49:07 GMT  
		Size: 5.3 MB (5275670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea88900a2e8e50c19f0638075a0d34eee88247a88010d3ed2c322d96b8df925`  
		Last Modified: Tue, 25 Aug 2026 00:49:06 GMT  
		Size: 53.3 KB (53251 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:1778f972f7355f293d401658a8d64d84e1f285de97f0bfd4d5c2e6477f477fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167878561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd067f95f134492f266bf98b3e516b0334a114f292ab440f12444e25257af2d`
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
ENV PG_MAJOR=16
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 05 Aug 2026 00:48:30 GMT
ENV PG_VERSION=16.15-1.pgdg12+2
# Thu, 13 Aug 2026 19:34:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:35:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:35:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:35:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:35:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:35:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:35:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:35:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:35:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:35:02 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:35:02 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:35:02 GMT
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
	-	`sha256:7b923e221ebce55ed3fccec0ad22944aadef8716d981e54e3d48645f3a1b78ab`  
		Last Modified: Thu, 13 Aug 2026 19:35:45 GMT  
		Size: 119.9 MB (119854336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e4862189562d2ced89de338cb9225a4c99184e5dd9a87529c8a310e83be7e8`  
		Last Modified: Thu, 13 Aug 2026 19:35:42 GMT  
		Size: 10.0 KB (10016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc6f2a55e737c91e4890729357039cd8656e2e85db8670607907cc28f1697f4`  
		Last Modified: Thu, 13 Aug 2026 19:35:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ffadcd516ad713361b3e6b1e8c047b16727e25fe045a08e19628c7dedf2f6af`  
		Last Modified: Thu, 13 Aug 2026 19:35:42 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3f4d3deeb157c8646dc3f697c18bd87f80607fe44c6aa9f9f1e25c199cb847`  
		Last Modified: Thu, 13 Aug 2026 19:35:44 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac76e23b9e109ccca319dbea7b42e95a9601ad50a778e40da65ba4ee1c8a931`  
		Last Modified: Thu, 13 Aug 2026 19:35:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:f7d4e03d3016254d2cc6dc488255392904525e5efddd7eb4766ceb366a6a555f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5970344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeceb380d24634f29e8c23aa193055ef94a6dcf9bdfe9a8ed20bb1b63d45f496`

```dockerfile
```

-	Layers:
	-	`sha256:65fa19e2dcef7f017adeb2b10c5ac2890127821a80ed8c586b6f414bdf05b7d3`  
		Last Modified: Thu, 13 Aug 2026 19:35:42 GMT  
		Size: 5.9 MB (5916989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdff95de5af83a35388e54b99d9f0d5938babb73165217589b3e6b89787396ac`  
		Last Modified: Thu, 13 Aug 2026 19:35:42 GMT  
		Size: 53.4 KB (53355 bytes)  
		MIME: application/vnd.in-toto+json
