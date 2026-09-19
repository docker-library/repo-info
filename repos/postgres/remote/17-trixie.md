## `postgres:17-trixie`

```console
$ docker pull postgres@sha256:f4c66b820c6f974249089d3d16d86a3698eae11e8746eb6644b2271031e91232
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

### `postgres:17-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:e31e3d5327d1806f6177827c9710643e4f35f7ab3f14d26d05332753d3e95ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212aeeeb8faaef6c46498d86cbec6b9344d8d9492996b174664ff82c562ab685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:35:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:09 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:36:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:36:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:36:14 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:36:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:36:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:36:17 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 00:36:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 00:36:17 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 00:36:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:36:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:36:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:36:29 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:36:29 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:36:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0725a8be915e7a30dc86bf6ea1a0f4cf86baab80e2cb64cd6e44c7ddf339d33f`  
		Last Modified: Sat, 19 Sep 2026 00:36:47 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f55f60a7865a4db54008e869fe30a31d9f4892dc9b263f7f8937b7ac2a4cfe`  
		Last Modified: Sat, 19 Sep 2026 00:36:47 GMT  
		Size: 6.4 MB (6443011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564dc3c4a6f9318ee29e1d8114629f671bb0f1f2f542752c9c6b68cfd078328c`  
		Last Modified: Sat, 19 Sep 2026 00:36:47 GMT  
		Size: 1.3 MB (1256748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752819419f5083c3e506de779021ccd8665bb34bf7845ff1653157fc6b7f0fef`  
		Last Modified: Sat, 19 Sep 2026 00:36:47 GMT  
		Size: 8.2 MB (8203817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b51b92450517e64a2cf0917ae35f036e27a914dfa105c3fa287047b4f05ed37`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 1.3 MB (1311669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498b9ff7d682c138421c7942f0cda63ab65e76974d8d802a0713fa46620edc20`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755a851127eb2f3b84bca22392c3c49ce860f935433ccd87f53d614707f094cb`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe7b3469b205f9cc7335abb718cec1d92950322cdecf71b36948a24cba8eab3`  
		Last Modified: Sat, 19 Sep 2026 00:36:51 GMT  
		Size: 114.3 MB (114255852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73872941ba23adaea51292ee374cc100cebab858efd6334b0f049675514be537`  
		Last Modified: Sat, 19 Sep 2026 00:36:50 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9b6cf2e417d1ebca90c92e2cdc069d01b0c71ded6ce877927eb38c9caaf86a`  
		Last Modified: Sat, 19 Sep 2026 00:36:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feaebf93d15276bf6dd618d21f53f829b29119ddc6dee15736952bed7f47e97`  
		Last Modified: Sat, 19 Sep 2026 00:36:50 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e228e2fe6d3720a722993a7dd9e2e433febf2c987606ffc2c9ee3c57ff0fca`  
		Last Modified: Sat, 19 Sep 2026 00:36:51 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed9376b51dc85386fab78123b01d461daad0f726d49887cf105258c0743b09d`  
		Last Modified: Sat, 19 Sep 2026 00:36:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:2ca48abe6ef9fb9fda600a9198bddb14784a87cd653a364631916831168b938f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5786721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c57ee29b65807aa0826161c1bf327f3c919b7cbadd4f67173ad2838752ec22`

```dockerfile
```

-	Layers:
	-	`sha256:090191b9c4283ebbf6f8083ce75bfae1e8c8dd69b009c01e8774a1b8a263d448`  
		Last Modified: Sat, 19 Sep 2026 00:36:48 GMT  
		Size: 5.7 MB (5732826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8149cae2e3152a0417b988db32ca640fec6433eb783e1786a844db0815cfe9fa`  
		Last Modified: Sat, 19 Sep 2026 00:36:47 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9b6d2e9b55335c9909a929c463a906a82a5cc9cf4302f87c44269c1aa4173d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90928775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b1c98cef7b152f70762f662ca923ae51838d05a81cf6bae51df56563b2dc0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:10 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:41:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:41:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:41:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:41:40 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:41:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:41:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:41:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:41:48 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 00:41:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 00:41:48 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 00:54:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:54:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:54:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:54:59 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:54:59 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:54:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503556e1d15b1ad2221abc49ca1016219422ee2bc1d71be5892e4da5f786fe88`  
		Last Modified: Sat, 19 Sep 2026 00:55:12 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edca0a8e665b640cfd2d25a096ad63956e96add5c1cb27b240bb3a5db84e5d5b`  
		Last Modified: Sat, 19 Sep 2026 00:55:13 GMT  
		Size: 5.9 MB (5932422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360a51d0c547a56fcf3c2153f026228b1c1806db5f10748da198c4ab36022c9f`  
		Last Modified: Sat, 19 Sep 2026 00:55:12 GMT  
		Size: 1.2 MB (1227447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b7190ddc61f6de65db9a2cbd60fa5486422ac8d197914fc93e0af54e391c72`  
		Last Modified: Sat, 19 Sep 2026 00:55:13 GMT  
		Size: 8.2 MB (8204237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8479fb928faf73d8a323af48da5892b444c586c7ebdb9197a9d5cbc95d5dc1c8`  
		Last Modified: Sat, 19 Sep 2026 00:55:13 GMT  
		Size: 1.3 MB (1317355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d435b83abb770f661784074f276f087e7f35d34ea692a7f6a79821608dbdbd4`  
		Last Modified: Sat, 19 Sep 2026 00:55:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44374da95fb488487c91b72832090aa2d7ec34c002b84941a46b70da43c7f25`  
		Last Modified: Sat, 19 Sep 2026 00:55:14 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44713aa36695bdd28137ede81dafd30d94532ad2d2ef3e05f57feee85e66ecf`  
		Last Modified: Sat, 19 Sep 2026 00:55:15 GMT  
		Size: 46.2 MB (46227821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900de254a70659ab75043180a02fff10b9738d6328b3abe105686deb6b3ed0ad`  
		Last Modified: Sat, 19 Sep 2026 00:55:14 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5767afaab60c01554f5c18193883452fac9517c35c20a97b40351cbd1d38808c`  
		Last Modified: Sat, 19 Sep 2026 00:55:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6f5213f362994f91be39785a70d4374237d50627f2b118eb109f9f265c9454`  
		Last Modified: Sat, 19 Sep 2026 00:55:15 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc5836544854728fa076acea8336af4e33f7e02fb97a6d522e748f3f59c56d1`  
		Last Modified: Sat, 19 Sep 2026 00:55:16 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d371594b222a9ca0208f0c4598928aa3d0db7b81133b02470ec84aebde44a3d4`  
		Last Modified: Sat, 19 Sep 2026 00:55:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9ed0d522a7775bef984ee7620b5a3da8a0fa40f8e472a400b3969d41bd8644a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543ecd00a9f6a418209666dec41aee35ad24e1d232daefcc3c8648f96e21e556`

```dockerfile
```

-	Layers:
	-	`sha256:b27067b441d7081955fcd9cb48d3ea1999bc04347667997ff57e87d32340601b`  
		Last Modified: Sat, 19 Sep 2026 00:55:12 GMT  
		Size: 5.1 MB (5099857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f696ab9fad9e45ff9bfde4c12d1d34d9df9f8b7ffd2c1d435d1e6932d1f1be`  
		Last Modified: Sat, 19 Sep 2026 00:55:12 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b635c790d35ec6ca6b2ad7ce115c6e2500610168b236b7ced090b53cae837a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87262076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b079a9c2673d21e3d8019b5b7de3ab513c5ee5dce079a263829f354ae07ed6f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:13:03 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 01:13:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:13:19 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:13:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:13:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 01:13:26 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 01:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:13:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 01:13:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 01:13:32 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 01:13:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 01:13:32 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 01:25:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 01:25:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 01:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 01:25:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 01:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 01:25:21 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 01:25:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:25:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 01:25:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:25:22 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 01:25:22 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 01:25:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d589ec822755305dae4751c428ad46cc5868d2a68da9d4a1c7e6c0442b26b`  
		Last Modified: Sat, 19 Sep 2026 01:25:33 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d01e2029cc63e1f0845c7ecc698d19b9cfbd0882668790975d849dfae9d103`  
		Last Modified: Sat, 19 Sep 2026 01:25:34 GMT  
		Size: 5.5 MB (5497293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bccdfcf55a588639dae693384e75dfc10c98122ce9175b8113a82e3c1905297f`  
		Last Modified: Sat, 19 Sep 2026 01:25:34 GMT  
		Size: 1.2 MB (1222342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9568b3d7659424866732626ebe513a978aa55a8971ebf1be57298c5c8531f41`  
		Last Modified: Sat, 19 Sep 2026 01:25:34 GMT  
		Size: 8.2 MB (8204030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5525aa68e85a4323ac45c6eb4c2b2fc094c36848b56e009aac70840e0567dba`  
		Last Modified: Sat, 19 Sep 2026 01:25:35 GMT  
		Size: 1.2 MB (1172677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5461269971b43de992521b4dcc2fa32bea4d800789436662badd1768580a89`  
		Last Modified: Sat, 19 Sep 2026 01:25:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387d525ceac23f5d7479663e1222e64ab7a1cffe052e6b9f41c3ad5158149c7b`  
		Last Modified: Sat, 19 Sep 2026 01:25:35 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce4e480948fff9132a2f5f111f662c742042570c7b6fb9af0a45c2982cf5277`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 44.9 MB (44895327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305e6e169afece657ef9c553e46116243fe27f31a05b5ea8cf5bccfa9b9c4e0b`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 10.5 KB (10463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57de344e52862940059182fdd54c0d091fe115ce200d851e1cf96769ea745be`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f315b81492037a152d13453966934136a3f6d27b733ca4a5c3e23192472a92`  
		Last Modified: Sat, 19 Sep 2026 01:25:36 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd075583545bc454797d427cf91846bd7ca0a76c5a0704a96bfa94d80dc11ec4`  
		Last Modified: Sat, 19 Sep 2026 01:25:37 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2edb2150b43fe859d884e9e9e42cfd36f33eb520f6a42a989810518667c01b6`  
		Last Modified: Sat, 19 Sep 2026 01:25:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e84821b83861dcdc2c1abb7d4be0c2e21cd59ed33eba6da965492ff2285ba603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4a33425b26b448f726730dc5a11fd15bf66b4cb35981011b6980b790ac752a`

```dockerfile
```

-	Layers:
	-	`sha256:07d726eea1f4870d8436258abd1a4dc9c5ba0d237ccad20013493bb50534f690`  
		Last Modified: Sat, 19 Sep 2026 01:25:34 GMT  
		Size: 5.1 MB (5099156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61166fd6878160d1354530606626a5ecbe28a5b648bcb97a5266594ce3f843a6`  
		Last Modified: Sat, 19 Sep 2026 01:25:33 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:86fa57b44a1d38f09970f64ac71eb492f7a9cf94d08b85e1c8f07bb0fc0a1761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159958072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97432f980da100ebd3e419711efee84e1e97a966d62c035286a07f239ddb4d9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:23 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:38:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:36 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:38:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:38:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:38:41 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:38:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:38:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:38:45 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 00:38:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 00:38:45 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 00:38:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:38:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:38:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:38:59 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:38:59 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344ed0d36e610865a88951729051a3eae4ed37d6a05ad60e7fa584614a391d34`  
		Last Modified: Sat, 19 Sep 2026 00:39:18 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a0df9d7a4a1ce0633f72ff465dcc8f64b5816d728e6500cd1ce5bc95b865e2`  
		Last Modified: Sat, 19 Sep 2026 00:39:18 GMT  
		Size: 6.2 MB (6234988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5220ddf37cd21b871553c86d5b09f1c2ec44c763c2d1e04594361dcd1cdfbe`  
		Last Modified: Sat, 19 Sep 2026 00:39:18 GMT  
		Size: 1.2 MB (1209621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fe4b142e906920b06f0d31a8e0b4002f6fddcd41126c3fd3f24f56c5814e1e`  
		Last Modified: Sat, 19 Sep 2026 00:39:19 GMT  
		Size: 8.2 MB (8204009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724cc01c4e68cc428ee2f1c2c8efae6fd00613e2ae59f8bd9db04d17cd7895f1`  
		Last Modified: Sat, 19 Sep 2026 00:39:19 GMT  
		Size: 1.2 MB (1220656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85e0dbf28ca64e266631c71803b8fdb5a0c4c6c741de818e4c8cc4bb8efa3e4`  
		Last Modified: Sat, 19 Sep 2026 00:39:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c7493c80eec5bdb7482e6b704a9cdf80e2a6c41db5734a2c292ec2fc3e5acb`  
		Last Modified: Sat, 19 Sep 2026 00:39:20 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bd31abcf11d101c78ea99d4ca9edb3915a96559cfa362b3cabf721616c7e76`  
		Last Modified: Sat, 19 Sep 2026 00:39:23 GMT  
		Size: 112.9 MB (112877645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9ecc778db03e5c08f864dba3b650ebabbd01599e1acdac273de2b3074ef63b`  
		Last Modified: Sat, 19 Sep 2026 00:39:20 GMT  
		Size: 10.5 KB (10453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0473fe57c96568124e625ac8b73d7754c0b072e6070bfec5b93c94eb40369246`  
		Last Modified: Sat, 19 Sep 2026 00:39:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee75b2aa4155212fac6f274cd3f008fc12afac9fa5ebaa6342e0ca804fd4c46`  
		Last Modified: Sat, 19 Sep 2026 00:39:21 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57c5ada52d4cd56c605c9875a6781a3761260d939e4bed3d1c807ef0e0e4858`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed27976e552c80decb751dbd443aeebd03972c6e3241cf2f23d3852581cde74`  
		Last Modified: Sat, 19 Sep 2026 00:39:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:32350a9fb589b9fd6648d8dd9ed3a8871f0f8c8734f1db3e72e94e458c4c2c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5793328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de118fa626382475af9f252bb5cc1102fde5fae4ca8096189014cb1dfc2814cd`

```dockerfile
```

-	Layers:
	-	`sha256:8e340d1d2e572122dafbffc5ff158eaf88c9073da7c1aed12226ebb5db3b4537`  
		Last Modified: Sat, 19 Sep 2026 00:39:18 GMT  
		Size: 5.7 MB (5739164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b5913bd23b5debce40f2427826390073e930e8cd71da1106bd5c55d9796a714`  
		Last Modified: Sat, 19 Sep 2026 00:39:18 GMT  
		Size: 54.2 KB (54164 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; 386

```console
$ docker pull postgres@sha256:8e61732943bd1812876cedbc1219744e1f741d41bc3929ed1dd9f0fd9b334a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96986621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b1cc633ea08066a22078d84f39e1e4a9ec331dfae4ddc6a627159839f5c872`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:38:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:39:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:09 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:39:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:39:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:39:15 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:39:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:39:20 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 00:39:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 00:39:20 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 00:48:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:48:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:48:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:48:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:13 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:48:13 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:48:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16af2c618a186b329da603bd1d23a9312e7ce3e4ac1f81952e4488dfa3edf7a`  
		Last Modified: Sat, 19 Sep 2026 00:39:43 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428296afa1045237fa1a845a5c4132385b00da251416cdbfa2182bb2e29e341c`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 6.6 MB (6631400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300106da8afe0d22f5df9367c614dd0b01fa1d301f1d944dac8bf58146b18f1d`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 1.2 MB (1225828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e586d30eb924993d22d4a77bc7b17ae296384a172c478fd16279b174983051c1`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 8.2 MB (8204030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fadf86c44e0fcb8e70412e210e6424928ccf3a6745bbc11575155265429acd`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 1.3 MB (1308292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd90a2d989680a181c62e2b965912ac27f44abc39582c6d399fa91f05effeee1`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c64f3a007bbccd76967d4d62cfd5d9787e3b9d38406aef3846c2e2b23b51809`  
		Last Modified: Sat, 19 Sep 2026 00:48:27 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8069978da65e2218fa8c588a9e878d32666d80cd6a557b67af38486240a4e3b2`  
		Last Modified: Sat, 19 Sep 2026 00:48:29 GMT  
		Size: 48.3 MB (48255210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd76f0210dec5858a6a987ede041c90755fcff61b9e89462bc68512eb2ba7c`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 10.5 KB (10452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e318a626a58a9c26a556db973b4ef361606bf4658ad82a64b99f48a741ad118`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5172feeec9e8462a7feca3c9f7c1e52946e41df5ec32f21ee7cb1b5cdf13fb38`  
		Last Modified: Sat, 19 Sep 2026 00:48:28 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c8c038afa368fcedc6c5e3862d8392a26803ffced9779d9baf99ca6b11b18b`  
		Last Modified: Sat, 19 Sep 2026 00:48:29 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382d36d52c205d88141d3a4e45a231bac1931db731880ed61e5af3ce93aa7482`  
		Last Modified: Sat, 19 Sep 2026 00:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:17c1d3a29c6dfec97603c0b0d5d3925307a947c491fbcb015aba7291b0513da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5149060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb73c4b30d96714c58a58e298e3552db3b347cdd84969484a5c67a147beb5d62`

```dockerfile
```

-	Layers:
	-	`sha256:2b6495aa6bd93bfcc1e50b20961b547495d16ddab36b793b0c57914858d2b7aa`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 5.1 MB (5095225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8dba7273d2dc608520f9d67e570ccb37cc43dc2547150e14d5209c210adb241`  
		Last Modified: Sat, 19 Sep 2026 00:48:26 GMT  
		Size: 53.8 KB (53835 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:5902b512844acd01fad5667398e6e24e730406c7bcf0b748bb38d0182f71003c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173673126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de4d0b9ee34d0133ce114e02ffd7e6d49f3090e9b9d6c95b2af19d824f861a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:46:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 02:47:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:47:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:47:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:47:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 02:47:47 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 02:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:47:57 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 02:47:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 02:53:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 02:53:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 02:53:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 02:53:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 02:53:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 02:53:30 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 02:53:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:53:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 02:53:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:53:30 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 02:53:30 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 02:53:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1937550c6f8286c86666c3c43422e1a67d6b4ee1a959498e7aea627947bd47`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c4402cc3ed96fba8bd7e1e2597ff523125b7a52d4d0d1479887c612801dec8`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 7.1 MB (7076892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3893ded80d27a7c1902e32f5eb23addaafecc6dca2ad12e895e9318735e767a2`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 1.2 MB (1214852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616b792b16a3574dc22e12b668146e2e72fcc3d5a1bb3519b78a0501321741e0`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 8.2 MB (8204097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d460c684d72c733ce46f5c15e0c6a9ad75acb7693125b2d96ca8d30ed8085bbb`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 1.4 MB (1394976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c33ada368b7496b37a32049d240dd5e4a945077d47f3dd83950a6a63f22d5`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0349c56eae0e1a90ab92a02a17a2c44f9ea2f4f3d31ff6909db81f333279f1d`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c85f401e6f089e100d7d9dc9c5eaf0f2443d293669e121d8e8be75d164534f4`  
		Last Modified: Sat, 19 Sep 2026 02:54:14 GMT  
		Size: 122.1 MB (122119609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5c13e89a3fd14de2386c215584adb2dd9692de3bda71f7a965cda317f24a5f`  
		Last Modified: Sat, 19 Sep 2026 02:54:11 GMT  
		Size: 10.4 KB (10449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:941a0d041eb5cc9e73383e380a490c3e2613c508df38383746ef5a8b573fa5f6`  
		Last Modified: Sat, 19 Sep 2026 02:54:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4bec9eb236da063a0b5143b86157712048f0d393a0f36fbb81bc63cc30e5ba`  
		Last Modified: Sat, 19 Sep 2026 02:54:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00583399f50d3f185a416bf9f9863116697864730927c2771d06eb22d331ba8`  
		Last Modified: Sat, 19 Sep 2026 02:54:12 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568278c4fbfb31f573b3b9b413ff7ae844e2a342ff7484def722c0c550cb159`  
		Last Modified: Sat, 19 Sep 2026 02:54:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1703de522c0456d074966a27ac1d189cbb90777eec371d3d9f0c508290a1d729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5793399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7d156467601c805416dff4832b276aa9a86c6df6d4bcde636e2ec094430d2c`

```dockerfile
```

-	Layers:
	-	`sha256:e41929a24f739d3a645d627d378af34293718ceaf5e426da1a27f51f545b67e2`  
		Last Modified: Sat, 19 Sep 2026 02:54:11 GMT  
		Size: 5.7 MB (5739439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3edabae63b256496291a123e778faab17d36b7b4e082aa2df36f3927f7e58acb`  
		Last Modified: Sat, 19 Sep 2026 02:54:11 GMT  
		Size: 54.0 KB (53960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:cbc6b27fc0a255576fd004f1334ea16f7b5b065c368e721d6fb9c8417e404570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94922935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77130d8fcf190cecc25a2362432000841fe58e3ed0fa99813b20606e6ff33c3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 26 Aug 2026 11:56:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 26 Aug 2026 11:57:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 11:58:21 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 11:58:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 11:59:25 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 26 Aug 2026 11:59:25 GMT
ENV LANG=en_US.utf8
# Wed, 26 Aug 2026 12:00:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 12:00:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 12:00:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_MAJOR=17
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 26 Aug 2026 18:28:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 26 Aug 2026 18:28:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 26 Aug 2026 18:28:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 26 Aug 2026 18:28:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Aug 2026 18:28:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 26 Aug 2026 18:28:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Aug 2026 18:28:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 18:28:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 26 Aug 2026 18:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 18:28:22 GMT
STOPSIGNAL SIGINT
# Wed, 26 Aug 2026 18:28:22 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 26 Aug 2026 18:28:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc353eb5d09bbd17042242d645458ab956291b3b691fcb9770e2f8fd39af36`  
		Last Modified: Wed, 26 Aug 2026 14:12:04 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa77af6ccb526ab426c2b8a61bbd69a17b4a06a04e8134475a9c0dc882808c08`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 6.3 MB (6293020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5043517ec87936b0a2caa5660e13511b2cad209fdcbc082ecc8cda6604a069`  
		Last Modified: Wed, 26 Aug 2026 14:12:06 GMT  
		Size: 3.8 MB (3821229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83375cb7928d41d122b5edd7b985a426bf0734e9a1e86f4618c5463cd9963ca7`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 8.2 MB (8203918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbe4048c34551fcf3263f368644a629346f9007a20d89db62711f77a8c90b20`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 1.4 MB (1402550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40b6753191ae831059f8806c4912ca167308bfa2572d14c5827ab27c02b5c7`  
		Last Modified: Wed, 26 Aug 2026 14:12:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a915fae781b061cb0b51349b949199d029df7643266070b9aa3a0c178f6b421b`  
		Last Modified: Wed, 26 Aug 2026 14:12:08 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d4f6729dd1739ccd28b2c077ee5e2fc4c1ba0ae0c049f4e1f1ee1fb06c6abd`  
		Last Modified: Wed, 26 Aug 2026 18:30:58 GMT  
		Size: 46.9 MB (46884276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01ebf635c1238d70c6fd3a53196d63b22d198b4f837dedad48ffe2af2a60580`  
		Last Modified: Wed, 26 Aug 2026 18:30:50 GMT  
		Size: 10.5 KB (10463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181c93b1ba42b81be7e82b89c85985fc1e3a9f731505eaff25d55126e91d397d`  
		Last Modified: Wed, 26 Aug 2026 18:30:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd589a7880ee66e213b31d098afdb2944bf97cf628aee7e09c82e26b7dcf1c2e`  
		Last Modified: Wed, 26 Aug 2026 18:30:50 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85120b688a161443e47bec29fbb1f89cee4701612fa77090ec426b0464d4b8e`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528ca668570b95438ccf2525564d05a8ac12a3fa91985dbdf37dc629e2e6562d`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:bf882334b82a7bf155029b198b584dced38421a7e48fc561494a0020900dfdd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6968efc0ae9cb302892306d65c70072ac3b47a6d187c3ffa2e2c48d7d0ac6fc`

```dockerfile
```

-	Layers:
	-	`sha256:2e91be5b834e7f0729ea5738b0367aa8afdda26fb664649837aa0d554a4062a6`  
		Last Modified: Wed, 26 Aug 2026 18:30:51 GMT  
		Size: 5.1 MB (5084380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3591f3c1aa8b4e1ed35c4cb0c23d5de71222333477d015c700f116359ecd1b7e`  
		Last Modified: Wed, 26 Aug 2026 18:30:49 GMT  
		Size: 54.0 KB (53955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:33b944ae19be3c19293d7592789c56a6c7808b552a38e78e440904a57d19d570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.9 MB (175878555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93fd93aa6149ddbb8dadd5641ad47540dfad58f0ace8d787bf4e0f70f49eef5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:40:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:40:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:40:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:40:26 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:40:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PG_MAJOR=17
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Sat, 19 Sep 2026 00:51:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:51:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:51:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:51:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:51:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:51:31 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:51:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:51:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:51:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:51:32 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:51:32 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:51:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c905ec63242645b507dab55b0c2f578cbbd7589528a2f974ba4e207d67042cec`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba16049587fff23da2d7a7d0ded66180691082df52a83362ce76255aa79191`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 6.4 MB (6408489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed9afa0e999bd87b7911874083f128c59bd8a2e6709c15b178a84756e8459b7`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 1.2 MB (1230274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264f1919ce4f18915ba63ab11cae8fa0b9afb10648cfbd317785c9bc4582f8be`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 8.3 MB (8259006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abc97796be59531e3379002c12db5dc28874bf40be1e8826baad90ca957edde`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 1.4 MB (1398236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5916e41bb083ba31d72bc30ea4943d65dd4f3b98293ab9e485ac25e0ef6f8526`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7bed3026cda1298ddee0699aa2c77007b985cdacd4b45cfb9ceec3c36a9d31`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f99df873eed17c90b4bc75e884447cf4781c581f01d106f2f2c32b1d174fb64`  
		Last Modified: Sat, 19 Sep 2026 00:52:04 GMT  
		Size: 128.7 MB (128661934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d6caefd06126d743eb2e9b3da727cafd7fa65dcc63d10771b0982b1b06239f`  
		Last Modified: Sat, 19 Sep 2026 00:52:03 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:174cc21585dc5d81b7830a401bf84c971178e845f327dee4aaf2a71d5a95c51d`  
		Last Modified: Sat, 19 Sep 2026 00:52:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5754c00fd6d11304408327530460cad348e66dc3a8f80c7933f884658ce046`  
		Last Modified: Sat, 19 Sep 2026 00:52:03 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bea54b516f8c8b62347b06641cd2786364dd93bc5931c71dd88aad9b95dc26`  
		Last Modified: Sat, 19 Sep 2026 00:52:04 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541aac65d8d3f283d3e089f4fdc7eaec67e44fdf3c9c97fdbe4b8c4299e9de23`  
		Last Modified: Sat, 19 Sep 2026 00:52:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:e2b19c8069f8e33f1042c22d5b5b9c8aeb0f49d4e0333e3037f79919f30aba7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5801694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bb4e34ac9fabf464861f10dc2b847fa16bad96c3e0112d818bf968ae9073b4`

```dockerfile
```

-	Layers:
	-	`sha256:6c52454805f02f2505a5beafb92a2b001b24f81de3a3185e80c05415c84406bc`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 5.7 MB (5747799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00d95905feb5179a1139e1d99704331552df80a7c8b4c4013f1fa6fbd55f56b2`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json
