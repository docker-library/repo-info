## `postgres:19rc2-trixie`

```console
$ docker pull postgres@sha256:7cecb6d5690b43ebb8d957c61e0de3c39d893a02e73a054de593c7a6dd489fb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postgres:19rc2-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:73bdfdf9530fe30fc131f8f8ee6d691322a5de5a3e6b4d9b86648e2d3ffe5b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169843025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cfd4a767c736b0d4b87dd153e861579c93a0bd1b2df2276ff55273a3fafbae7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:52:00 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:52:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:13 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:18 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:52:18 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:52:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:52:23 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 12 Nov 2026 20:52:23 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 20:52:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:52:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:52:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:52:42 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:52:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:52:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:52:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:52:42 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:52:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:52:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d27a158f332d672dd9f2779eca51236bae828386e1521ec1b6cc951f89f10d`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886ba731412b46d132f9bd84fe844c290d12f78c62910fd7971c44d6e5f72c4c`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 6.4 MB (6442921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da492ba3da26841b6b6b01d041bb7cf8eaa08793506c7fb630763660b03ff3b5`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 1.3 MB (1256752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2377f1d223b0435799bc8e525656fc18d0cba35aae921197bf434dc4f5ef28c`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 8.2 MB (8203765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4e9e89c4f1a9e08833e7c55a0a4cb080ebc6e3f4097818450712e0936547df`  
		Last Modified: Thu, 12 Nov 2026 20:53:03 GMT  
		Size: 1.3 MB (1311698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7059c4e68bc5d2273b5c92759624a38be107cf37ec4a10a58a469126538fe25`  
		Last Modified: Thu, 12 Nov 2026 20:53:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0801e4a92e211957f90709113212671702eff52403be34b37f3ddbce54111ff`  
		Last Modified: Thu, 12 Nov 2026 20:53:03 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9708e5edb97d1f6c5f168f823b9f06d540dce15d2c02176e59cdfbfdf7ffed79`  
		Last Modified: Thu, 12 Nov 2026 20:53:06 GMT  
		Size: 122.7 MB (122739288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27079635e15c82e4cc18c4721976c814c810bbac8f420d29de8583e09b2ed827`  
		Last Modified: Thu, 12 Nov 2026 20:53:04 GMT  
		Size: 21.6 KB (21617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e395400972d7b3ae97fe1e8b9d9ba3c4e6ee8afb9f53488d30b746d252eadf97`  
		Last Modified: Thu, 12 Nov 2026 20:53:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3097b2e827b37d36b3c02ac16600ae8fd8d050d9536a6e2420181723e95411`  
		Last Modified: Thu, 12 Nov 2026 20:53:05 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b94ce0a2ea7c25053497e8feeb09c572c0f325b53d4c3e14a5a825b89e5a81`  
		Last Modified: Thu, 12 Nov 2026 20:53:05 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ab5b4c6e0a25ecfb076bce4418423c4914e96df7c5f571eb4e9330c07ece30c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6407896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16173ca0509503aabf5b9a2a22c706dcdc9071cbd5eb3fc5bdb0da3a63c1334`

```dockerfile
```

-	Layers:
	-	`sha256:44d74a7301d108fa732886580fed352f237fcdbb37ad3df284f69ccce9f2de82`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 6.4 MB (6356606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9feedc8e7d9e0c385f5d638edc8427ef7b8a0a38c7ba597fdc322071de10f18`  
		Last Modified: Thu, 12 Nov 2026 20:53:02 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:96f8cb3ef91ac4ad98e34d3be696902f8131c8db251b705c22a7cd7eb1eec57f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98483554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ecf3a30ecfc3c7a81adfed70b4edce159ce1a09e9f676a489ba8515f037c31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:53:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:39 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:53:39 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 21:07:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:07:45 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:07:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:07:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:07:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:07:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:07:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:07:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:07:45 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:07:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:07:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270acda36d1b363007a1af4cca41e880df481173e4bd6796a14e48efe8526d55`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3f8b308506a53641df50268d890161b1dd803e5ccff9269677fe3a4f79839`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 5.9 MB (5932379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43fe9fe7f821a879e90f001eaaeb8608e028ff5b7bd2d3b7b9a7be08ea939c6f`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 1.2 MB (1227581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4c48881f4a4cdbad42335eb095f9775f8974739ca589406c25cf75af58bb29`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 8.2 MB (8204266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d43cb973c1c13b218de7ce91830f0f425414b32a5120420106980ba4e884c1`  
		Last Modified: Thu, 12 Nov 2026 21:08:00 GMT  
		Size: 1.3 MB (1317365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391f59b8ddd58fceda34c323fd50dbbc048d59241b0afe8d3dd54451d529de9`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68752eb9c38508f65369b89479745f8c5096e18a8253d62bde8971ca9e8c407`  
		Last Modified: Thu, 12 Nov 2026 21:08:00 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3036bd3b6cd91aead48aa6862d5493854108d873b31411de50f8a606cc7d62d5`  
		Last Modified: Thu, 12 Nov 2026 21:08:02 GMT  
		Size: 53.7 MB (53749894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f924ce0cde7ce9572a5170abd45f9d1db497b45088e094b3111a1186025f2d6`  
		Last Modified: Thu, 12 Nov 2026 21:08:01 GMT  
		Size: 21.6 KB (21613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6dced1e47ade10558d5ccbd5c84f9510f5ce6b3ed02e47806c5ee1f3cf2aaa`  
		Last Modified: Thu, 12 Nov 2026 21:08:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a681fe1ac08317c89a65a54b62fc98e0eacc7934d051ae968cc7b1281d17763a`  
		Last Modified: Thu, 12 Nov 2026 21:08:02 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9767c3ddec3384372aa9653703f931bcf222ea7759d5285cc2f5ea17843954`  
		Last Modified: Thu, 12 Nov 2026 21:08:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:51f886eb19acb5ab9280964f97ab54ab888759d1ab13e127a4ca919d56715061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5527675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aea9215e81ed04bf5be78a67eaf7fafb2846994b641cbb532029aeb63c1410`

```dockerfile
```

-	Layers:
	-	`sha256:cbdc8472ae05e1bbabc9647db2bf4dd51f77899cea3e20027d0b8eb6315f0267`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 5.5 MB (5476197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:589209ceceaf6738ad444c18fe7401806b91531186f871ade013a9139dcae059`  
		Last Modified: Thu, 12 Nov 2026 21:07:59 GMT  
		Size: 51.5 KB (51478 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1aae3805ed5cfe2ea41cb4fdd58f1f2131294fe5f329fec6620f91ab1d532c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94354270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf62ce36e064e3eb550c0b009ef35a6c82194efd06da52d572d8ab0c89cb48b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:52:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:09 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:53:16 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:53:22 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 12 Nov 2026 20:53:22 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 21:06:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:06:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:06:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:06:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:06:12 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:06:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:06:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:06:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:06:12 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:06:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:06:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c8f03c57fc46adab3974aef5792f9ed5306dd357e4e738bcbfb57e95f52ca9`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9076b07d1bec6097aefd6b8cc3c24c8c0025505dcd2753e0196c8ed958a0fc`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 5.5 MB (5497360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d3a2e6c205199288376bbc30c6cb190c6dab4f233b96a8b1a1f1de96f63609`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 1.2 MB (1222466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d337e08432d3901ff94d6f16b540dc82641d83e69a482ae00031be9b31600294`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 8.2 MB (8204111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9df6a867ca15db7af4bb0069bbea7b2c06675202ea97684c646e28ea800a1d`  
		Last Modified: Thu, 12 Nov 2026 21:06:27 GMT  
		Size: 1.2 MB (1172725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b0a68708c7b66383a6694191810597d907c215befb8d9d91f3767d348cbff`  
		Last Modified: Thu, 12 Nov 2026 21:06:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d45f785354f34ba473fb1fadc2300138d81a97c6681c06e815ddcd07f3ba590`  
		Last Modified: Thu, 12 Nov 2026 21:06:27 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4907eebb13409b445fa4db70e33a3bde5294219f04bc036e8311064cf789735`  
		Last Modified: Thu, 12 Nov 2026 21:06:29 GMT  
		Size: 52.0 MB (51952216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add069d945ecd47ec9ca7014744932eddde20554285ab4002152f698067931dd`  
		Last Modified: Thu, 12 Nov 2026 21:06:28 GMT  
		Size: 21.6 KB (21625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4c25ddaf0ddf49b620f655dfe8e0573b35f33d7bcd2fa07f31a3ffb65f96ab`  
		Last Modified: Thu, 12 Nov 2026 21:06:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52964ea92d3624e2fb6e80b91ff93710cb632bfa00bb9106edc8cd7065754526`  
		Last Modified: Thu, 12 Nov 2026 21:06:28 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63938d07eb01577e72deef489cefccb34e5000a8b48faf299dd9d92887c2a708`  
		Last Modified: Thu, 12 Nov 2026 21:06:29 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e040533068e228b5ae47a12b15ce536a9df8ed389916336eaad0ae7556055002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5540377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223c2c4d09d1b8641112b85deea047bd608b1319d6daee171dbbdf2765f3c8e`

```dockerfile
```

-	Layers:
	-	`sha256:abb8ccdf1ddbe0fd9a2de8f538f7093b521282039458c12ab59d49eb5f2cccc3`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 5.5 MB (5488898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab5b62dc41c9359eb3a6bb1cf50b70d8f5f84c3ff0c702f32a3181efa1de405`  
		Last Modified: Thu, 12 Nov 2026 21:06:26 GMT  
		Size: 51.5 KB (51479 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-trixie` - linux; 386

```console
$ docker pull postgres@sha256:81cf6f2fc348adae486bfd90481f1ec9228ffd350df62d0ecd872220f87d73c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104571631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e40b2fa80785df6712435f7a7ef4516e34ab48042b66dd3f8b20681ca10d420`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:53:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:21 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:53:21 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:53:26 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 12 Nov 2026 20:53:26 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 21:02:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:02:51 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:02:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:02:51 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:02:51 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:02:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ce349818a2b2625d87f42509f92e43c144d9343995564b71ccd3328c671fe9`  
		Last Modified: Thu, 12 Nov 2026 21:03:05 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e9460b537afa96835864d570d6f10d7561f3df9ba6cc84158abdb41654f1c4`  
		Last Modified: Thu, 12 Nov 2026 21:03:05 GMT  
		Size: 6.6 MB (6631346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0568ebbd97068406a2c70a9b79792ee97a3370b343a8d38e7c32a5a0060df05c`  
		Last Modified: Thu, 12 Nov 2026 21:03:05 GMT  
		Size: 1.2 MB (1225842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe408f25e4b20fffc0795d2b117efc4b11215a752a7e88e78615330dd82bcec2`  
		Last Modified: Thu, 12 Nov 2026 21:03:06 GMT  
		Size: 8.2 MB (8203941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f09c7f79aba26db24d9cbaf735c1293b556d55420354d76a7fb2e2a4da3fac`  
		Last Modified: Thu, 12 Nov 2026 21:03:06 GMT  
		Size: 1.3 MB (1308288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1609a6f725d8b502367226dd45177304a2140db36fb7da168e3124b636bea6a`  
		Last Modified: Thu, 12 Nov 2026 21:03:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756d40de9fb6a6655dab0785afd37b0c0b0f1379889dbff4628cb425356d7afa`  
		Last Modified: Thu, 12 Nov 2026 21:03:07 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92aad57067fdac72b2f970fe49f4cce4c9e6eeef2dd607ed3c0299bea8d79590`  
		Last Modified: Thu, 12 Nov 2026 21:03:08 GMT  
		Size: 55.8 MB (55798995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf69856c56631c42d5945ac5ce008797c5fbce097ac35fbd3c43e6d0c2c2df6`  
		Last Modified: Thu, 12 Nov 2026 21:03:07 GMT  
		Size: 21.6 KB (21612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd682a2b3e12bf5bb5e37305ca06512b3bfef99bb65d3c69d29dc6570871f904`  
		Last Modified: Thu, 12 Nov 2026 21:03:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfa022e06856200fb6775dced0a1d1b65c898ce9b664d994272641f1a3b5eb7`  
		Last Modified: Thu, 12 Nov 2026 21:03:08 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd48e9136d49f0a6c25a0e0f2bccabc5d59e297030daaac5da9c49b9767b101`  
		Last Modified: Thu, 12 Nov 2026 21:03:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7aae1a0d011db2e2cb0f680a89e489638430546bfa4da48d3a006abe86e17aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5536206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3d2d6389bf6344cdef79f5bfce349eaac02f85c82499362ca8cef25b5af2ff`

```dockerfile
```

-	Layers:
	-	`sha256:27583ac362710e6304529552b9f929683f26fdf700882b3b8eddc1bd2f9291a2`  
		Last Modified: Thu, 12 Nov 2026 21:03:05 GMT  
		Size: 5.5 MB (5484963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a651a8e681983cf344a7fba6701ce9b61224d62fc6f47f36067bd62c1c2e5ec4`  
		Last Modified: Thu, 12 Nov 2026 21:03:05 GMT  
		Size: 51.2 KB (51243 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:0fc92e885dcc2c17f1079d5181792562f2b20a118dcc297e721dc4ae42f006b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182931344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caec984c91956082d3398ea22e2b854711c122bcc6eaea430354be789123e8a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:41:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 09:41:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 09:41:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 09:42:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 09:42:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 09:42:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:42:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 09:42:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 20:54:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:54:47 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:54:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:47 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:54:47 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:54:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:54:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:54:48 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:54:48 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:54:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8465523f12c53ab94bdddc10400c59ace336e7f2afdf0417e55a6c1096837677`  
		Last Modified: Thu, 05 Nov 2026 09:43:47 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91827453eec38051d137b8957c5078423e48f71feac0fc4c0b442fe74025905`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 7.1 MB (7076835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2b978277772d3fa224a9a19a4896178cb74e694bbfec856d05da391028eb92`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 1.2 MB (1214802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5624cb2204c0214308bb30bdbd99fc8a607d9745a698532209c5252d5a317d`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 8.2 MB (8204109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f902e4e24bb3b0117b3419e484c5c7a9e738e78d1b14f588778271e602246f32`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 1.4 MB (1394957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9b686f1c048f695d171b645322c02405bc5e26a0fdd14de01392b9aedbe3b5`  
		Last Modified: Thu, 05 Nov 2026 09:43:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca214b8fb8498e93dca3621313dd489227b6b8779502424cdac19444fe4e92f`  
		Last Modified: Thu, 05 Nov 2026 09:43:49 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626f7376988be37c27afe8625bede428b96e345de3af59346861f42b0ba17bb0`  
		Last Modified: Thu, 12 Nov 2026 20:55:45 GMT  
		Size: 131.3 MB (131340534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f271045a7184df06d3511ba92534e5eb2314cb5144a9b4238bc9aaa45795077`  
		Last Modified: Thu, 12 Nov 2026 20:55:42 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236b256c52ef3dfe45c49fb7c2c7fd22e1c45fcc15f06cad769206032cc8af2a`  
		Last Modified: Thu, 12 Nov 2026 20:55:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357a71a6dc227cf71a46fd143921812a4b995c2cc9d8941396cf26e426159743`  
		Last Modified: Thu, 12 Nov 2026 20:55:42 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836afb43104e0a193aee5b4418e29b0af5f8279e8d07d23d13dc11a78057e60d`  
		Last Modified: Thu, 12 Nov 2026 20:55:43 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:187d3d3ca6d0bf86e658921fb6441b42509f3ad570e59ed0f97f05b462b69c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6401203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66de1f5ce5de5ce61ffd6c818d628745b880fd631aa91aa776c3e0a6cc804cf4`

```dockerfile
```

-	Layers:
	-	`sha256:4811bf66394d5ddee4738d4bce0382068d31e5d3d6384832e9f426f1695410ff`  
		Last Modified: Thu, 12 Nov 2026 20:55:42 GMT  
		Size: 6.3 MB (6349863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5062a79762d0839c140d1e6421d0e5c0c59728333431f98a43a8e5005b653be`  
		Last Modified: Thu, 12 Nov 2026 20:55:42 GMT  
		Size: 51.3 KB (51340 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:7e28da5fe27426318938e69b8618e55c81f63bb93da1352c67641de024211ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184542789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23e7ab881c247b7a56f916b1c49223b2c5e952793c2fb5a4a1a4bb2eeb11f16`
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
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 07:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 05 Nov 2026 07:35:04 GMT
ENV PG_VERSION=19~rc2-1.pgdg13+1
# Thu, 12 Nov 2026 21:06:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:06:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:06:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:06:01 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:06:01 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:06:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:06:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:06:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:06:01 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:06:01 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:06:01 GMT
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
	-	`sha256:9ba67e352853a716b81a05d2d326ff5b6bf94a5573e4924f5e678897b561356b`  
		Last Modified: Thu, 12 Nov 2026 21:06:39 GMT  
		Size: 137.3 MB (137290294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a942449680370f6bfc4ce9a788f4c10d4a7827f9cd091738d423460f7840ce04`  
		Last Modified: Thu, 12 Nov 2026 21:06:36 GMT  
		Size: 21.6 KB (21615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3a6e08e9c106f69ddc201351c65e1e175e5333d010451b3fd7c808dac44bcb`  
		Last Modified: Thu, 12 Nov 2026 21:06:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345a50557e530124a7347096272b9e69e2e75d650c12fa2001895e8881134823`  
		Last Modified: Thu, 12 Nov 2026 21:06:36 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea4d9ea439448b2c85211349cbd5bb34878a123116ab5b31edb6d35d09ef4e2`  
		Last Modified: Thu, 12 Nov 2026 21:06:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6d10234397e1f9633f3424061e479d2f1bb2c5c2053ab230f2dc3a7c44a0411f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6411223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c8003a0c50cd8ad1b3d3ce04dbb3a39a31b7203ebb31eae45ac4edfe8a842a`

```dockerfile
```

-	Layers:
	-	`sha256:75138f23980a4fcc8044b58562f05cfa8d716e7ff8756b18268e742c29747e38`  
		Last Modified: Thu, 12 Nov 2026 21:06:36 GMT  
		Size: 6.4 MB (6359933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9bc8a77d734b9e7f57865868071e378954fd839f5dae4f42b0178e0a21e04ae`  
		Last Modified: Thu, 12 Nov 2026 21:06:36 GMT  
		Size: 51.3 KB (51290 bytes)  
		MIME: application/vnd.in-toto+json
