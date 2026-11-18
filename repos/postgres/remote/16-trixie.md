## `postgres:16-trixie`

```console
$ docker pull postgres@sha256:23fdb7b8156ad34bc663ed911f360764c5a5e237d6d70d1e379e025f63439a2f
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

### `postgres:16-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:72d22ce26d04fe56a5384e9f6b026152d1cf05db602a7a3524a3ed337d5f5752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166179540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd2c185c3dc19e21db2174dce9677cbe6c78dfa6b50d7a3751cea87d95d16b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:30:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:30:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:22 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:30:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:30:26 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:30:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:30:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:30:30 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:30:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:30:30 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:30:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:30:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:30:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:43 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:43 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a147a27498e1debbcac89d66f668fc6d60876c088f04443eff5c38f40d1461`  
		Last Modified: Wed, 18 Nov 2026 21:31:02 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893773e1f215dec57fc1eebcedb7feedb2f82a3432aab58e1eb0d249ba3b1505`  
		Last Modified: Wed, 18 Nov 2026 21:31:03 GMT  
		Size: 6.4 MB (6442964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43692ded9222d500dd692cb5a6f39e3974d5b3e87aa08a7a18599056768f4ab`  
		Last Modified: Wed, 18 Nov 2026 21:31:02 GMT  
		Size: 1.3 MB (1258030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71988767d8fa732affbf0497b8ae3b48f646b4ce423d35b13b7be967f75992c`  
		Last Modified: Wed, 18 Nov 2026 21:31:03 GMT  
		Size: 8.2 MB (8203828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5b8924f0a26cd25f658934f4700620577ca925f6023caa5ccf17ad0936a51e`  
		Last Modified: Wed, 18 Nov 2026 21:31:03 GMT  
		Size: 1.3 MB (1311698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37be121ef1ee3822d139e1f7b11544da5bca78c8fd0f4a311cd9a78665e523c`  
		Last Modified: Wed, 18 Nov 2026 21:31:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57869d2f2b40111f49cfce7d60c143bef63d6030e7c7745748cfb7aa7406f4ea`  
		Last Modified: Wed, 18 Nov 2026 21:31:04 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bda6b874f7768d473fb92bd11705bcb84c23297e1d1c60ed6625badb72ff397`  
		Last Modified: Wed, 18 Nov 2026 21:31:08 GMT  
		Size: 119.1 MB (119085729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fefcc83b4c317fe55bac871ba807e9bde6853f553361c03a219d8be3ae84913`  
		Last Modified: Wed, 18 Nov 2026 21:31:04 GMT  
		Size: 10.1 KB (10113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae4197f54cbee2db1be7c282e7768563e59d92ea5bc0ba744d9fdb541dcd2bd`  
		Last Modified: Wed, 18 Nov 2026 21:31:05 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a160a6fee11517d3791fea74f7eb42375dcca4952f41f1309f847bcb996beae5`  
		Last Modified: Wed, 18 Nov 2026 21:31:05 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115041a3e4733f245b6db5254bc1d0486d8e1366e26da62182338834b86fa1b`  
		Last Modified: Wed, 18 Nov 2026 21:31:06 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:95d23d0a20a0b744d247ac00f4c629a2145f75cdce774427ec6bebf136d847d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6116237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f557790a1a8225312a3d9d2cf5e48c0428689c615ce0007372b41dc214335184`

```dockerfile
```

-	Layers:
	-	`sha256:51d128040abbeee1db7317e08a8aa2cf0c0d4cc719338c929449c531e3bdae1d`  
		Last Modified: Wed, 18 Nov 2026 21:31:02 GMT  
		Size: 6.1 MB (6064083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7e2d1cf6286a09df99d55e947d5ff5975e58a2edca74c688370e49f858345e`  
		Last Modified: Wed, 18 Nov 2026 21:31:02 GMT  
		Size: 52.2 KB (52154 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:7d0c017f54e8e8491e39d9787ac797702c5c22d200ca01a3f50187b8c00e6518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96352328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74d84a148262c6ffd005dc0bb1b4525826f7ce9f606b132c017b8cf3f3cfdee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:28:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:53 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:01 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:41:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:41:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:41:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:41:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:41:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:32 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:41:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:41:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d279ef65e398cefc29dbd87c1fb6c2811632131384b23c5395537549965fafd7`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47f95797dd387c748b65dd9b53bc03d2784e9b14987eb813c8764bd1cbafeee`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 5.9 MB (5932393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055e52d14facd3e2c2658743527e46312051cee1034359d7120928425043b1bf`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 1.2 MB (1229301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95928def6a69be369b130b8e67ca232b1c8bc5c85c65e7520e72d10aaf6857a4`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 8.2 MB (8204310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e977ae891b4f3ab06e226616eafa5f1d6dd0840584120e2d2d88316e0bf2b`  
		Last Modified: Wed, 18 Nov 2026 21:41:47 GMT  
		Size: 1.3 MB (1317400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c3af03748dffdecee855104cefe59a44c171414ff77cef71c52118f3800675`  
		Last Modified: Wed, 18 Nov 2026 21:41:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726b44b3f7ed3eb5e97800303631b3938d26695116c9b148d58e8629d5801d51`  
		Last Modified: Wed, 18 Nov 2026 21:41:47 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88be3660abbcd43ced099a10d5782ae1c534e6eb1728c11a5f299c979ba1e83`  
		Last Modified: Wed, 18 Nov 2026 21:41:49 GMT  
		Size: 51.6 MB (51628162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ab4d0dfa998c259485c09b0b4fd317bbdade94820a8ecb3ddd71388cd20c1`  
		Last Modified: Wed, 18 Nov 2026 21:41:48 GMT  
		Size: 10.1 KB (10107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920676fdfe920fca29c31a12fb43f34b76e03c6f7cdc5f5aa0b8bff320fc1d53`  
		Last Modified: Wed, 18 Nov 2026 21:41:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5519f67a664c285ee631b850986127f0fc5fccae5ff95ebcac356af2a26a4b3`  
		Last Modified: Wed, 18 Nov 2026 21:41:49 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ed977a5555e0d20acdbf2e3b72556a567e2fb4dc2b9f21aea2dd3baa694033`  
		Last Modified: Wed, 18 Nov 2026 21:41:49 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ad6fea5f679423a2776e020462fc2c16ef525486a941308cea3db70562213911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5477849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36e6468b332c4d7b25685318e80deb00288328c7d97d24834aa91f3cb865340`

```dockerfile
```

-	Layers:
	-	`sha256:1c7235726c1e54ed0136c23ee081fc5aad214d1899d3280ea9b5e5b468f9c666`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 5.4 MB (5425491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cb62a2df2ddc9d97cf1bbb21618b35f80f5871be845c2bd922b612c646e3136`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 52.4 KB (52358 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0f027511d4768ce5a01ca52263dbff6280b58834106ef730f52d934cbca4ca71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92322265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e989868ed8f3398273b76c20544ee623a000c016793f6da9f02f3be31b556d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:45:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:45:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:45:33 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:45:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:45:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:45:40 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:45:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:45:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:45:45 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:45:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:45:45 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:56:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:56:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:56:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:56:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:56:52 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:56:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:56:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:56:52 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:56:52 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:56:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43309c90cd844d1d452bb919eba095c1291fb146b11d020ab31f3d5fca88690`  
		Last Modified: Wed, 18 Nov 2026 21:57:05 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13e1e04388592ccd1d2a3e75d84ec83be9ce880c6e2ce142fdfcc91e42c1471`  
		Last Modified: Wed, 18 Nov 2026 21:57:06 GMT  
		Size: 5.5 MB (5497289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b87f7327bd34c1feb7622b6332f4b987521dc1531229cdfded0b880448ef53f`  
		Last Modified: Wed, 18 Nov 2026 21:57:05 GMT  
		Size: 1.2 MB (1223503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c807a428b387e17168790daa985236cd76792c067449ef3d6068eabb44d62b`  
		Last Modified: Wed, 18 Nov 2026 21:57:06 GMT  
		Size: 8.2 MB (8204081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0c9dfd06bbff10bd63b3a716e6084e4a6e1c7caad84c62b091879536abc945`  
		Last Modified: Wed, 18 Nov 2026 21:57:06 GMT  
		Size: 1.2 MB (1172707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a431f800b38728d19db5fbb48ba83a20c7cf8a9056731e6cacbb31b5847494c`  
		Last Modified: Wed, 18 Nov 2026 21:57:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677844681451fef7c7a4f614ba83cd00b3b809f6583bf7ecfa2c572bac05ebf2`  
		Last Modified: Wed, 18 Nov 2026 21:57:07 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaf91eb26708fa2ff85e2a1d88896302c5e901e75ebac1c0b78d1faea0e5798`  
		Last Modified: Wed, 18 Nov 2026 21:57:09 GMT  
		Size: 49.9 MB (49930600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a5dbe36f35bffadc03da479a0b99ed0023a03a6c84a606b8bddb88eee1bc5f`  
		Last Modified: Wed, 18 Nov 2026 21:57:08 GMT  
		Size: 10.1 KB (10124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8b06b5eec4bafe48f74893fabeef029499e25527a309f02a4e9085c6b040b5`  
		Last Modified: Wed, 18 Nov 2026 21:57:08 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf421f294ee56f95837f656072154fe507df07196d74167007f9dad05902211`  
		Last Modified: Wed, 18 Nov 2026 21:57:08 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f415615db136ca6879b0619b6be69630073e1c678c714d7ef811b0bb964af581`  
		Last Modified: Wed, 18 Nov 2026 21:57:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f62c8edec651bc2fc18e5ca643a2eade6db83196145a356358c6b3f857564a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5490545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54691160133fec01206deccdd628c5ed8730c469ce96b14dfacd50c120227d6a`

```dockerfile
```

-	Layers:
	-	`sha256:919ceff0ba6f7e865deb84227d9d6d488f4fe405be4428606446b671028fb8c0`  
		Last Modified: Wed, 18 Nov 2026 21:57:06 GMT  
		Size: 5.4 MB (5438186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b41311702716a3703cc9a7f5b00f414ed245c9ab9cf3b36516e95927bd6b20`  
		Last Modified: Wed, 18 Nov 2026 21:57:05 GMT  
		Size: 52.4 KB (52359 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:9a9c1491108ed81f0e8515eac04e163049516b22bda963a508e162e727982b08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164706010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dbdc672f31497b072213cf12c2a47f8ad56ac4af7ac028eadb11ae77a444be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:30:22 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:30:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:36 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:30:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:30:42 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:30:42 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:30:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:30:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:30:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:30:46 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:30:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:30:46 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:31:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:31:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:31:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:02 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:02 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76873bf0879d2299176763263e3dfaf8d50ee652997b4a9d63004b2bcec48089`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40058dcdc4f0e10945d5ebdef2998e52d26e601248fdb232cad966606d6a1ef`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 6.2 MB (6234933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f891ba9beea4a55faac02e166051f90a3740eab048885bba109ea6236743f`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 1.2 MB (1210408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224dd9a26a7bf77a6e4824d76eb909562f705f7d75552d5b641325fbe76c238e`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 8.2 MB (8203949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91902140d1fa857484935b92443bce2f9ded2ac4a1d0fdd2d7a3ed02ca54850`  
		Last Modified: Wed, 18 Nov 2026 21:31:24 GMT  
		Size: 1.2 MB (1220654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee5a744b5149808e29eb009b02ffedc900393eeea16b9a20094971ab7f91b3c`  
		Last Modified: Wed, 18 Nov 2026 21:31:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75d2ab29b1ce19326c8b79d90757f0beb0beec4497c45b5a028f3d781db1b37`  
		Last Modified: Wed, 18 Nov 2026 21:31:24 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751a20fdc6d5c97f56ab6d8ed85e357455011c523a73f98b0954f1bcb169df94`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 117.6 MB (117600866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9211b3676b3741c8062c2c92b4a98e1b53566a2d982503c1407a53551eb492`  
		Last Modified: Wed, 18 Nov 2026 21:31:25 GMT  
		Size: 10.1 KB (10120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cb2f2d68ba42bec40d1cfc37fecd7c0d727e418a056aa3e35413103bed481e`  
		Last Modified: Wed, 18 Nov 2026 21:31:25 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a96e0fc098647c34c24d71f0493d5663556c8b800d02bd06c377f404f16971`  
		Last Modified: Wed, 18 Nov 2026 21:31:25 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4547d582e48321a2dd79f3bdd72b23120add104fdd00a356a36b6035ff078d0`  
		Last Modified: Wed, 18 Nov 2026 21:31:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:edba18c130a2d5666b801f4aa5cad279cfd32492f6c60048b958414d7976a3ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6122832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb1ff7d0e8b7837c2f8ec4e10179616ced6081b32e0781d16ac85c75d2093ad`

```dockerfile
```

-	Layers:
	-	`sha256:4d98369129ade04fff811f941671197819ba51cf6876ea535ddcfa23b9a70608`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 6.1 MB (6070424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca7d163a063778ee9b005c473ba7bd4395e9ae654676ab70336e0b834f3b90be`  
		Last Modified: Wed, 18 Nov 2026 21:31:23 GMT  
		Size: 52.4 KB (52408 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; 386

```console
$ docker pull postgres@sha256:024f26614050a7af0f0903b93eee503a1c153206c9ebec5558fa5d9ccab8a7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102275263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec170488f955fac44a603ca50bc66f0ed18fbe94cf7515dc316da5922924105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:28:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:38 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:28:43 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:28:47 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:28:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:28:47 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:45:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:45:50 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:45:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:45:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:45:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:45:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:45:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:45:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:45:50 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:45:50 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:45:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751111c82409c7178ff7f1c20c69942be5a726fa74b3e67a901516fdd8d28d2`  
		Last Modified: Wed, 18 Nov 2026 21:37:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4aa0e338a212e789bcdc7813197a9970dd02a86e0d404e03b7963d4b275a15f`  
		Last Modified: Wed, 18 Nov 2026 21:37:40 GMT  
		Size: 6.6 MB (6631390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bfbc92d9f8b5198a00f21ee9d42f2e1e05af7d349c154f68649816628d37a0`  
		Last Modified: Wed, 18 Nov 2026 21:37:40 GMT  
		Size: 1.2 MB (1226771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe42cb9ec2797e2b69ca298ff8766f808c9105d55a40794b2a9e8b32862af6a`  
		Last Modified: Wed, 18 Nov 2026 21:37:40 GMT  
		Size: 8.2 MB (8204043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98eb885d2c8e108f04e3d5680e4d53ca338b93bbdc0fc3a9657b70d2d31ebdbe`  
		Last Modified: Wed, 18 Nov 2026 21:37:41 GMT  
		Size: 1.3 MB (1308301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f7b73e4ae6ea9a5b6471a874cef850aa45cf8266744207b72e1251e20e6502`  
		Last Modified: Wed, 18 Nov 2026 21:37:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7031a73647f1113908dbf715f83f07dd09014782b33bf91cd7af33feacb9ca56`  
		Last Modified: Wed, 18 Nov 2026 21:37:41 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea98cea37e19a19113aff192afd3e5c978210452eaf9d34bee3057f0e19daca`  
		Last Modified: Wed, 18 Nov 2026 21:46:04 GMT  
		Size: 53.5 MB (53512839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4919c2f33fc64afad30c2e529d2d6d7067a15f7d49e70e38c7087e6e22d6f7d8`  
		Last Modified: Wed, 18 Nov 2026 21:46:03 GMT  
		Size: 10.1 KB (10118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bacd25621f780b35945c24224f0dfcf0116723c6e77972c17ce2a6ac4412de`  
		Last Modified: Wed, 18 Nov 2026 21:46:03 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2258f5116fc52338d46e6895fa887f890a8137d7e5ad0df4ff15826146a13e3`  
		Last Modified: Wed, 18 Nov 2026 21:46:03 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d7535f8094398e89bff33832bb7049ee3c056bf2adb857e07cc60a81d9e8d2`  
		Last Modified: Wed, 18 Nov 2026 21:46:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:3092bd6e3c0e1af5a58c5cf6748c564f66cda48243c2bc73ec67702eff77a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5486336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606b2268b426f9a148f2b1d2f5cd8951bf39ce4b39db77e7669717eb4029d7ff`

```dockerfile
```

-	Layers:
	-	`sha256:9adad313d039a4930674a13c62edd372fff0a25c57bb1bb74e0354416e439bc2`  
		Last Modified: Wed, 18 Nov 2026 21:46:03 GMT  
		Size: 5.4 MB (5434240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc4c5a303a3578dd4b43ede310540a1167b93c4e678cd1ddac048a98f8ea841`  
		Last Modified: Wed, 18 Nov 2026 21:46:03 GMT  
		Size: 52.1 KB (52096 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:9b83d0d8726a19751f8064775c0042810d98ef4164f6dbd14a7a6ae86e2dde36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.1 MB (179055075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4814a88da79c7fd1f01bc13c9e20b9ee050674b506cd0996e5598290f1b95e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 21:26:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:27:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:22 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:27:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:27:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:27:37 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:27:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:27:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PG_MAJOR=16
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 18 Nov 2026 21:27:48 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Wed, 18 Nov 2026 21:56:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:56:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:56:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:56:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:56:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:56:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:56:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:56:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:56:17 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:56:17 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:56:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7a509ce7fe5f345b05ad5716ad8d7038cace799f206010491a8055ecfa5108`  
		Last Modified: Wed, 18 Nov 2026 21:29:23 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc69132c404060ffb7724d793248330641fa10a05a4acdabebb5cdf9e0fb04`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 7.1 MB (7076967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e2351fc08baec5db5c1ce328d052a6fdfeb892b6347c139df73c53f2d4fb1a`  
		Last Modified: Wed, 18 Nov 2026 21:29:29 GMT  
		Size: 1.2 MB (1215591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df19d8d22736c4883d41f302a8681cc196bfa22d73c8d5cd1108836f22c9749`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 8.2 MB (8204105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d976015b0a32da538d25ff6fdb67d0c1e0421df9c10abf72a608ede2ac136f`  
		Last Modified: Wed, 18 Nov 2026 21:29:30 GMT  
		Size: 1.4 MB (1395000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb24b43e09a71cc62cf2083cf75f133452bfc0655803827d264e4992470f1cb`  
		Last Modified: Wed, 18 Nov 2026 21:29:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3b1a88b66cfb90075f11a9cc51368ec650b8ff1e24784b25e101e253972ce5`  
		Last Modified: Wed, 18 Nov 2026 21:29:31 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea66fc141e4398082abfb693154560f4c0b737a1cb057e33a3e50a837ec81aa0`  
		Last Modified: Wed, 18 Nov 2026 21:57:24 GMT  
		Size: 127.5 MB (127474601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b00067cd70863edbb4605ea76028bac7ba7203ad3b81fe92a4bbac435fa956d`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 10.1 KB (10113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391f79df30ffb1b0d2f2f08719c2d962cd0cc4e36dca760458d4cf5e1e929ed9`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62fa192c4042ec9ddcc6e2e3bd934ad80f4e72e96a885935965ab25638a9746`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2285a9d0ab806b22a882a8440c3eae8eeabafec4a94c8e41235d739689bf361`  
		Last Modified: Wed, 18 Nov 2026 21:57:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:307b3219973bd76f4c0e1045e36e3a0991f00ac6cae241d9045704c4adc04dd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6109547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a191f9aa1f88b16d4c7fe1073235b37bcb74fb145f049429b659f24350bcfc9`

```dockerfile
```

-	Layers:
	-	`sha256:b0f2b897703dcbbc549ffd06272807a86ae478a70dfa7581033ce74f798e7499`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 6.1 MB (6057329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e04b21adabd5f509eb745f7e14691a8d63bae5bf779deea1508cc87e76c4e8`  
		Last Modified: Wed, 18 Nov 2026 21:57:21 GMT  
		Size: 52.2 KB (52218 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:f84381d2c20cf47bace6d4b86a250e116d0f9172b9d7435a33db476dc3cc623a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97449752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3921cab3a01e4cc084a6dcef08a859c66a954d61433ab12979775c05a94512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Fri, 06 Nov 2026 13:09:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 06 Nov 2026 13:10:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:11:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 13:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
ENV LANG=en_US.utf8
# Fri, 06 Nov 2026 13:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:13:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_MAJOR=16
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Sun, 15 Nov 2026 09:38:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sun, 15 Nov 2026 09:38:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 15 Nov 2026 09:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 15 Nov 2026 09:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 15 Nov 2026 09:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sun, 15 Nov 2026 09:38:30 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 15 Nov 2026 09:38:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 15 Nov 2026 09:38:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 15 Nov 2026 09:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 15 Nov 2026 09:38:31 GMT
STOPSIGNAL SIGINT
# Sun, 15 Nov 2026 09:38:31 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 15 Nov 2026 09:38:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bdf486313f4fab4134d55e8bc180145d8cdcba9b939bda2bfcb8dbe0c94db1`  
		Last Modified: Fri, 06 Nov 2026 15:28:18 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a0b4573c7b8a214f84d60cda732378ca569ee43d2c764d55d6d85956126688`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 6.3 MB (6293046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a315df71a26c22b72f1f246cd9adc5dd90fec5135f51fad173250fc2c781673`  
		Last Modified: Fri, 06 Nov 2026 15:28:19 GMT  
		Size: 1.2 MB (1202081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d8877267ad22a64ac4264de125ac21dd260fcb4a7c19fa1e0765661063e1c2`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 8.2 MB (8203747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83570607eed8cee879f5b6de54268c68bd13c52e23f9c7d0e9a6183927b980e7`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 1.4 MB (1402461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4a001991cd17d93226b4ef6067bb1fe5358ee92c5728d01d141329ffedb7da`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e22d45c17a29cfbff0e0dff55bb2e94aaae980b0b984d6809d618ea1bc10a8`  
		Last Modified: Fri, 06 Nov 2026 15:28:22 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d818b4825b802b6bc94b5fdbed91af9f22b01a4d0ffd9de57d84426da2bcf6d1`  
		Last Modified: Sun, 15 Nov 2026 09:41:32 GMT  
		Size: 52.0 MB (51981086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91cf2f992cccba37a6e500302011ec913e9d68e08b8a71efa79a3ab1a8e7d5`  
		Last Modified: Sun, 15 Nov 2026 09:41:23 GMT  
		Size: 10.1 KB (10122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03d6b8d74d1f21faa7d7e0ba4205f3045ed6fa0778ca83c6c28c98b1af48dad`  
		Last Modified: Sun, 15 Nov 2026 09:41:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0733de28413cf41e308970c95087742a5c19dcd47b7524de710b0dd899ba972a`  
		Last Modified: Sun, 15 Nov 2026 09:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac9dff7183fbe479513ec9f6b7fb0225f49fd5917d515c99e7e89d3320b94a8`  
		Last Modified: Sun, 15 Nov 2026 09:41:24 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29e8838385bb4161500fc26a75eb1e87171e1d4152015609a6b30574e6e2359`  
		Last Modified: Sun, 15 Nov 2026 09:41:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:07e6ad142270668c7bf855f31c8ca3e727de92057fa0a8df7d116783b38979f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5489410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a547c05578a661290f00556bc5882315c7ef25a00fce4060d69d87cf53c996a`

```dockerfile
```

-	Layers:
	-	`sha256:1e57475692bc06f9e4e5594466e39ca3148b40124ac633c132463b903d0b6a01`  
		Last Modified: Sun, 15 Nov 2026 09:41:24 GMT  
		Size: 5.4 MB (5435455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:735331ddc6fb78f128738382d08330b73815eabc488655dc4ddb40b378ce7d08`  
		Last Modified: Sun, 15 Nov 2026 09:41:22 GMT  
		Size: 54.0 KB (53955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:6fb64693105bd7f6acb0bbc12c18138ecf4377026bded11365cba14a37ab5cd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180725967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0d61deaa02a621315e8da41bcdf3e4710211f1b32f82cb9f506014539ccfb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 07:34:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:34:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 07:34:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 07:34:59 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 07:34:59 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 07:35:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:35:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 07:35:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:35:04 GMT
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 07:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Thu, 05 Nov 2026 07:35:04 GMT
ENV PG_VERSION=16.16-1.pgdg13+1
# Thu, 12 Nov 2026 21:22:46 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:22:46 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:22:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:22:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:22:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:22:47 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:22:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:22:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:22:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:22:47 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:22:47 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:22:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65be553f677e708e1e11563266e7a5efa13a4a04517b989315483612553427`  
		Last Modified: Thu, 05 Nov 2026 07:49:27 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a381ff4bc00fb82ec8e8a04d6168e8e380eb346334e4dc125b25f09bd4ff5a`  
		Last Modified: Thu, 05 Nov 2026 07:49:28 GMT  
		Size: 6.4 MB (6408450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60b00782c4aa435a09f2fad91694afbf9cb35760415d51bcb062d16ce38374b`  
		Last Modified: Thu, 05 Nov 2026 07:49:27 GMT  
		Size: 1.2 MB (1230225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c387cc31d8decb0be3b43c6038ecf0cfa82229c46d8b6f6c23f317a50ccd4b3`  
		Last Modified: Thu, 05 Nov 2026 07:49:28 GMT  
		Size: 8.3 MB (8258987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac4a992edf9bd772376bc5729e05bd673e27c943ebf6b757ce4b17980783a8a`  
		Last Modified: Thu, 05 Nov 2026 07:49:28 GMT  
		Size: 1.4 MB (1398251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb900907cb0a4115200bfc694bb227b553e93b4497a84582c802162784c74be9`  
		Last Modified: Thu, 05 Nov 2026 07:49:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fb709151f27a30c9827371a8ff9d5d60dce79fb27b983edafd767e6054cc22`  
		Last Modified: Thu, 05 Nov 2026 07:49:29 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85faf8faaa46856c1348da76264c0e47b4cf6ca041a3f8336461bd1f845d8099`  
		Last Modified: Thu, 12 Nov 2026 21:23:20 GMT  
		Size: 133.5 MB (133484798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c728756afb11f3a2a74f0f3b93c622304b686b2bc456456aa5de839dd437315`  
		Last Modified: Thu, 12 Nov 2026 21:23:18 GMT  
		Size: 10.1 KB (10117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854453effc8b98c0d7064c8601d43ed1ed8b0b499f570cc1d69150ef46991cd3`  
		Last Modified: Thu, 12 Nov 2026 21:23:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd2a959cd2ff159d8c2fe736bb89579f1cec405d74f462519437c0c8b016417`  
		Last Modified: Thu, 12 Nov 2026 21:23:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ae5e1a5f636ba64d41ed27566f9bdaa05ad136d16dfbad32cdf314f989c95d`  
		Last Modified: Thu, 12 Nov 2026 21:23:19 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d48b6ffbd100047e9f3fdf90451e4869129d330bf875929507b3d8a02bb3f6`  
		Last Modified: Thu, 12 Nov 2026 21:23:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9e61dacc1e8d509e1989f952429f2640f4a9781f02607ef2c0af16edf05fe53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22af1f5a7888ea5f75ca2971714ff9b3e2bd796c5135007df7a111ebd7317320`

```dockerfile
```

-	Layers:
	-	`sha256:48b9541760b3d651ce08f1ef67e4b2b7471ab9ff91677be0a2a73c51d41a748e`  
		Last Modified: Thu, 12 Nov 2026 21:23:18 GMT  
		Size: 6.1 MB (6067413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b863bbf4d5c54cef80a9c4fd335ecc35ac8df6ee78db7995258cc8cfd3064de6`  
		Last Modified: Thu, 12 Nov 2026 21:23:18 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json
