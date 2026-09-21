## `postgres:alpine`

```console
$ docker pull postgres@sha256:77f585114c32fbca283dc835b0596f4e52b51b4c6662d7810b2f4084f60a1873
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d8703cd7fba306b9fec9268ecedfa8a966846c053036a60e3635791957eb2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120037793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c293117fcecda7344b5480222e813b9f673d7abd69b1dd95eff239b768b04f59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:27:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:27:13 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:27:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:27:13 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:27:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:27:14 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:27:14 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:27:14 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:27:14 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:29:49 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:29:49 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:29:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:50 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:29:50 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:29:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:29:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:29:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:29:50 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:29:50 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:29:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976cd45ecd0f5afcb47e7ee68e70f2f8632a1e621e465632cf38a6bd06563aad`  
		Last Modified: Thu, 17 Sep 2026 21:30:07 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f47ca787e9d08adaacc8d2a9d91e78e65e37706ef159ee52daae848c58bdd9`  
		Last Modified: Thu, 17 Sep 2026 21:30:07 GMT  
		Size: 901.4 KB (901406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b4807a96db4dc1287cec075f24db70aad9e7b1307dcbc52a20e26a98e12cfe`  
		Last Modified: Thu, 17 Sep 2026 21:30:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ebd67725253ed5be1425c468541541ba6034ec0acce3fc3c388df36c503d70`  
		Last Modified: Thu, 17 Sep 2026 21:30:10 GMT  
		Size: 115.3 MB (115260137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5545be08ab6c7da866f9eb293b5583146b729e72ec499e3bae843b808aa8636`  
		Last Modified: Thu, 17 Sep 2026 21:30:08 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fe9499841704ecc44978c38c723c55ed198cef686e90cdee890e5609a9c6de`  
		Last Modified: Thu, 17 Sep 2026 21:30:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176ab66edd3909a2f90886b538b88fabfc9751709dd6bf335c9374448c6f77e5`  
		Last Modified: Thu, 17 Sep 2026 21:30:08 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef7ae0adbc8a98b2be3aa5546451f12ccb858a38079d10be3c4a0717ae6dfc5`  
		Last Modified: Thu, 17 Sep 2026 21:30:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:5a7eb52581e6425c42d0c7d1832b49dce9d8ca9b6ae22d5642d24f32fb34111a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 KB (658314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe3b81f36c14c72ffb0980d5184c0a36e2c1676de2170176f514e222d810aa0`

```dockerfile
```

