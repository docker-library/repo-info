## `postgres:14-alpine3.23`

```console
$ docker pull postgres@sha256:4862ed194025ed544096cc7854c09064ea950daa73f3185532638eee3b6ed481
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

### `postgres:14-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:cc5bed6349c02305a03bb1b7e138d65bc2b1cd8d6616ff19bed2e954eb29efe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114143384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9823023616f1b9951fef3ceb7e426417bb6050cb1a3a0e1f9f288793208698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:17:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:18:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:18:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:18:01 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:18:01 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:18:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:18:01 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:18:01 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:18:01 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:18:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:20:09 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:20:09 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:20:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:20:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:20:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:20:09 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:20:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:20:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:20:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:20:10 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:20:10 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:20:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d99d6bb15f8a6cb5e28e0c1fdf4a61b9fa2e8900c173bc541372848697bb86a`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e332f2f1204a9b2cfe9095f522644cbbac50b1af5413f8484f0ba0b638efc164`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 900.3 KB (900270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482467e216f50e2de798df2305d9705e16a6a19ac9dec8952808b71fdacb89ca`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fcd958b6c614747ff62122a18b6a78c255c1ab35d1b45822924a800e84c091`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5242ca0377e5e60a15526c8706ab78e0fea5b2bed92e1c2e0fb7eacae53f3a20`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 109.4 MB (109381601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a6217f882e4abee70b3008a19fc21191b5afb72ec8462c3a427c2027a4f66e`  
		Last Modified: Thu, 13 Aug 2026 19:20:28 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40da4de1a9632a1e508d5cc2e1e5f493e300e7da4c5c9067108d7649e120651b`  
		Last Modified: Thu, 13 Aug 2026 19:20:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993f0051adf3a52af6c022e8438fcb8f3b78e1184b8c201c9f6eda73d36e1557`  
		Last Modified: Thu, 13 Aug 2026 19:20:28 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0219f3d658123411269a365290fd744f47162546f24da1cc6353879bae3e3aa`  
		Last Modified: Thu, 13 Aug 2026 19:20:29 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b89125090b07e4fdc1ec809ee2e8b1ac97dda0ec6af91596f6554b4ce2f329`  
		Last Modified: Thu, 13 Aug 2026 19:20:29 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:54e25707bb8d1c1e90570865b266cedda19ce7a312dbb029c825df617f34e847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.9 KB (640907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7373de266e8b3b78df9ba4b81a75579fa750ea489dc6f5543cb101ebc6f6cbf2`

```dockerfile
```

-	Layers:
	-	`sha256:8848c7d501bbf6328d82bd0257bd74eb5057639ceefa1537cfb3b943b758a0c7`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7c4bb92dd53746e89ef33594af0240bdefdda0a47ae16c5fb7f81b210e7836`  
		Last Modified: Thu, 13 Aug 2026 19:20:26 GMT  
		Size: 43.4 KB (43449 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:212c0aeedfed5b1bcc72ff956a5559b316d79fe8eeafa533ad746afa477c9913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110457145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f58d30a701da97d963d11809fbbb65d463a0208886256c505edfa355cd3a11b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:34:48 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:34:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:34:48 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:34:48 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:34:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:34:48 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:34:48 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:34:48 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:34:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:37:31 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:37:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:37:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:37:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:37:32 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:37:32 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:37:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fe2d69dd611298e3f105b6e2c91182b114a37f8ddbb38bdabbad8a9372701b`  
		Last Modified: Thu, 13 Aug 2026 19:37:44 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131804259c9fb5d88c27a4566302520b33c094cbdfcc10cf95a556fb39b74df5`  
		Last Modified: Thu, 13 Aug 2026 19:37:44 GMT  
		Size: 864.6 KB (864629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99402b78738af48510cd79ff6e71be37cd4ae2fc46c47d8488733439320258b5`  
		Last Modified: Thu, 13 Aug 2026 19:37:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af572930e8ea35378263a5934d6572537067a190877229dcd3d1d8378a973ec`  
		Last Modified: Thu, 13 Aug 2026 19:37:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a94b5d12453d529ede5d879748b87f0892142cb896d0a2e7c6342c2689a90a`  
		Last Modified: Thu, 13 Aug 2026 19:37:47 GMT  
		Size: 106.0 MB (106022830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66ff785fee5200d7d98b6aebdda90f7fc7d9c002b008d558d315a003fa28f24`  
		Last Modified: Thu, 13 Aug 2026 19:37:45 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae1819794f5813301d35005b6e7050e4009b4e315cfa139e86a83605f9d30ff`  
		Last Modified: Thu, 13 Aug 2026 19:37:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b4be72af63ed0ad810258057f6f05d9adc36b132643b008424b951d75081cc`  
		Last Modified: Thu, 13 Aug 2026 19:37:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad2cdb6c154151814fa2b5f29ad6b99893b1b82c8ba6702b62fd3022a6b88a9`  
		Last Modified: Thu, 13 Aug 2026 19:37:46 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4ba16ada4f25ecb9f66792bd7ad8c464dfdf7bafec3caf403dda93fb846dc8`  
		Last Modified: Thu, 13 Aug 2026 19:37:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:79f91d7a789db42475a75c8d72a12267b42d4e54cebe3fa672b1c8d7bf74d6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 KB (43402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d448ff7645b256ce9406f5b029d54bd8e9f68fed4ea5bf9d9a64b1657bed3520`

```dockerfile
```

-	Layers:
	-	`sha256:2b307f048c0f75165befed785703952b0d828985a11273d5d725f313b546a2db`  
		Last Modified: Thu, 13 Aug 2026 19:37:44 GMT  
		Size: 43.4 KB (43402 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:65901a5057e0a0410e79a5031a2951a7073aa13589114ffc7af26d42cce34c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104185259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f9ed43569e1f454c9416d19804098a21a4687ad0e7ed4bf3980012d995711f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:40:33 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:40:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:40:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:40:36 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:40:36 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:40:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:40:36 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:40:36 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:40:36 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:40:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:43:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:43:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:43:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:43:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:43:16 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:43:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:43:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a0b3cac2f7d0c6dc0e90d6bd34520d7e35f06051fc0adff8cda773109ab7d6`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c05814342415a73e46e6dbce5c204052be935cd3f3a1d8111ae2de72376736`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 864.6 KB (864639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad3d9fcd1a0b140fbdfab1131e5b5d09a9f53b60033223042bbf95e71729d38`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae562de50de18d493fb7338435be76e0ccd5190fa7b5f190ffcbd2f4998e9a3`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d0425ff69ce7f56dedc49acddb4ae4683af5c73931fc445c1126eacb4f84d3`  
		Last Modified: Thu, 13 Aug 2026 19:43:33 GMT  
		Size: 100.0 MB (100041672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586c6943a03cddf217128c9626dd343bdb151c853d74dcac2fb71b1d9484e12d`  
		Last Modified: Thu, 13 Aug 2026 19:43:30 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c9dd85ceef31ab23dc418e98d9f242ff91fccd2dcfe0c83c33e22b4eaa8e7f`  
		Last Modified: Thu, 13 Aug 2026 19:43:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1cacc4987531425cd6d26b1d56357637b14bc004d7b8f4c2a398886f258de7`  
		Last Modified: Thu, 13 Aug 2026 19:43:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85678032fa42564e46fcfa10ad1d4d84665aca707ad329fbc2747d2765f6eecf`  
		Last Modified: Thu, 13 Aug 2026 19:43:32 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d57afc81fe60cc149bd2c9bdef7bc9df3a8062030e7d512f26d5cc9c208e06`  
		Last Modified: Thu, 13 Aug 2026 19:43:32 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:766ae5f7a18e6c24b0539453e82e3267dd50adbbe346ddf66be7233c33d7ac00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.4 KB (640445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a750794aa7157ef80d19c830315fcf226fdcef35d9c56ac334fc03eee2cd0f06`

```dockerfile
```

-	Layers:
	-	`sha256:f7db0df77179fe1ffb7ae73d037d3d973b5aab8ce1f021231f7f924354e1e9a6`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43939aeee0a2e1e4e7a52e969afbf425aabc265e86b3cfa651e67a9a99e2e602`  
		Last Modified: Thu, 13 Aug 2026 19:43:29 GMT  
		Size: 43.6 KB (43617 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e4e0214c25ab28e2bfd6f199c1b816cb2880e51b6162abc6941b6ecd0727a916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111985649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ae33abddaf076ae1678d0ebb84a9c1b8231abede32079e68c03d56fa450276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:17:47 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:17:47 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:17:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:17:47 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:17:47 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:17:47 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:17:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:19:55 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:19:55 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:19:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:19:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:19:55 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:19:55 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:19:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b3d48393e727ffa8bd5b1329f9ae14212bdb7df139f110121396f4fc049960`  
		Last Modified: Thu, 13 Aug 2026 19:17:38 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdbfc7c18b382e5d66d06317633fae696a6809a2f0bba214a2390c7a7851d38`  
		Last Modified: Thu, 13 Aug 2026 19:17:38 GMT  
		Size: 852.3 KB (852278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48cce1bf183557afd2862ee2ff5877062184ad63381df67f0278e3dc9446b0a1`  
		Last Modified: Thu, 13 Aug 2026 19:20:10 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd2a8192a8c727c62bcac35b254590f2b0a987a209d4eb8a5850b740819c24`  
		Last Modified: Thu, 13 Aug 2026 19:20:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee96552280d9b6d6b0c3c909b43dbef4e16a30d14923f386f956433b1d69ff33`  
		Last Modified: Thu, 13 Aug 2026 19:20:13 GMT  
		Size: 106.9 MB (106934418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520768174842ef0707cabaee93e531d363cb520b3702a7796c1ce5260c9d4b18`  
		Last Modified: Thu, 13 Aug 2026 19:20:10 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b0fe29c525e854e86fa582a3e0f7b903ffd04f41ad8ecaca2b6cad1822fa61`  
		Last Modified: Thu, 13 Aug 2026 19:20:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0ac9847c49f553cd772923b9ab6a1020e37433a792b8414bde4e41572602f7`  
		Last Modified: Thu, 13 Aug 2026 19:20:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6adc66d063b3c8387b46529a4a12c9a96b61dd8b721e421f639ab264a7b700`  
		Last Modified: Thu, 13 Aug 2026 19:20:12 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfaeae8de776eca9b3c8adfdca844bef7a43d02c5e340fa7774c5ce992974e6`  
		Last Modified: Thu, 13 Aug 2026 19:20:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:bde0265b2c9f95a7a8e410457f27218397ea5c123cc9bf70198105d3264b2671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.5 KB (640489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8828d18eec76a66b9dc048fe91ed9cdc3c694f8234622c8039e14c6c05cf218`

```dockerfile
```

-	Layers:
	-	`sha256:3e8303b21313a03a76849bfac38c66eda3b2d7b64145544c2a65c44d2af8f77d`  
		Last Modified: Thu, 13 Aug 2026 19:20:10 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f253f85c5d070403ae75765951ba9c561551cd5e1285d73fdd028831c5a0fb5`  
		Last Modified: Thu, 13 Aug 2026 19:20:10 GMT  
		Size: 43.6 KB (43649 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:db066796c87f9f6da3e05fb2248f3984688f2a9610083e0523a726e5adf8e2fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120796121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9255df721a703a2b671a1dfebf6c121915961fa160ec780da7bbf04181a085da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:24:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:24:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:24:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:24:51 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:24:51 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:24:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:24:51 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:24:51 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:24:51 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:24:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:27:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:27:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:27:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:27:17 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:27:17 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:27:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe24e7e78789fbede3d1dc1a1f2d49bf7e1b274d50f146ba27fcd866ccf469c7`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237927c5ee432c465e261e3eb7d225a80fe2cac92245ac42818f224b3ff0f4a1`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 868.4 KB (868448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4303cdff7ace0fe5626e67b99a40de72b6c0474025881bfb314e3fbf367d89cb`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5b3f57f68821501286ec3fa7b5d58da45dbd8bf426ed9bd89de4f19c194a1b`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7bc4a9045d8d32545be27f303b9ae0338ec5b96bafbb38f8003f73169b44d6`  
		Last Modified: Thu, 13 Aug 2026 19:27:37 GMT  
		Size: 116.2 MB (116242589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f80e260cb437093bb40afd980ecd20fc1216fe28b518c6fd09db809cb77e2`  
		Last Modified: Thu, 13 Aug 2026 19:27:34 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d55d1e7cc00fc9a8ab7396cb4bc49977a22aecec55a2fed4ec28fb4b09d5ba`  
		Last Modified: Thu, 13 Aug 2026 19:27:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231be0b906f8c08da871dce62fa263ca43d86026f5fe5df2ec7c8281cf093aed`  
		Last Modified: Thu, 13 Aug 2026 19:27:35 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d123b64eab7ddd6f138108cde06327b22bffcb197f67ab320f9b6b16865f94e6`  
		Last Modified: Thu, 13 Aug 2026 19:27:36 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5229a71f522a460e2388122526d01bb0d5ac47417ea0b1bcc730f8f6cc9f4213`  
		Last Modified: Thu, 13 Aug 2026 19:27:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:db65ecb5ab06184d0878e46ef4db32a695377a7e65180344b7f92648feb6d871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.9 KB (640853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746d3f73fe96dac8f403a0e31c014eae3d39c612366d77ad0c2e0b76bf0ec86f`

```dockerfile
```

-	Layers:
	-	`sha256:cd9ecd4b4342288ef518fe2d8797b8b15c7e1e2b88f9b60402665c1e77f452b3`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63241efaa2c311a459cb305c3720de8919431ed129d61aa3cc196d40418cf683`  
		Last Modified: Thu, 13 Aug 2026 19:27:33 GMT  
		Size: 43.4 KB (43410 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:a7d62c052d5317b2ce47d5be011b39ac04d0ff1c2ff8e1d515952580967b7942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116728421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0df13bd850c7893a3407fc97b9cf68a5c640a9507f8d98fa5606f853be9909`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:35:56 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:35:56 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:35:57 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:35:57 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:35:57 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:35:57 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:35:57 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:54:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:54:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:54:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:54:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:54:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:54:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:54:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:54:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:54:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:54:40 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:54:40 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:54:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c07c9315f2488e60e9af02554990246932bfc0065f8cb94fe6c7d266c4b616a`  
		Last Modified: Thu, 13 Aug 2026 19:19:38 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d66c108d587e724e431e0dde2baea20218dd497d6c5c970222054df1c893fa7`  
		Last Modified: Thu, 13 Aug 2026 19:19:38 GMT  
		Size: 857.5 KB (857482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08b3453dca160da13770f481d82e219cab91df872199d95414de1fc56e6af35`  
		Last Modified: Thu, 13 Aug 2026 19:40:38 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78620160bf9715d1715c074a773390eaf91992ada3b69f327a9fc55c08789e7d`  
		Last Modified: Thu, 13 Aug 2026 19:40:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4a3243281c61d392613876c9ea597ede653f70b2b1257fe83b5bb385cd3d2e`  
		Last Modified: Thu, 13 Aug 2026 19:55:17 GMT  
		Size: 112.0 MB (112041537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5796d8b4f1512741f8e50862b44a732c8756957e01831fd7611da3362d86f8`  
		Last Modified: Thu, 13 Aug 2026 19:55:14 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4149b50ec82226b599087b9ee7d929a86f18694e4e0d0898fff07b31db52d56d`  
		Last Modified: Thu, 13 Aug 2026 19:55:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ed3d023124552be602491383057156282305fdcb42127581bf6f5f8c4193c8`  
		Last Modified: Thu, 13 Aug 2026 19:55:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07cd454ec81c3cad95f1cce68c112bc0357af903b39fbce1e65306ceedeb708c`  
		Last Modified: Thu, 13 Aug 2026 19:55:17 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be8824b60a70968350a9b250bd6d3e144558282380cd87f27a798a85f852e08`  
		Last Modified: Thu, 13 Aug 2026 19:55:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:3ebdbcf2ea0c469b8f4185e25f6ac13a2971e1c85b8a360190a6ae58d4691a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 KB (638664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdd8d9c51d8ca90464766342fcb60c8afedc36ff08623d4f1f1f1e19324296f`

```dockerfile
```

-	Layers:
	-	`sha256:ab69f558b1174d5400e24eb4645fbea5a316426248d066010f0b875d3176be50`  
		Last Modified: Thu, 13 Aug 2026 19:55:14 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a4d218bb31e4f88aae628ed298588d5da6bfa8951ef0d69a50f876b5af4e2c`  
		Last Modified: Thu, 13 Aug 2026 19:55:14 GMT  
		Size: 43.5 KB (43497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:4d0d566a64e2f8b4a456a40dd8cd8e0d98b11e17d864baf81b1ecd79cdb911c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8033396d96ef18060d49a44fa0689a3fce8e0ac22195476e8f3b840f7144d080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 05:20:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 08 Jul 2026 05:20:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 08 Jul 2026 17:18:07 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 08 Jul 2026 17:18:07 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 17:18:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 17:18:08 GMT
ENV PG_MAJOR=14
# Wed, 08 Jul 2026 17:18:08 GMT
ENV PG_VERSION=14.23
# Wed, 08 Jul 2026 17:18:08 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Wed, 08 Jul 2026 17:18:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 09 Jul 2026 01:40:23 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 09 Jul 2026 01:40:24 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 09 Jul 2026 01:40:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 09 Jul 2026 01:40:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 09 Jul 2026 01:40:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 09 Jul 2026 01:40:25 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 09 Jul 2026 01:40:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 01:40:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 09 Jul 2026 01:40:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 01:40:25 GMT
STOPSIGNAL SIGINT
# Thu, 09 Jul 2026 01:40:25 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 09 Jul 2026 01:40:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8191b828233ba8639db62821d2db8c1562b57a5c6c23fabfeffec03560110036`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8628f2c88a8c9905b1c841adcb69903a2afa02c132eb5809c84813331e377c4`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 845.0 KB (844954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f5bc29c892c71d1eafaab8fe2228407fa7a12a4d0c64da16df261d3ba3ab5b`  
		Last Modified: Wed, 08 Jul 2026 18:15:33 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9399de55b23f15c0fc436909969965a917b0872c2355740484737ef2b1b9557d`  
		Last Modified: Wed, 08 Jul 2026 18:15:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9437022fac2b7860423ef246bc1388bebd16fb3a039068f0f0aedf2e92899f28`  
		Last Modified: Thu, 09 Jul 2026 01:43:35 GMT  
		Size: 111.5 MB (111543808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4030e5ac0392598cbda940451992d6e1ec88c26fad0eb351174465737ccb0f2a`  
		Last Modified: Thu, 09 Jul 2026 01:43:18 GMT  
		Size: 9.2 KB (9214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39274eb1132299a9d410d282ff3cbf5d3fd365e9f2a37ea07eb71868f9f7aca`  
		Last Modified: Thu, 09 Jul 2026 01:43:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b077271411a4f64d0f8c79f746afdb59292d9f01155d4d061401337b27fe354e`  
		Last Modified: Thu, 09 Jul 2026 01:43:18 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f81829edee1a1f8b9ba7445b1de88ce04af867f1db4994fd3148edff4083ec`  
		Last Modified: Thu, 09 Jul 2026 01:43:19 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3f535d655d8c1b3dc6da85ebd8bf23a46b5f84b252d99cb745a0e903024e89`  
		Last Modified: Thu, 09 Jul 2026 01:43:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b58149cda083564c1202f7d021284fd875506799339ba5ceec76999a96333cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b374c6e6dcdb2301349c6c25bb69902230cfda63153b11a9e6d8ac46143ada9`

```dockerfile
```

-	Layers:
	-	`sha256:58bc92c26dd30a777382b465128ee62109d5f00944d7fa381857b317cc494e7e`  
		Last Modified: Thu, 09 Jul 2026 01:43:18 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d140c514a687b7dd374b50a004eca61fedc5c55bf1168dd161ea49dc3cf42774`  
		Last Modified: Thu, 09 Jul 2026 01:43:18 GMT  
		Size: 43.5 KB (43497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:c2470ad9c904a9df3b0bda38b023f3b7d63ee6940cefaa2049793b80cf65faa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120625636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3957d923356b095800abee24e4cac1239b81ffea83d213d1db89c288e5f078cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:13:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:13:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:33:01 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:33:01 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:33:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:33:01 GMT
ENV PG_MAJOR=14
# Thu, 13 Aug 2026 19:33:01 GMT
ENV PG_VERSION=14.24
# Thu, 13 Aug 2026 19:33:01 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 13 Aug 2026 19:33:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:46:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:46:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:46:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:46:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:46:30 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:46:30 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:46:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663b4bf35e0842e76700a2a7ac2bbf289aa263eefe3cdc206601009053c51201`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfaabe62ae4593acf2c3f9343d461169bda57d8882e57eeddb7056f0aa11414`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 874.5 KB (874501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2ba957d5f4e73c60f69d1049ea8c1a0d95484da0b90d2921d1ad1cab0b427`  
		Last Modified: Thu, 13 Aug 2026 19:36:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f9bc397bbf3f7b4a576f4810c854dbf54f54844be5b7b7f463d1d0d412e06e`  
		Last Modified: Thu, 13 Aug 2026 19:36:26 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61e824863d8d3a8d0732b8900df5e0ecb8963e8b0bdf4d05bdcfba782e2c216`  
		Last Modified: Thu, 13 Aug 2026 19:46:57 GMT  
		Size: 116.0 MB (116026795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165c4f951b3c7f26f5bd73e0edc91e02ab518f516dffa734246fdf330ad23c67`  
		Last Modified: Thu, 13 Aug 2026 19:46:55 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3b074b872a15b0a597d21bd3348fc36cf94e41e4e9a9af5aecf508f3dc7cfa`  
		Last Modified: Thu, 13 Aug 2026 19:46:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38acdcdf64c63dc952de8bf149269aff4a454ad0d4140a7665a2da7d085e4ff`  
		Last Modified: Thu, 13 Aug 2026 19:46:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79909c60cf0c652b9e6fd6d78e77984a47f19ef515b8c963d9c300658556eff7`  
		Last Modified: Thu, 13 Aug 2026 19:46:56 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33f9a0d775cba1fef1cf2c5934d18e129d434228f9aafcee5e4e8a8fbdc674e`  
		Last Modified: Thu, 13 Aug 2026 19:46:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:9c14c0685b47f98f369ed363eecf2a564552173061a632db4127b241c09668ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6a8507d9ee70c03ca092f244e9e44969d64c19cb2a79ac64472406b9d7b61e`

```dockerfile
```

-	Layers:
	-	`sha256:80f642fbcb942f4c270b178f96b9c49a1055544e8039cb84bf5e7d34b792fc94`  
		Last Modified: Thu, 13 Aug 2026 19:46:55 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1558f2ec33ba8f959ec99d0693e0cd3c85e9c4454f81970a1c9ebb26f2b9a7f9`  
		Last Modified: Thu, 13 Aug 2026 19:46:55 GMT  
		Size: 43.4 KB (43449 bytes)  
		MIME: application/vnd.in-toto+json
