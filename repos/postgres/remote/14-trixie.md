## `postgres:14-trixie`

```console
$ docker pull postgres@sha256:d1bfce2479496ff4060a56031364495cbd60acde3aa6d385cb6be8c49aa2e270
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

### `postgres:14-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:7b71af5e551832976f40ecc8eb05a2c009d4625ec5301b59988695e5d2ca98ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157123624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9bc466f3831a4ba264534ff36932b268f529348750b4618558f71943b343d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:38:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:38:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:38:17 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:38:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:38:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:38:22 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:38:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:38:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:38:26 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 00:38:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 21 Oct 2026 00:38:26 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Wed, 21 Oct 2026 00:38:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 00:38:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 00:38:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:38:39 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:38:39 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:38:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27338aa3da7770c60d4c5314deac853f0196e0d42fffec6427b0b99b53fd01d0`  
		Last Modified: Wed, 21 Oct 2026 00:38:58 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e11992a6faa4d1d8b93da965952688eeb38d97bd301cc63d83ab130a1b78ec`  
		Last Modified: Wed, 21 Oct 2026 00:38:59 GMT  
		Size: 6.4 MB (6442964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f91fd96e59dd42eb3da2c937d879411bdae877c30b18626b484f9399654f78`  
		Last Modified: Wed, 21 Oct 2026 00:38:58 GMT  
		Size: 1.3 MB (1256750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b6d2e2cef2e224513fbbae9d40faffe5f78d9929654dd044cce068b126b153`  
		Last Modified: Wed, 21 Oct 2026 00:38:59 GMT  
		Size: 8.2 MB (8203808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041b30af5a2d9dce9248569c7fc065a8062d288b195d46057171aa75d392d533`  
		Last Modified: Wed, 21 Oct 2026 00:38:59 GMT  
		Size: 1.3 MB (1311720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d313cc9a6488347e112a034df23d96186aba3d3587312bf775e3b49cbd6669`  
		Last Modified: Wed, 21 Oct 2026 00:39:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44b5919136acb56f28276d405a917d6109664c02e59b3f32f2c93575c8dad0a`  
		Last Modified: Wed, 21 Oct 2026 00:39:00 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43494c670d038b5950e0b8aab446a3e7656c09498c359f19ca5154518753c77`  
		Last Modified: Wed, 21 Oct 2026 00:39:03 GMT  
		Size: 110.0 MB (110044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1596575ddb688d67fe7bd92c1b93313272366d5350a9dbe9a0bbdfe8d3e62645`  
		Last Modified: Wed, 21 Oct 2026 00:39:01 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf14dd4acf97ba44ed8173e4b89ebe92723bb519df72bf1fe9f63c6deec413ee`  
		Last Modified: Wed, 21 Oct 2026 00:39:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38516abd4eda4d8db064f4b1f00dfad84937bda3b54e0e0904a07206f2ab22e7`  
		Last Modified: Wed, 21 Oct 2026 00:39:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8587e4632ad316b0290098ae6a2c7fff0a1eb6e8189d3f608acb474bac93eb46`  
		Last Modified: Wed, 21 Oct 2026 00:39:02 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30114fcdf776ff2e05f63f3a23c2ffa176816bcca2d49aca277fbb70cd49227e`  
		Last Modified: Wed, 21 Oct 2026 00:39:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0540cf962c2a36b18ff1545406a9145c63028f345f79867f08e1668caf0d71d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5653521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c6c53a061db3cac60a4b3da6c8abf455a285d0a22588c8a9e39e236fac1773`

```dockerfile
```

-	Layers:
	-	`sha256:a7139e4b5aea954e31effa3d5abbc624ffbf00bf6e774a1478c0226a1fd3d5cf`  
		Last Modified: Wed, 21 Oct 2026 00:38:59 GMT  
		Size: 5.6 MB (5599631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e89f5f5213d647cdc6c0e979bf72bb5287880dc42bee5fba7eefc31e8c7629a`  
		Last Modified: Wed, 21 Oct 2026 00:38:58 GMT  
		Size: 53.9 KB (53890 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:fca1c4a2338842b3fcd7adad80e58002050313cca89ed6ec19b027a2ead84302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87981410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51e227f8875ea3ffc1f3c80e8b5463bd3faeb488d8b83ba4c976f50f26f395d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:41:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:42:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:42:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:42:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:42:17 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:42:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:42:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:42:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:42:25 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 00:42:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 21 Oct 2026 00:42:25 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Wed, 21 Oct 2026 00:54:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 00:54:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 00:54:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:54:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:54:20 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:54:20 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:54:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdad38b57d1b558f6e89afe5e862ef39c6ef5cbb2387f24f48d50f791af7ce5c`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ce930dc69cdd5d7d850ff7acdae11a7149e537378106f0c531dfdf5e97476`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 5.9 MB (5932382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a284aa6cf2371a7f76e1b5261f09409d0955199b0640defc689cd0b228a71040`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 1.2 MB (1227496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b2646557355132f6933d5f9e82d04e7462e00f6a80519cdf1ea095990a6921`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 8.2 MB (8204234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783f7d8ac45de1326e3d9ac56d7dd2d2860e677943ff41e875afc8c25bcb47af`  
		Last Modified: Wed, 21 Oct 2026 00:54:34 GMT  
		Size: 1.3 MB (1317372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacb020cfa39bdd7fe91a9ec8116c60bb02afd1b8e17bb8cb94d1739fa7790fb`  
		Last Modified: Wed, 21 Oct 2026 00:54:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c980167dfd9feca88512f485e43894b839123e7209bfdb7dcdece05435d3e63`  
		Last Modified: Wed, 21 Oct 2026 00:54:34 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6353f52ef8e1dcb39a0a42a13522625debe9addf4a1dbf4f8e2eccb8337e46`  
		Last Modified: Wed, 21 Oct 2026 00:54:36 GMT  
		Size: 43.3 MB (43271443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b593e9d017e753783d3fc9023ea8d3e97f9ce459c835e38fed53bc4f98ebef85`  
		Last Modified: Wed, 21 Oct 2026 00:54:35 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0df43d073955ee7da4f83f960db7970d2e823cb3a7c794cf20481e608bb0d48`  
		Last Modified: Wed, 21 Oct 2026 00:54:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d66eb56e6a940543a925c2dbfc9a07adaaea56cdc5626b34e3f84cdc36c3dc`  
		Last Modified: Wed, 21 Oct 2026 00:54:36 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175c97c487989d852f362a2446049cbd6014dbd625b9c2a8d28c4898cf27d807`  
		Last Modified: Wed, 21 Oct 2026 00:54:36 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1883321bd4af500b787ea097033888831d84fc47c03b0eba3d4e4f855e1f2f8c`  
		Last Modified: Wed, 21 Oct 2026 00:54:37 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0e8c7fad50dd695161c5b99badc651a6961bfb812aa514325899412f1b2d8366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5069700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bbd87cd51588027b246895a638462cb7ae75c69d4a03a7c303b81d14a2f6c4`

```dockerfile
```

-	Layers:
	-	`sha256:8540b755220c21d29f7ed693a1fa241ce2534843009d8f159fc66d477dbc2cfb`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 5.0 MB (5015593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a851db4c7c82075ab09e744c0a0ecb311ff27eec9c2751aea10fdef5a36fabf`  
		Last Modified: Wed, 21 Oct 2026 00:54:33 GMT  
		Size: 54.1 KB (54107 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:dfce0848dc9de251a805f7349e25584b6bd8207b7f4a4e1d6f1f04178a8d504c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84381061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393b5f0b49f613debc6b39dba69b90432a59a7da4767408d1faa24ac9b0857e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:17:38 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 02:17:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:17:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:17:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:18:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 02:18:02 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 02:18:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:18:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 02:18:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 02:18:08 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 02:18:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 02:18:08 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Tue, 06 Oct 2026 02:29:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 02:29:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 02:29:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:29:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:16 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:29:16 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:29:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178dfc3e251cfd25a70e1900fc7d5612c3893f8d5f523bb60cafab247d08da17`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedf6f72105d6c7916a7640bacdc11c5d390481b844905966e14892a9585b5ae`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 5.5 MB (5497282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fa8198881bc8a7fb5003c2580aa55bc7c2d6d7c0cdc84aaedc9954ba52f938`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 1.2 MB (1222349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23dd6a3dc547ee2443f6eae54aa72876af22fb322f9378b84045c71c4d7bf39`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 8.2 MB (8204056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0effa819884fa1a19a937e349ba8393d82ff38f1fe45173b21584d6d1eca23ee`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 1.2 MB (1172671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5667d465fefcafa0cd9e0391244e21484685c5c8fc3e5d114dabf14050fe42`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab422b9ed9378938abab25ae7806a13c07f94d4f73699b1a72a31d523d80584e`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ec656a1b208192ea81e4a4c6a6f44b1c6fc873bcae7cec2a36119ba1ab27aa`  
		Last Modified: Tue, 06 Oct 2026 02:29:31 GMT  
		Size: 42.0 MB (42005826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4de28d44d1d56a41847132acf6ad3ebac23d0fe9db653756784a45312d741ff`  
		Last Modified: Tue, 06 Oct 2026 02:29:30 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38922c143dde413188dddd11f3f7c7cef20b315cc1d6b3ac5f1e52d1ec7c36a`  
		Last Modified: Tue, 06 Oct 2026 02:29:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89754cee8b0d0507d0784538817155d64d9d0c587301a858432c819c73abc77e`  
		Last Modified: Tue, 06 Oct 2026 02:29:31 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eead32bb569e90de9375a58a50c918fdd975420527753a24de5399445f57b72a`  
		Last Modified: Tue, 06 Oct 2026 02:29:31 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd7e688e46e5194c093ce096e5f985d495d73e6cfcc751dbbfac1f718ba75a1`  
		Last Modified: Tue, 06 Oct 2026 02:29:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1135f51d4a4ccb7befa45a5c76b75b72e86b73e386cd82d5feba70fbc57ec193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5068999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04ce147c9f895064c2508fcf19ce33a429be5cbbce5950986c4f1f80b71646e`

```dockerfile
```

-	Layers:
	-	`sha256:d7b732c4c84f2227f90324e1860cd28e0957261b6a632eed78c088940bc28b31`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 5.0 MB (5014892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dc9a18ce64856001dfe51e7160fe10f85fba4d2d152d60a721d635cd3641012`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 54.1 KB (54107 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ab38efb8069d4a1e2057f25756df00441514a2faf1a5951358cc4e68ff8268d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155766180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7bea988107876259fa333a8c1da7884358c1f6e06383421a180d802f1dbe47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:41:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:41:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:41:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:41:26 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:41:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:41:31 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 00:41:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 21 Oct 2026 00:41:31 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Wed, 21 Oct 2026 00:41:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 00:41:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 00:41:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:45 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:41:45 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:41:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3d886fa2f0586922d2627b0e8e7a28d6d1371481994c81c16a8bc957702572`  
		Last Modified: Wed, 21 Oct 2026 00:42:04 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35170345a0b7f701b0bbdff43520c0f06b09c42ae42e4824f39332dadeae1e18`  
		Last Modified: Wed, 21 Oct 2026 00:42:05 GMT  
		Size: 6.2 MB (6234977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802bec558fd51fd1fe4cf6e21aec5dbb7e0aa30004a95eb1943cd28f816703f8`  
		Last Modified: Wed, 21 Oct 2026 00:42:05 GMT  
		Size: 1.2 MB (1209645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69dc08827a47da76b4c75963e014115cf9a73faee8eb5e877f5f3c040a480ada`  
		Last Modified: Wed, 21 Oct 2026 00:42:05 GMT  
		Size: 8.2 MB (8203939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c225224e1ee9f98003b1bff2802dd7ba608a94ec28dd45ee6db3ea489e6869`  
		Last Modified: Wed, 21 Oct 2026 00:42:06 GMT  
		Size: 1.2 MB (1220628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1c97cc8f31d86ce0dae65a93da9c5d224cbd41b63f8da873824309fd679d89`  
		Last Modified: Wed, 21 Oct 2026 00:42:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c536aec898bb3d5fa39415452ff1d9533cdcab16b2622995bb5914342ad92ce`  
		Last Modified: Wed, 21 Oct 2026 00:42:06 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2596f8503f53d31dc077825dbcd3778169104ef4d6125af48a7019e6b6d726a0`  
		Last Modified: Wed, 21 Oct 2026 00:42:09 GMT  
		Size: 108.7 MB (108675821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4563a69025fd1542b6d7f24f49e8ea3284d27cce88750892c74b88f7a0d366f`  
		Last Modified: Wed, 21 Oct 2026 00:42:07 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f03a7453b459530dbd0ff0c7f8c23c34a734a75a98688820aa6941b39e31f6f`  
		Last Modified: Wed, 21 Oct 2026 00:42:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8cee208c29cbfef5f4a29821ee862b59bc0141699fc6b07d8e279d304394dd`  
		Last Modified: Wed, 21 Oct 2026 00:42:08 GMT  
		Size: 165.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443f7ae77a89bf73248d5d7797e634532f45414bf0c2812453444c9e47a16a60`  
		Last Modified: Wed, 21 Oct 2026 00:42:08 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99613359fb55e59102b80a63bfc5463c23bf2639300c18aea32efcc80d76e3b`  
		Last Modified: Wed, 21 Oct 2026 00:42:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0d781e589a685008169f2d01efa88cbefa7e2f36140a819930bb5667c1f54297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5660128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19be2fff10444763b56a0d66ef4bb524ae64abb68dc5afb1c4becce12887a7d4`

```dockerfile
```

-	Layers:
	-	`sha256:c0848c0a1066bd78b4a3b80efc3881e0f318bc0e3c6aa98a8eecc2f156c86962`  
		Last Modified: Wed, 21 Oct 2026 00:42:05 GMT  
		Size: 5.6 MB (5605969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9463b86368d76b239da2b7fb7b181ade31c48dbd0fb3251c8f34f7d409a862cb`  
		Last Modified: Wed, 21 Oct 2026 00:42:05 GMT  
		Size: 54.2 KB (54159 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; 386

```console
$ docker pull postgres@sha256:6df9c237dabed809b6cc339493d38acce521bf93ab563d96e5e9093e905216bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93913370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26aa07358c1e59b84016183a94e07a9bf0ea1140c3fe36b0aeb82574d7680e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:32:48 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:32:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:03 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:33:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:33:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:33:08 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 01:33:12 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Tue, 06 Oct 2026 01:50:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 01:50:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 01:50:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:50:18 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:50:18 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:50:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69af55f4241f3538fbf950fd915543590b4146511428ed58f212a11388b8391e`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8868ef38d57d6181f41bbbcc2259d35dc9051bdb63efd7d3b78aeac50c31ab31`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 6.6 MB (6631406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b56d27e1b04e876f988249fbf31ac4a951d15b8b4f28b873177fcd15818b57e`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 1.2 MB (1225881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1db04574f223275b928900777164cd728164e7f598a1f300698bded6782563`  
		Last Modified: Tue, 06 Oct 2026 01:42:30 GMT  
		Size: 8.2 MB (8204040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb256013ca0f448808c05d34920ed5311048260af648bd834ab12eea463c5eae`  
		Last Modified: Tue, 06 Oct 2026 01:42:31 GMT  
		Size: 1.3 MB (1308327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad640d0b371daa9d76ba58a46e56b9f5e659d4e38d341672f5162d8edc8e9889`  
		Last Modified: Tue, 06 Oct 2026 01:42:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2934d27eacf89c82206d74db1f25a898f71d14e0115224001a9f2c92b28f21`  
		Last Modified: Tue, 06 Oct 2026 01:42:32 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e16b631502bf975ad695be9ea24a16140e1ee521b08d7903889a54a6cef613`  
		Last Modified: Tue, 06 Oct 2026 01:50:31 GMT  
		Size: 45.2 MB (45169737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0895ec41b127df33d8dd3f5bc83e0a45e78c09b35d26a07d828e6d728f00516c`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 9.7 KB (9668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636d686f2d2178a7cc31eb4182b9eec71925348b90c34bf409b36f65a03b9523`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ad9cb99ab3e79ee63ce096d1b6112ba040e07138d5a901b0290d818d3d9a33`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138fa381273d25c3e0edfe9fc04a406cf17161921cfb2e8346139bf0b6856c92`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8455b57501d061ddd8e0508f2576341032d55dad2b0cfd08f77e61731ff33e6`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:594e7388b6f4c83aef5952122d867b546f4946278e5fde3711f57e94f6bc939c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5064791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8001c75b417c6bc6bdefecb6c8cc07cc610d77a34c5f77ecf9640b56747449`

```dockerfile
```

-	Layers:
	-	`sha256:381b7d6ca43575ea681aaf5b02b98f2a7d603e7e0095180b7b701f609843f102`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 5.0 MB (5010961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc9fd1bdf5e801b375d101b5768a3190f66a68d5b5ffe4c09a410ffc895722bb`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 53.8 KB (53830 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:c79ff67889600c1dc6dc4792c03ca2ee3ab955d6fdcaa204662db92996e57d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169313643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:480b3a7cba858dbc5ae1ca948a11e06c211eddacd2efb3843bd8762c2e80e7bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:05:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 04:05:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:06:10 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 04:06:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 04:06:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 04:06:22 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 04:06:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:06:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 04:06:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 04:06:32 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Tue, 06 Oct 2026 04:19:10 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 04:19:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 04:19:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 04:19:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 04:19:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 04:19:18 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 04:19:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:19:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 04:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:19:22 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 04:19:22 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 04:19:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df8b866399ed4f90de73a1bef5daeae1c50f951aa6f1ad3e557d87f59ce9bac`  
		Last Modified: Tue, 06 Oct 2026 04:08:18 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f112247616d35383e32130efedacf49648114fce67711eb2e9eb534e0d7d3866`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 7.1 MB (7076818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46468b063ff118d7ea126988d73f6a9e639e395ebc666e91e23ec89cdd544153`  
		Last Modified: Tue, 06 Oct 2026 04:08:18 GMT  
		Size: 1.2 MB (1214759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e01e92cc0c01a61fd2b841c3f49f249a0959d8c757d9e24f0577f0769679bb`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 8.2 MB (8204034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd61f4c8b6545c4cadca1f539848bf4991598afee43b6310827062f20cd6b7c`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 1.4 MB (1394926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d650094b1248e0da8da058eacbb7eeba5cf27d2ab437a3586aea3ecdbbdffc`  
		Last Modified: Tue, 06 Oct 2026 04:08:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5712043bd52f7888fc9ca81ad5f13698f8a4a76c6cd02640fca926c265908b`  
		Last Modified: Tue, 06 Oct 2026 04:08:20 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784741cf0901e42ad633df67a19a430aa974087fff0b57d6528aab92e5a257fd`  
		Last Modified: Tue, 06 Oct 2026 04:20:17 GMT  
		Size: 117.8 MB (117750823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b013c16caa166d527e4feede12b3de37b510a1c63154f7dddaecf1a910ad075`  
		Last Modified: Tue, 06 Oct 2026 04:20:14 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd060c545809d7333057ae5c997cfb8248eaa89429ae845db63cb5701f7b5cbd`  
		Last Modified: Tue, 06 Oct 2026 04:20:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1354b943196edcf2c4158b7dd78058957c43813086d98456700ff43daa573895`  
		Last Modified: Tue, 06 Oct 2026 04:20:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa18bb0fffbaf33a9868cf551af21e59be3fd165fff49114f145b7def01da366`  
		Last Modified: Tue, 06 Oct 2026 04:20:15 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54d18469eba2a5392498d4c6f119b48b291fc922b969c1dedc9dcb1ea674e36`  
		Last Modified: Tue, 06 Oct 2026 04:20:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:a909ac411b27c9906de106b51f204f8c1d153b6f8c307146a7108091327a21c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5660200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cdfbb9a6e668da059ca0f3e72ac6c7402013806fe95a7ffe8302c49cf68f3a`

```dockerfile
```

-	Layers:
	-	`sha256:e89cb2d79c6745c76751e426c21ec92fdf50ad42edbe46eee9d4dcf40dacef63`  
		Last Modified: Tue, 06 Oct 2026 04:20:14 GMT  
		Size: 5.6 MB (5606244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a869d18d24173ce16913888f83f5a2427a455469d709ba6e8b233d72611621`  
		Last Modified: Tue, 06 Oct 2026 04:20:14 GMT  
		Size: 54.0 KB (53956 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:20a109f0608dcb27ab8b4fbfaed9388142e4209dd97af6b32f7d7f3ca3c1796b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89347149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad5762107858bf8413dc8013debe5a1bfdc104f1bd1446109824525a325c9fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 05:20:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 07 Oct 2026 05:21:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:22:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 07 Oct 2026 05:22:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 07 Oct 2026 05:23:13 GMT
ENV LANG=en_US.utf8
# Wed, 07 Oct 2026 05:23:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 05:23:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_MAJOR=14
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 07 Oct 2026 05:23:57 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Wed, 07 Oct 2026 18:20:10 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 07 Oct 2026 18:20:10 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 07 Oct 2026 18:20:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 07 Oct 2026 18:20:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 07 Oct 2026 18:20:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 07 Oct 2026 18:20:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 07 Oct 2026 18:20:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 18:20:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 07 Oct 2026 18:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 18:20:12 GMT
STOPSIGNAL SIGINT
# Wed, 07 Oct 2026 18:20:12 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 07 Oct 2026 18:20:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04276d84bdd5b1a89491c4c1f0f1bd23715a2cd0cbd28fd5c6a63ace51846c9e`  
		Last Modified: Wed, 07 Oct 2026 07:36:36 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f34d5932eacc8425fd245ae4f18b212850ccee4f3b8d4ebfe0a05c39e26d57a`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 6.3 MB (6293023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d00966b97b81f00099e96a8d2a5bc76a67d15adaace243a02e38133fa2a365`  
		Last Modified: Wed, 07 Oct 2026 07:36:37 GMT  
		Size: 1.2 MB (1202085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7478d7cf291d2297ac523c25dad89c3be79f4cdec82cf0ede13be3018ebbe7e`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 8.2 MB (8203691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4b67a45da65da2ac6956b1058b6923a5973c2b70ee147fc4eec47bd16c7aed`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 1.4 MB (1402417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa517c26b22eb5b6e36a15abe37b37bfb5e96aeab9cb78fb827e602f32ac35e6`  
		Last Modified: Wed, 07 Oct 2026 07:36:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8052cdc30b8d44af226f3941b6370e4c67fc88e98268c86189e043faa890fa46`  
		Last Modified: Wed, 07 Oct 2026 07:36:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b13992ad1d47d6b1a8fb9bceaf5d000d160434794d943731cae3b371ae00cc2`  
		Last Modified: Wed, 07 Oct 2026 18:22:42 GMT  
		Size: 43.9 MB (43891474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016a3a60916874cb469a7cbc7abb4c1bb326a4976aac61c5daed222001edeaa7`  
		Last Modified: Wed, 07 Oct 2026 18:22:35 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021c1e4ac3d034f9e6113d7b5f543204f8ffd1c38fac20557eba678da19d0211`  
		Last Modified: Wed, 07 Oct 2026 18:22:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d49aaa45956231cf8b28bcba134bbeec583e76389e9df5be0a80e54df1ee25`  
		Last Modified: Wed, 07 Oct 2026 18:22:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1bf71391e4208b516e6aad21c577e72bea521632d355c6f5773d4b8418a215`  
		Last Modified: Wed, 07 Oct 2026 18:22:36 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae87b2375d8368e252df8a544fb241c817181c1dba4be6d7613dd9b8460a34d`  
		Last Modified: Wed, 07 Oct 2026 18:22:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:dbe85aa5ef184cd6654bab2de3f6220fcb82745d90447f4e790180bae99a9adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5059812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb66aff28f043321b0106e1b315c580421c700890ef3c4054a706315816fce1`

```dockerfile
```

-	Layers:
	-	`sha256:b5fea84cc7e59e5365459f827afb43568e2b48bf4175df272208c45cf5bca700`  
		Last Modified: Wed, 07 Oct 2026 18:22:35 GMT  
		Size: 5.0 MB (5005862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5802709ddfad8e413e836197f3dc1aa6c90aadcdb55e2ca1faf1865ecf08df`  
		Last Modified: Wed, 07 Oct 2026 18:22:34 GMT  
		Size: 54.0 KB (53950 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:cecef41a8e0df49c0932dc148e7af6e92d7930e4e568f779d2df9a956f55754f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171618078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022405b1f837e58acfcbebee003bc94066cb9dab08b11ee2575c40dc57cddfd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:38:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:38:17 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:38:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:38:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:38:22 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:38:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:38:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 01:38:26 GMT
ENV PG_VERSION=14.24-1.pgdg13+2
# Tue, 06 Oct 2026 02:01:10 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 02:01:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 02:01:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:01:10 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:01:10 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:01:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cd1f56368146f92d56030bf7480a66be9362f0ba896a16da2dfe780a433512`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29c8631e4eb3452b416e4c47582cff60dd2178de5268e4e5651060a64014aba`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 6.4 MB (6408484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0d5e7cb66f9dbf20c9fc313f2f3eb81facdb67b92b805a7fcdc8753fa3c03`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 1.2 MB (1230202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c479ad288210126e54c399b08963fa2bdd4d3fe7030da8ac4e00a687c1e5a43a`  
		Last Modified: Tue, 06 Oct 2026 01:50:34 GMT  
		Size: 8.3 MB (8258974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce98d63cac64cb5f474c722a41948384a91123cf4dd76fbe9f78f9754b0fa879`  
		Last Modified: Tue, 06 Oct 2026 01:50:35 GMT  
		Size: 1.4 MB (1398252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0be2e5a9aa88fe7c8f965fe49a2d84ba03bc5bd63038d50356fafd89f02570`  
		Last Modified: Tue, 06 Oct 2026 01:50:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f4107c56aee058965f66d9b54638b2cf8329c0f4decd282bc740474ad77c39`  
		Last Modified: Tue, 06 Oct 2026 01:50:36 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb0afd85ea20b15dee1d927487ec6f8be575819b949706dc39bac8b0fb3d06`  
		Last Modified: Tue, 06 Oct 2026 02:01:41 GMT  
		Size: 124.4 MB (124392227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5c9c2d53e20bd0102eb772f95d5ddbbe767b09158c6783dca107bc204f8649`  
		Last Modified: Tue, 06 Oct 2026 02:01:39 GMT  
		Size: 9.7 KB (9672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c53cfd1dd71271be972b9d7fc7175af4dacfaff64e852e93fdcfffa0cc0e6a`  
		Last Modified: Tue, 06 Oct 2026 02:01:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9972be17e6458cb7def444876fc87bf2215ab13ed24f54bd0a3526787d3c82`  
		Last Modified: Tue, 06 Oct 2026 02:01:39 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cb85e641487528cb07cb3b5437b700ba24469922cd1ecb7b41c11345415eb4`  
		Last Modified: Tue, 06 Oct 2026 02:01:40 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912985da6aa57126ac6e4a002beda8dc5bb1e9d81751b047a5897c186b727fdf`  
		Last Modified: Tue, 06 Oct 2026 02:01:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:341ca389541e5d24e04fcde80861c60a8b1aa3f048459429f754ca9e0fee4531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5670216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c0723ca0dac1d2ddb477e7ce4cdb40d8ebec099b2c355bf419d878acfc289c`

```dockerfile
```

-	Layers:
	-	`sha256:fadf7297325b000365ee112a139ba826dbfb3eed3046ff2173a39037beb6018a`  
		Last Modified: Tue, 06 Oct 2026 02:01:39 GMT  
		Size: 5.6 MB (5616326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9183bd765b10c623bb58fc7a9408582aac3114f713d181f1ad9d4b4364d2a524`  
		Last Modified: Tue, 06 Oct 2026 02:01:39 GMT  
		Size: 53.9 KB (53890 bytes)  
		MIME: application/vnd.in-toto+json
