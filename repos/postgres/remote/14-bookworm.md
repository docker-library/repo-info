## `postgres:14-bookworm`

```console
$ docker pull postgres@sha256:a54c8b1e143b22f16b0fd3e249e9297a6f08828a143ee7108b1b5ca51f352765
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

### `postgres:14-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:ff7e59e6e0e405e1211f73424e3da13e19311fc35b559da26ef4d814e406edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158298896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2089861f6f776b3c7557f571b19213c6c7f3f8ea35167aecb41adbcb8c72db4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 20:58:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:59:07 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:59:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:59:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:59:11 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:59:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:59:15 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:59:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 12 Nov 2026 20:59:15 GMT
ENV PG_VERSION=14.25-1.pgdg12+1
# Thu, 12 Nov 2026 20:59:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:29 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:29 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876e2e6dd39fd9acd5413f984ee8d5eefef8902280f5d754cf77a28d93840041`  
		Last Modified: Thu, 12 Nov 2026 20:59:49 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4754fa4e36ad7bf610de47052828a25f005059978923ccf260a051eba52217e5`  
		Last Modified: Thu, 12 Nov 2026 20:59:50 GMT  
		Size: 4.5 MB (4534294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f71954864e7a341fc8be90d975edc066bfc15b865516fa6887d3fc3033303e`  
		Last Modified: Thu, 12 Nov 2026 20:59:49 GMT  
		Size: 1.3 MB (1250085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0340a263ced60083642e10d855d6e7e38d6c19e4fa85f9b849320b17c860deb`  
		Last Modified: Thu, 12 Nov 2026 20:59:50 GMT  
		Size: 8.1 MB (8066445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf327755c5daa65710f75a12ebb0ff03f0af5ea85690b4b7ffa4b79ced5e365e`  
		Last Modified: Thu, 12 Nov 2026 20:59:51 GMT  
		Size: 1.2 MB (1196461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61352e3ac6e41880a6419e6a237357d467cc4ba1e321402d22cf7847b8d39c75`  
		Last Modified: Thu, 12 Nov 2026 20:59:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b8f4820df63a31dc28b6414b024cf36c166a387789b551fa5f8daed52f1e36`  
		Last Modified: Thu, 12 Nov 2026 20:59:51 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03621586bd2e83b4931fbd631357530bdfea3b7a8415f27a8e42b5bbe39bee4`  
		Last Modified: Thu, 12 Nov 2026 20:59:53 GMT  
		Size: 115.0 MB (114983038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76503889e879de658771e4f7f09b0fe3c219a59e73282a7d27a277663d295918`  
		Last Modified: Thu, 12 Nov 2026 20:59:52 GMT  
		Size: 9.6 KB (9573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4f2a1ade8e8231300e49c72e5a607a429a0ff2439f73353712c0c5d89777ed`  
		Last Modified: Thu, 12 Nov 2026 20:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307f3ef6c920ae4d81c83591d8d61f8cc98c1cf0c9411c82e68a74319f534921`  
		Last Modified: Thu, 12 Nov 2026 20:59:52 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a7e0655f7fd969c69719544399a4472cccdf3b887fbfb5488158e8b45a8709`  
		Last Modified: Thu, 12 Nov 2026 20:59:53 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a1fcc97fd71aaf675574dc5f3112af83c2df6f108b66ca151c53c0b557de65`  
		Last Modified: Thu, 12 Nov 2026 20:59:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:03355c34ce3484b75eb8395ccb4b00af94a93e27fe73200f39011b5195918207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6218359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999306d293edc3ea8cc4183a3c2b4247713c1736e70bd8ccfd68f76e550e631f`

```dockerfile
```

-	Layers:
	-	`sha256:1f0e20f402d11ec753884510e29b5e2079b28b8bc440145f4efe77a3c9d6c3d8`  
		Last Modified: Thu, 12 Nov 2026 20:59:50 GMT  
		Size: 6.2 MB (6165063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39ce1b753866eb9c16fe52eb12b79e70603e547392fd0aac3c0776224aaaaaff`  
		Last Modified: Thu, 12 Nov 2026 20:59:49 GMT  
		Size: 53.3 KB (53296 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:66fca9673c45debeade8d069cfa29327d6bdc6a0a27c85da9e3b8cc3d5841e02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85738348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b98d296fc0faf8b0ad23604cb0959e9999732a21c344f5e4b4580198f43b40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 21:18:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:18:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:18:49 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:18:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:18:55 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:18:55 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:18:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:18:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:18:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:18:59 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:18:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 12 Nov 2026 21:18:59 GMT
ENV PG_VERSION=14.25-1.pgdg12+1
# Thu, 12 Nov 2026 21:29:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:29:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:29:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:29:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:29:22 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:29:22 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:29:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985a7a0ba50f41b8259416522b3e4294ed04aa211f1480e4140504c54ae9e93f`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a77ddb3c49e7bcfd1ebf2c6b821360cbba4e38b8cfcabaa7ef063b3a4425069`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 3.7 MB (3742463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a636037e5ea248ab1f98e3df9486fd7e95a86642dc3d9fa4f9fa5288247500e6`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 1.2 MB (1216638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c6a91bf44032fed1871bc1b422bedc49ac332fef037dac2cc2ba6d6b6303e3`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 8.1 MB (8066410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6b690516ea1e9111ef33ebff6e3a67eedc0251e66b102f2ffbfd15a8036f14`  
		Last Modified: Thu, 12 Nov 2026 21:29:36 GMT  
		Size: 1.1 MB (1067313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96885bf3f6a7630527f3ccf1cd48fbfbc4611220dfa55cbcb5519ee00f864492`  
		Last Modified: Thu, 12 Nov 2026 21:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d537b78033b6e8d2151bf819449986faab682d18ecfbcd378af6b0d5c61496d`  
		Last Modified: Thu, 12 Nov 2026 21:29:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a43c1894f17153be696134508507f56703917719aa985e45135fb69e52718a`  
		Last Modified: Thu, 12 Nov 2026 21:29:37 GMT  
		Size: 47.7 MB (47663563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c865337395555f26c83c3d57a12216f32325c3be87f373f4ead6b4036dbd71e0`  
		Last Modified: Thu, 12 Nov 2026 21:29:37 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa37c89f49fbd29957d475b122bd5ff7ea9eac8d8db65646c7352543edb7a27`  
		Last Modified: Thu, 12 Nov 2026 21:29:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb517728ce6e3fc220816c82c00df6b9ca51e81a7ae60277b14f546d2bfb498f`  
		Last Modified: Thu, 12 Nov 2026 21:29:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3721891a01b6edd4caa808de0695e2084498d19d51f1ac9c4d090c8853581b39`  
		Last Modified: Thu, 12 Nov 2026 21:29:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8226f18b90df30fc92a358c9758bda7b907364bf883ca460714dcf76cee12e17`  
		Last Modified: Thu, 12 Nov 2026 21:29:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:13eacdfe4ce02e3bde939b4576851da2080c26ae10795c630804f20c69f89568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5625687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f20a9f94989a1c32886fd5d31bf073fec242e3202ca7d7ec6ab9eb0a48a11d8`

```dockerfile
```

-	Layers:
	-	`sha256:c3370bef4bf32bac632c5358e4a471e8681ae0d0e6ece2c470bc680c1ad15f07`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 5.6 MB (5572191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b806a51443b4f5713e108436cb59a082b7895a333f7eeec6598821a94cc35314`  
		Last Modified: Thu, 12 Nov 2026 21:29:35 GMT  
		Size: 53.5 KB (53496 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a731fe12431baaee168fd0a6e5534cd43a6dd05da3433839cf0262dc9068d63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156234222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf79870192e8f083972bb107be2f10ea6001d7c99139e797144ae7cf13e0d4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 20:57:02 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:57:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:57:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:57:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:57:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:57:17 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:57:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:57:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:57:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:57:21 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:57:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 12 Nov 2026 20:57:21 GMT
ENV PG_VERSION=14.25-1.pgdg12+1
# Thu, 12 Nov 2026 20:57:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:57:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:57:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:57:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:57:38 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:57:38 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:57:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd75fb8d62924c0ee1107e57ebf3dcf178b431b2f020a12a35e03dca8ce2c6a5`  
		Last Modified: Thu, 12 Nov 2026 20:57:57 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba69a137770fe763a47bddd7b94d14c6b1d6e36dde12a9ca13117e15a4e70b1`  
		Last Modified: Thu, 12 Nov 2026 20:57:58 GMT  
		Size: 4.5 MB (4519430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43aa564c514e5cd9dcb69f3c9d5598f9c1beacc913bbe73d89047e905d353e3`  
		Last Modified: Thu, 12 Nov 2026 20:57:58 GMT  
		Size: 1.2 MB (1203827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd15f9624a48be22b9aecfa58b9fd3b720a89431870f10435cbe9ef92fc9051`  
		Last Modified: Thu, 12 Nov 2026 20:57:58 GMT  
		Size: 8.1 MB (8066454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a981e0f5f9771a7f62a2b65f7d7c48c8492c5b830cc13e2defe6d7ef2452c07`  
		Last Modified: Thu, 12 Nov 2026 20:57:59 GMT  
		Size: 1.1 MB (1108943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5ccdd6f9608b51912f9107279aa1a69c99fa860702a1050df073b85d8fd30a`  
		Last Modified: Thu, 12 Nov 2026 20:57:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be318b22a6fc954c7b45ad2ec01296a0f0b31fcd3871070891a61c79e9c2014`  
		Last Modified: Thu, 12 Nov 2026 20:57:59 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac05635ea5fde927cfc37f5bb256e97239849635624b6171e9606d33b87d0c8`  
		Last Modified: Thu, 12 Nov 2026 20:58:02 GMT  
		Size: 113.2 MB (113170608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b41b2c746f6912df4e904c4055a7ca9cb7f2bcf661e70aeb11183f4d75c4b`  
		Last Modified: Thu, 12 Nov 2026 20:58:00 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6861277e520c2f47bc0d004c28aa48a196653beeb0c20dde9523c2731428ebf`  
		Last Modified: Thu, 12 Nov 2026 20:58:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb651b2874fd6448954f36d499a4362137d2e8cb33a99702280b6327f8268ccb`  
		Last Modified: Thu, 12 Nov 2026 20:58:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50190abc27896a98dcd0aa3788442eb21226aadfb7450f994b284e0a1dd49181`  
		Last Modified: Thu, 12 Nov 2026 20:58:01 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4d49f33bd25421dc03ce5d28fc1274b494df207e45d202d9a69c5efd999c51`  
		Last Modified: Thu, 12 Nov 2026 20:58:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a234529e7b127568a04ff0a31b943b80f748af3a3c9c1045f397e7e704f41290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6224928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64555fbc0b023b6dff69de4dad18ccd323907595ca62667025b14f5ac533f226`

```dockerfile
```

-	Layers:
	-	`sha256:f82d96077b377efa0899235b9966e137f9d313e54679bd68996a00f5f36aaa7a`  
		Last Modified: Thu, 12 Nov 2026 20:57:58 GMT  
		Size: 6.2 MB (6171387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c5bcd889846a7196964e9de5ccadb780acfa1122b8e719971c4053db919a7cb`  
		Last Modified: Thu, 12 Nov 2026 20:57:58 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:8572eba0deb9bec07a478e9eed0c14e69efa10b82c4208885b3d6ea4efb7abce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96719578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3904635c414e0df152abfdc88dbbd970f9ca0f672ca52e063e23442d53078676`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 21:03:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:03:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:03:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:03:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:03:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:03:40 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:03:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:03:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:03:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:03:44 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:03:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 12 Nov 2026 21:03:44 GMT
ENV PG_VERSION=14.25-1.pgdg12+1
# Thu, 12 Nov 2026 21:11:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:11:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:11:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:11:24 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:11:24 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:11:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4765a4976ee957b7cb1c5ffca2f38fbc04e824d40a4df23ff6f9ef83029c2baf`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34868671edbb77834b37aa867e61f6fea26a7ad99955200c7cf927de180613a5`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 5.0 MB (4966173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edeae1e4807ab6c7cbd8a4429859cb235e621a6c2832a9bf249f14d3409ec8b`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 1.2 MB (1219097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa63ac17ff5ed31c9674c964b6b99756e35da36a8f2ca2cd1f5e82be38d6eecc`  
		Last Modified: Thu, 12 Nov 2026 21:11:38 GMT  
		Size: 8.1 MB (8066476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731396ccb9fc8843d21a4a096bee989d378663eee24a0e5bfdc068a1f4b28b2`  
		Last Modified: Thu, 12 Nov 2026 21:11:39 GMT  
		Size: 1.1 MB (1137527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c124244393a588ed3ae807907b3394e18d0b41f3c540111ef4294b33e61aebb`  
		Last Modified: Thu, 12 Nov 2026 21:11:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f56539eb44c7839585b8548783633334270c700ae20f067fd5af0d447fa03c1`  
		Last Modified: Thu, 12 Nov 2026 21:11:39 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ecbd487eaa0fe9ca7dabd13feeadc6da7d96c433cd33d94f75f1af385e7131`  
		Last Modified: Thu, 12 Nov 2026 21:11:40 GMT  
		Size: 52.1 MB (52070491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd42f7f77d287016fe6653ad0120382358978aed73b20c6d3fc749a2a6dec0b`  
		Last Modified: Thu, 12 Nov 2026 21:11:40 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2563355d4093cf031ac305ddc35e7f7bb5511d0d5da30a0b3a89d61e7d8125ef`  
		Last Modified: Thu, 12 Nov 2026 21:11:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118ae6e572edd4ede362dbcc837ee92b7e7a6c5467ca212604f9e012101fde33`  
		Last Modified: Thu, 12 Nov 2026 21:11:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35267cd2c5047bb160c8ef336a07883b2d6c884fa23914dc62ac6d3239510399`  
		Last Modified: Thu, 12 Nov 2026 21:11:41 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81046eea19c28c008766d6f27cf923c94349d342efb2f525dbfa5a0f2217032c`  
		Last Modified: Thu, 12 Nov 2026 21:11:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:174468c15584748adc4131185821249b0daa7c774eb9031f98e260004b50514e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5620710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff369fa59ac2b2ea37141f58b4aa9742254cda1453e14db5ff59e5119e6b82e1`

```dockerfile
```

-	Layers:
	-	`sha256:72f6c02ccdab88857513cc13256ac9a84eccbd8e1359a777aa5d465d36c1a5b3`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 5.6 MB (5567464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42321d15b90f378e1fc74b8612d8c50002c112aebe71ec5a577d65ac30306592`  
		Last Modified: Thu, 12 Nov 2026 21:11:38 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:4d94b914f927b340eb3c764a6af15966809becbe5c54210715532fd4a6c98687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171746481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289e68e061a0b40732178cce08bd98d0339033565f3f85a74b190771de2a4eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 09:44:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 09:44:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 09:44:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 09:44:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_VERSION=14.25-1.pgdg12+1
# Thu, 12 Nov 2026 21:56:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:56:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:56:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:56:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:56:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:56:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:56:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:56:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:56:14 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:56:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:56:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fac527a03b12a4ef061fe86cf9bf9f331d9d2a646faeaf4f6bd742e4be53a3d`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb68f2b74629f7bc2883b1d76171acd260559f506e70bf9873842421ba639a6`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 5.4 MB (5368619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512f9b881453b2367731d8c27d57b873d280d48d033dad92c81cc684e645a0e1`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 MB (1208860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b4a019a3eda5638f0b42104cdca5674729d9dced8eb98954805ccbae47a0e`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 8.1 MB (8066557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d2accf232231cf51ad68e11a9d1f928917f05dcb5a5fc230b816bdc66372ec`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 1.3 MB (1283640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee084a0d1299770ff481a2aebed29dd162772793bb7d8cc8f2dcb4cfce56edcc`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da62f174315f3a2e4afd0843362834a16a2c34ca556e654e368ac25c12b7f3b2`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34e4c21dd95f7114f860c38d29fb92c52e19778566555b09311d7c5cd6e055a`  
		Last Modified: Thu, 12 Nov 2026 21:57:06 GMT  
		Size: 123.7 MB (123704645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35a3cd33bf7117e327b21f3ee844e87410847d601b8e83ee6489eff5d47d12c`  
		Last Modified: Thu, 12 Nov 2026 21:57:03 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3438411d367c64a8141ba7b189427930fc0777103c147b22fe7263e22cc5c10`  
		Last Modified: Thu, 12 Nov 2026 21:57:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37107442e570ea0cb0662af6ee664f07ee56cc1d68e9ac2fe57d27782f9a0738`  
		Last Modified: Thu, 12 Nov 2026 21:57:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85983a8fdbe7abcaf42e2b22969364015a75b0435fa32340229b3a2ef313bbb6`  
		Last Modified: Thu, 12 Nov 2026 21:57:04 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70b821913f2920142360249c64ce7bcbf6b4acb7b89a45d873503b6b098764a`  
		Last Modified: Thu, 12 Nov 2026 21:57:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e63886a8e586bc65d75e74b74326d66a059679be86a31ccf02fb87f6037fb6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6222098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec32eb47e272c0608ffe0b1418f253fe457b8398dd40044d93cc82d6b6c9d26`

```dockerfile
```

-	Layers:
	-	`sha256:2ffec3f9e218b41caa5617ba15483d31098ee64572f5b9be004252665a42ea54`  
		Last Modified: Thu, 12 Nov 2026 21:57:03 GMT  
		Size: 6.2 MB (6168749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d02b9f0bd194269451ee84b1afe6366ecf14ba792008923d0529bb1b2bd2add`  
		Last Modified: Thu, 12 Nov 2026 21:57:03 GMT  
		Size: 53.3 KB (53349 bytes)  
		MIME: application/vnd.in-toto+json