-	Layers:
	-	`sha256:26b9f17ac0bd672c31110dee2e3a882960a68414efbe20a1194da67dc76e666f`  
		Last Modified: Thu, 17 Sep 2026 21:30:07 GMT  
		Size: 617.3 KB (617266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41433c2899daf5a35de062529697a3515b46c50ee9d7669ce893653ed1ac404b`  
		Last Modified: Thu, 17 Sep 2026 21:30:07 GMT  
		Size: 41.0 KB (41048 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:548908d20dac4a46d489f436b744901a64c48b93999223dbd804d59bc62bec74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116207359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae07f9c048063d191957f61f2995268a30e52a2b866d7b6b213793361f020cf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:43:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:43:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:43:58 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:43:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:43:58 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:43:58 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:43:58 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:43:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:46:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:46:53 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:46:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:46:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:53 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:46:53 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:46:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1590aa562f3ba5041449162fd2d5d1c176bd2c8b908642b99af10b279518b3e`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae95939c35032cf05c02759819f8f28835af0ebafe0e12cee3e5e2a434490eb3`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 865.0 KB (865038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bfa2e34bd4025715f34870ba349f2933f8a317306f2f281c61122a3547e6bb`  
		Last Modified: Thu, 17 Sep 2026 21:47:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe367bbe2886a288c6e4ab184ea9ee92d86f38b592ad73555db827f7d98ff96`  
		Last Modified: Thu, 17 Sep 2026 21:47:08 GMT  
		Size: 111.8 MB (111760698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4120f76baa4d9d032040ca71d8606b5843600cc10cfa91920367b01cc77c2377`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a3f58f7e3929cbf56fa476e2b87887d56f1fe1343426a5ef9a9fff5dd3535f`  
		Last Modified: Thu, 17 Sep 2026 21:47:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c128caf3133f9bd6d8abf2779837cf8f18e5e34397bdbf625010c9776ea465`  
		Last Modified: Thu, 17 Sep 2026 21:47:07 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685ff8564c0f62ddf69b3a1c2062b634915fc6ec08f53e8595554e45ac2e5a65`  
		Last Modified: Thu, 17 Sep 2026 21:47:08 GMT  
		Size: 181.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:8232e0529a9199e65d77bdd8dc8da98b132f37949c42a1a50e1ca4f186d10074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f4db6516f35b2407e1bb6d050cfc22abf56d0ad342003c96a69f9c0e471f8e`

```dockerfile
```

-	Layers:
	-	`sha256:abe74c6d187aed2160e9b872eb1d14053d85c5471b8ab67b979a14f38afd40e2`  
		Last Modified: Thu, 17 Sep 2026 21:47:06 GMT  
		Size: 41.0 KB (41007 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4b876a8e668b72c43573a999eee6a06cde0042dcea0b378caaa71bd999f40a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109785909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cffff1b64fce96ee0a83d84b87bfc996dfd0e49174ecc1bd60f8ad4f33d5d7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:43:49 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:43:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:43:49 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:43:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:43:50 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:43:50 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:43:50 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:43:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:46:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:46:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:46:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:46:39 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:46:39 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:46:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:46:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:46:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:39 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:46:39 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:46:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63cd8835094ba57bf3061d0d2dce7ddceb3fae08167e1b280bbb5ee03bd447b8`  
		Last Modified: Thu, 17 Sep 2026 21:46:53 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97d8c9457b29812e562abaa62ad05a53745ae075412af1a690c10833cdfa89e`  
		Last Modified: Thu, 17 Sep 2026 21:46:53 GMT  
		Size: 865.0 KB (865048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228f70150f89d411d811a3c286c4db63284deed12c3fd422be8928ea15b2acb4`  
		Last Modified: Thu, 17 Sep 2026 21:46:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b18630eb08f3147926b52ccb4fe826c79c770e18898378544816f56924bb61`  
		Last Modified: Thu, 17 Sep 2026 21:46:56 GMT  
		Size: 105.6 MB (105629146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9584d193497354f172c086b31b7eef08b13661862f9e09c7710be155e4f2611`  
		Last Modified: Thu, 17 Sep 2026 21:46:54 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e88b0bb3490992d9b375132063edcf638d96b49503391e9c835a35ecd094165`  
		Last Modified: Thu, 17 Sep 2026 21:46:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6b06f052ead82d52237e9fb9ecda27bd1e507060c3ae962b2a0431cc9d1cd5`  
		Last Modified: Thu, 17 Sep 2026 21:46:54 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e52ed63d43b90613a577535cb46453d84e053b932fcfb7ad17f0d142626c70`  
		Last Modified: Thu, 17 Sep 2026 21:46:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:a6371b51c2ab499f1c6c4b21cc24d1a43ca7e61a0743d2c98ab29178f0981e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.9 KB (657890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7483c05733e2a471cc096cdfd8927f2a5f5116762fcdb7721c8d04b24eb2cb7`

```dockerfile
```

-	Layers:
	-	`sha256:fb49f2d28a2eee1266b3ab33e43852179293555a46579b89b08e802607d2dea5`  
		Last Modified: Thu, 17 Sep 2026 21:46:53 GMT  
		Size: 616.7 KB (616668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e6be9df290538bb75c501eb64cf020392d4fee9d345db3905c0ec8b84d27d08`  
		Last Modified: Thu, 17 Sep 2026 21:46:53 GMT  
		Size: 41.2 KB (41222 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:89f747171c4b0af0eacf5984550060be79786dbe286eb60cfa691d79d1e8b23f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117877840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a8005067f55a2f8ea369e767545fd467b1943a4f0f1a48b7dc44f06c366109`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:28:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:28:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:28:33 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:28:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:28:33 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:28:33 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:28:33 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:28:33 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:30:59 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:30:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:30:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:30:59 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:30:59 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:30:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:30:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:30:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:30:59 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:30:59 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:30:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcef62806108b8924f352c16dc930912917662f318ddd7c660cbfe31382aa11c`  
		Last Modified: Thu, 17 Sep 2026 21:31:15 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9878fa518440e68f156e85c856f4edf422239d0e22fa68dbec3d36d79a75507`  
		Last Modified: Thu, 17 Sep 2026 21:31:15 GMT  
		Size: 853.4 KB (853410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393fa0bf03a65228fb01f55ac0ae8ee3ddabc6bc2336fb0356f23da680881cf0`  
		Last Modified: Thu, 17 Sep 2026 21:31:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04239286062195ce8dc648025e83792270d51e9007e74cd73db34c75087a9f6d`  
		Last Modified: Thu, 17 Sep 2026 21:31:17 GMT  
		Size: 112.8 MB (112810256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95acc7dd730845cfaceeab96da301181a423d666c535f3dd21e2d2aeba622ae`  
		Last Modified: Thu, 17 Sep 2026 21:31:16 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9425a4aed1188b4251527b329f5cfe0d5186c6e7d3651242a01d5f2c7a8ca93`  
		Last Modified: Thu, 17 Sep 2026 21:31:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526eff169ec4d40ff8931b6da3707cdfd2fbde978aef25a253ca1de082177875`  
		Last Modified: Thu, 17 Sep 2026 21:31:16 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894766359b550f141c0da69d714ea2343d46f0384bdd858dc39d3a8982cb00c7`  
		Last Modified: Thu, 17 Sep 2026 21:31:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:290efba0ec48f3b8a372d5086d99a8fd9c4a4f22453151287154bca31c17ccae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.0 KB (657962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7f14fbef5bc69c2f4aa8863450f701bb749b6fbe6acc7829feb0f9a70b433d`

```dockerfile
```

-	Layers:
	-	`sha256:c562a3ff83fa77ae0a3e6c02920da7e08e10f8248e87bebb62ac139ed394a0e6`  
		Last Modified: Thu, 17 Sep 2026 21:31:15 GMT  
		Size: 616.7 KB (616696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec331ec9f4066d2aadf19823e02995356139b4d733cb5771c06b3e24204e157a`  
		Last Modified: Thu, 17 Sep 2026 21:31:15 GMT  
		Size: 41.3 KB (41266 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:1d22739c0a64fae400b80b9b7bc66c793915541c6a65977bbe9b8c88d22b3569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126869202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f4d60e27c2aa37f0fd46a58a983bfeadff2cbb6f076cb6af6c04b4d56aa820`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:13 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:28:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:28:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:28:16 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:28:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:28:16 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:28:16 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:28:16 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:28:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:31:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:31:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:31:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:31:18 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:31:18 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:31:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:31:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:18 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:31:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:31:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b90cc02d632c3cb74e50c04ba4a479dde5db9bd4ea3970a567d072d18ae6ed`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d8e3abf7b7fe91ec1e5a0ef51956d86104de82f57a5d7f8fbb52c5e0dee9d2`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 870.3 KB (870294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063d51b05a7f0cec540f317d7d94706999f6bdd69e3b336feb26f6e94f312c62`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380f59ddf1af52babd6eaa8233d0916fe5b8fc7d0cfe104aa637cd4cb41876ed`  
		Last Modified: Thu, 17 Sep 2026 21:31:38 GMT  
		Size: 122.3 MB (122295614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7863d1daaccf95239fd91b52611db977ea73be49b8e73d5bc522a0b87030142`  
		Last Modified: Thu, 17 Sep 2026 21:31:37 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de502f09d931857734a53283a8a88559eb0c09d1824c2560c0a96a7a5604406b`  
		Last Modified: Thu, 17 Sep 2026 21:31:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee10d9c13d787fc75d61fcdbd3d288a5a7288768102e075d319758a70697fa3`  
		Last Modified: Thu, 17 Sep 2026 21:31:37 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f26e3150e5f15676a88ab67f74ac225eb7e18445fe8979b7bcf1ef14f3d90b`  
		Last Modified: Thu, 17 Sep 2026 21:31:38 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:02c055970c3182528acf04d97add5540a47c4abb260483ec8b5f3375216d0548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.2 KB (658225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ee474f94707e8486b4c0f93b8ed89ef381ed7dc988cdc460c0471fc509e076`

```dockerfile
```

-	Layers:
	-	`sha256:67e7b455d3bfbcebc506e386bdbe6bfd8de01e87b7561552f9d6b5735f152865`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 617.2 KB (617231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea3a4ea0669592573a8781e073cc0b419e937b1da102d453c540ae7fcd256129`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 41.0 KB (40994 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:7193bcd502992934d36436b3bee8019760af1cd81fcda938e2586e264dac5d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123039312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f71c7709f86071b35529ddc0d981e4dc31182a67eea8ed51729946703c23b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:13:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:13:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:13:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:13:53 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:13:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 23:13:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:21:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:21:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 23:21:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:21:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:21:41 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:21:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:21:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598921e4e005583e7a6cb711133752474a367af1db89bff92b32c9aecb33e488`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e08bc4edcb2784f2b2895f1aa6e80ad405c7b6dd5d509ad933749e3d5e533`  
		Last Modified: Thu, 17 Sep 2026 23:17:58 GMT  
		Size: 858.7 KB (858697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e696912752ddd4834eee170a3a3959e53eb0ddf2a2d8c3de5236c5714b2767`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ebd16eac59cf1d75bc4fc24b83239a69e4251596662356f362ed2b305cd396`  
		Last Modified: Thu, 17 Sep 2026 23:22:17 GMT  
		Size: 118.3 MB (118336612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b655dc1b8bf2640162da99e37de26a3598dc0ba4c2a5ab82c1cb859e48c99df`  
		Last Modified: Thu, 17 Sep 2026 23:22:13 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c429abae24a75b52b79f81f58e081803358ba74729cffec4b71689efe2646d`  
		Last Modified: Thu, 17 Sep 2026 23:22:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45066d72498b547a84b9d0afa72f69d5c4ba96d8f0b2386c0e7c38ef561318ed`  
		Last Modified: Thu, 17 Sep 2026 23:22:13 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0ca5e349890b818e4ef7adcbeb6c47e7a7e740d4bd25ab3842fcad72e293f9`  
		Last Modified: Thu, 17 Sep 2026 23:22:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:33ab2ec274aab567794d12584ff9cc95e8323f1bb2f1703b526740c37e6a056d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9c5a377d3f9463a466f35bf6b6fe7503776f3e6e7145b5ae2969380c5d16e2`

```dockerfile
```

-	Layers:
	-	`sha256:64519debdcce5b2e32318d069adff101d74135f6dce1d194284edd3f359ec793`  
		Last Modified: Thu, 17 Sep 2026 23:22:13 GMT  
		Size: 615.0 KB (614999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3061b72973f9fcfd5c917b1e39fdcbed2d2a70c5cb10ee371d5e7a94d245f22f`  
		Last Modified: Thu, 17 Sep 2026 23:22:14 GMT  
		Size: 41.1 KB (41115 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:c403bc6b4326fdb6771784116e08bd234d8a7918e753ba4268e1e8b66687dfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122527639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728db64dd8b3cb10f08c6e42579a5aa5e30cae2686d9d7798adee8934c35799c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 19:32:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 19:32:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 19:32:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_MAJOR=18
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_VERSION=18.6
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Sun, 20 Sep 2026 19:32:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 22:23:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 22:23:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sun, 20 Sep 2026 22:23:42 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 22:23:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 22:23:42 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 22:23:42 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 22:23:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e8f6cc689b5a966301671334e29cbee0f06b74064549ee24393aec57187b2`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec9352b57bff085fb0a8f2fcff7e1c43c56221519b792aa6ea943bdea75820a`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 846.3 KB (846279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f38a78ad5cdc11334a5a5244b4ce336823fa996ba02ae7b8209481ae5772819`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ebb9ed713039fa67b366414784ffc79c71c2b57a3a2fad8dc24cd549742b04`  
		Last Modified: Sun, 20 Sep 2026 22:27:07 GMT  
		Size: 118.1 MB (118079457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ccdc9dc837a13cf92d7c9de9ddf471dd174fa6c5f647bd92f41104cc5df822c`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ffae1ad7afb589184d449ea1aae1f3fbb7770925d5e89235aa8da2c7660f5f`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e80b6de732f0ec112a513efdf9ce887b4656a86e5a4d4b51199134cd37a336d`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966d196c0a0b04fae599c1a1c2a9217a6138a54504e03f0e08c25ad0257eee1f`  
		Last Modified: Sun, 20 Sep 2026 22:26:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:9c30f3d41f66982fe50a9ac6ac44f5339b9dc9543db8b9dcb7bcbf391e58c57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.8 KB (657773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25844cd5aa33a5d93cea02114df2f3a821646c9e9e9ac1c78c72a01b674200a7`

```dockerfile
```

-	Layers:
	-	`sha256:0b1b9b08945d5966132cc2143e8948b29d0dcd72b5355071508a831b64dc7592`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 616.7 KB (616657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:219474c33b80f3aa762e2242182e8ac23bdc05a1cdf1d3f35629ee5428869df2`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:b82b13bd4cb10ae4c9a55c8ac6304248d8b82a629b598c934c05ebf4f49d522d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126653406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14472f32539fd9e4a3c4e9f8b5f3ba4cc220531935c47f1df024deebaa7c49ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:06:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:06:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:06:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 23:06:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:10:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:10:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:10:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:10:25 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 23:10:25 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:10:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:10:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:10:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:10:25 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:10:25 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:10:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9041c599e6c0fe5d377e6f5809d953ee9176297e9ae9c144d63cc2b2f886f4`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891986bb8e0f45c41180e4e4e069c57cff5e24b42e9d7f40155317b6848fdabc`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 875.7 KB (875711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbd61ac5d63acc8c6d9971a5cf9bdb82395b726ab6a0d632c0ea43faced1980`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69f5b4b55c13b6f9c44e853484a708e063f15aac5f7d7d56195072219c19885`  
		Last Modified: Thu, 17 Sep 2026 23:10:49 GMT  
		Size: 122.0 MB (122035844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1c7e56daf819790a51bfc08a8546dd77ac05ab5cc73b4496b64eb40cbc83c9`  
		Last Modified: Thu, 17 Sep 2026 23:10:47 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7c01375e4712e2a094bd53c8fa4c4d1ac8ff02d3ff4d91b9c7a52db03c19f5`  
		Last Modified: Thu, 17 Sep 2026 23:10:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f9f2dda2679be24c5f56abd198b117d446ff22238d3094f3e77d823a4bbe42`  
		Last Modified: Thu, 17 Sep 2026 23:10:47 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2610985a23c7478e4e5df386f7e26ea6f728c6ec68cd0cb5ad39602a88b03015`  
		Last Modified: Thu, 17 Sep 2026 23:10:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:76f80536119c69d55a986143fd349f961649b872afc9a37b2bb78e10a02cad68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.7 KB (657663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc39bddf8e343c484388f93271f6945fdfaa6e6f08ca58c3400a362f9537781`

```dockerfile
```

-	Layers:
	-	`sha256:9c32304933472ea7905f991a5bd043b14c881418182a1e64439eb7d6bd871d45`  
		Last Modified: Thu, 17 Sep 2026 23:10:47 GMT  
		Size: 616.6 KB (616615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a647b3d57983d6df093d5992572ecba51afc3cc473198329ae3c5858a1478a28`  
		Last Modified: Thu, 17 Sep 2026 23:10:47 GMT  
		Size: 41.0 KB (41048 bytes)  
		MIME: application/vnd.in-toto+json
