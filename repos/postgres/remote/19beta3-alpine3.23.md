## `postgres:19beta3-alpine3.23`

```console
$ docker pull postgres@sha256:ee9bf02c7ef7714b39cfb07493080c0892c67b909ea275ec3a1d8ee1cbb7149d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `postgres:19beta3-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:7bd7f8effffc39c9ea38ba34e82f69d842a89295adf3d3ae8f3e03fc0b77e5e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120848432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73960d8970ec6a4c11e2c734b66409ed7faa2c3d74afa56d21e9fe54e264f4f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:39 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:42 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:16:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:16:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:16:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:16:57 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:16:57 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:16:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:16:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:16:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:16:57 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:16:57 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:16:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bf4006c62c4ddc20aeb1d317d16ff8fb2817b993ce585febe7d7d97a8e85df`  
		Last Modified: Thu, 13 Aug 2026 19:17:12 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11df1bb65c78b359bb089ec9bd0da0113e8b5d0980ed7fbe99dc1affd36c1fc1`  
		Last Modified: Thu, 13 Aug 2026 19:17:13 GMT  
		Size: 900.3 KB (900266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840c8c6388d026f2376a5d42d74905a7117d561560753062941bd12ee2a29ea0`  
		Last Modified: Thu, 13 Aug 2026 19:17:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e4c95469e7c2e102b678d9032dfdc583dcb403c84da8002b457de029ffd144`  
		Last Modified: Thu, 13 Aug 2026 19:17:15 GMT  
		Size: 116.1 MB (116075071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f886472d9531c3e058e7f082ac3f3cf8b8ff00260522bcd3c4ffa96822c5b6`  
		Last Modified: Thu, 13 Aug 2026 19:17:14 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c1e75d7845a0a77fe729e4ff75052a8f5a79d6c3af33b6193f54f1060ed7a3`  
		Last Modified: Thu, 13 Aug 2026 19:17:14 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a3a67d0d3e24cb88e3730461270ed9fc53e68c9038d44d73ee59e72f530aa`  
		Last Modified: Thu, 13 Aug 2026 19:17:14 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f282bdda69a8a33f75a69a0d1a1fdc7eafde53880e0618f38bfaa8112234d01c`  
		Last Modified: Thu, 13 Aug 2026 19:17:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:baa3f6a520d15df065935df97193899be98262f6012ccfae992e3a5fc11aa714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39951e1c32b975c59d4a2a294debb837c6096b999cf0632d71dfe33afc7cc0e`

```dockerfile
```

-	Layers:
	-	`sha256:ade547849a94e8bcfe91da2c7076b989441229143082ed0b5e3beaf48dc07041`  
		Last Modified: Thu, 13 Aug 2026 19:17:13 GMT  
		Size: 615.8 KB (615768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0aed987f642c6e0daf1b57f4f00f08cb1d0370140ea7d021a87d8cf30066a1`  
		Last Modified: Thu, 13 Aug 2026 19:17:12 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:f3de7158e098a103f449bcd37fb958f6c45bc611fcbe8b127671f92e4106b42e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117046213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54cae80071636533824919bd2bada6bdd5ef11c7dac1479dbd15085e59fe3b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:17:45 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:49 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:17:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:17:49 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:17:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:17:50 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:17:50 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:17:50 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:17:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:20:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:20:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:20:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:20:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:20:46 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:20:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:20:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:20:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:20:46 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:20:46 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:20:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf174ccba11ce2078892bb4c59058ab56fe5ae42de02e1d00c8453ceb30c6ea2`  
		Last Modified: Thu, 13 Aug 2026 19:21:00 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7eeccc19d57dfce1aeac43111a183e4921b836c386216a70e3c221d2dac16b`  
		Last Modified: Thu, 13 Aug 2026 19:21:00 GMT  
		Size: 864.6 KB (864626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dae3abd8c5a7961502e00a4c0ea7aa17a2379495ec338fb0df13040d0ea2abe`  
		Last Modified: Thu, 13 Aug 2026 19:21:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac40d4831c0dcac06f0a72bb2ab09c6fce005cc5ee5b94364aac66c16134aaa`  
		Last Modified: Thu, 13 Aug 2026 19:21:03 GMT  
		Size: 112.6 MB (112600323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f478f60e40d70243c86e2179cd5e00084471bd2c6f8cc957cec98000c2fcb71`  
		Last Modified: Thu, 13 Aug 2026 19:21:01 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4f5c1b04a65e9af39163c22fe978795c8ec13bc6bdffb0e6117dbc1e0ee765`  
		Last Modified: Thu, 13 Aug 2026 19:21:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d32ec20e581d70806ced193eaa97d7610f1f8fa26b12fc64e97668263f68ab`  
		Last Modified: Thu, 13 Aug 2026 19:21:01 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a52abf2f1b3185971d4f66fcbefc35dc4fc546c445e214152e19521ac0b721`  
		Last Modified: Thu, 13 Aug 2026 19:21:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1dd881b25a1f0dec2b6c086865eecbd37a2588b9831152cd8bce62b660a1fbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6349f6dee489faec184ce15f4efc8a7a6db0fb0f72f25882586f6725507e4cc9`

```dockerfile
```

-	Layers:
	-	`sha256:d06325b25300e475516d3846a1b109d244d49766b9b3a07334b77162b2c17faa`  
		Last Modified: Thu, 13 Aug 2026 19:21:00 GMT  
		Size: 39.4 KB (39441 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b65055d0fba4eeb8f5ab4d015ca47e6028220034bd6aa4452a6cb35650a8b660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110564749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:740a0769831ab3731c5dc9506494b6c7ac7762c831eba2d0ce21595a94cecb68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:23 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:27 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:27 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:27 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:27 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:59 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:59 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:59 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:59 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:59 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f75379c33d96394c82318eeacd72d1686e36f6fe8c63208373d32418089201`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3428f32fee857f7007372b9c418a941028f1278fabae828766b43ad1fa6c7f`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 864.6 KB (864646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a81801e9fb99e229f08bcd1c9428ef542dfbda925d599f11984d049848fe0a`  
		Last Modified: Thu, 13 Aug 2026 19:18:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60c04df2d991351f7f8751c1dbb5dcb4f056681c4f62a52a52e6bfc42d0ac44`  
		Last Modified: Thu, 13 Aug 2026 19:18:15 GMT  
		Size: 106.4 MB (106409573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd55776f20fb5ca3544ea6788a4e0d8d39693b6d94078028cd5da4bd06c263a`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2f3e129ff8e8bc10bf80713ecf71c11991986f09b3de04926b759f0c1e2846`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eba85da3013e5269dacf3967b096f8cbdc682a0ad250d25dfbeabae7ee72954`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048cb1ccb12577f94d4c078b1ff53b7bf4e2014fa64fdd8cfd7aec901720d7ff`  
		Last Modified: Thu, 13 Aug 2026 19:18:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1469cd1ed2d8027bf9cdb6373d855b50d8fdb1519e2a975e6f3d728c80ab778c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b59a9b7a44b9ba55abb486679fa68c8cc50fdd0c9f21de5461972c8f364b4dd`

```dockerfile
```

-	Layers:
	-	`sha256:32feed437891c06c44ed8aa490ef54b1f8f7620ae5f7d355a6649f38afb20705`  
		Last Modified: Thu, 13 Aug 2026 19:18:13 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a7ec967a967ad510b5991362dc24fae146ef8709bac0189c088b0f46b909013`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 39.7 KB (39656 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e10851e320c5799ff9d79351ada9464fa3a0ef41b57fd23480f7b7546af8288b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118598865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51916bd4317cdcdaa57f122245977ba7bc6540f574dfa3feb8197b795ac7b972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:39 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:39 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:39 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:39 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:39 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:39 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:07 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:07 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:07 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:07 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517fadc0a75474b1a8521be3c82fa2819e623c01044e4e77114c7d2689276bba`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9406b852f633c8ccddaf3d196bc556f3e74942cab18871b622c8969ea2da3ce8`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 852.3 KB (852278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d66a50b7469f5d88a66d8917e74a4e85e762dad3fb4dc1525bd9cd856be6529`  
		Last Modified: Thu, 13 Aug 2026 19:15:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6099efe51f4cfbb9224d5d80c85cc117f7dd7cf31df6601644168a9e2f839e5`  
		Last Modified: Thu, 13 Aug 2026 19:17:26 GMT  
		Size: 113.5 MB (113536052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d489f0be72de86263b657816b1414473c815a2b308943c828397d7befb0c874f`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 21.2 KB (21164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51238ee35c9d14e327a009eda088fff83dfc38cde333e7c80859483931d91ecd`  
		Last Modified: Thu, 13 Aug 2026 19:17:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7c4283921a187a5a2463873faec51147ba0e2e918a23ad1314c1bb57afb301`  
		Last Modified: Thu, 13 Aug 2026 19:17:24 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0513caa04792e7790b3d5bf71571ae0a165bbc263e1899d1bf0b8fcb9b8a65fd`  
		Last Modified: Thu, 13 Aug 2026 19:17:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d6f2b539d0e8d3a7625aae9d2f4d5b3889ce2b5364371f6fa3b5aafb9e2ca7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef930dd2c4f21cdf79881a2320ee477081a2b08cefd88e644fb8a846133c26c8`

```dockerfile
```

-	Layers:
	-	`sha256:d675a95fac1d837e62d15922a795a14a4b228ed99703ad90dbce8814425fd229`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 615.1 KB (615138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7de1d175bdab512e7712ad0a93c90c5e9a32c9fe130c1df53d2b0e29fba5193e`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 39.7 KB (39680 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:a28a5efced2a33d26536d6574b42d226b20793c6ddd7211ac5991bfa09d48307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127763168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e19e483d05f0eb7d87bdb7fa50e90305bfaadd2b29e867428a6dd5d30adebc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:47 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:47 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:47 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:47 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:47 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:46 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:46 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:46 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efbbe76cf65bd4aca1ca849854acccb9880cf6e8d0002a6e3f7c6a4474afffb`  
		Last Modified: Thu, 13 Aug 2026 19:18:04 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df953837937ee93317072f141bc6dd737c4b079b384b1962a2a08f202f5fe70`  
		Last Modified: Thu, 13 Aug 2026 19:18:04 GMT  
		Size: 868.5 KB (868450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62e5020247b473bdbbb119c6220f960aa27f780f60ddce762c60b0ec4b1253d`  
		Last Modified: Thu, 13 Aug 2026 19:18:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0b7ae7df49de0580b3bf142cb16ebef431b5da9baa681c6489555e682a33f5`  
		Last Modified: Thu, 13 Aug 2026 19:18:07 GMT  
		Size: 123.2 MB (123198058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df205b4809abb3daf62a0df5a198d8d1aaf2d9762792f54496a0c32939e8ceb`  
		Last Modified: Thu, 13 Aug 2026 19:18:05 GMT  
		Size: 21.2 KB (21162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db57c26c0b7ac5ea158d5a850d6c23b9feb7b8330387bf7ead38f1829edbf1be`  
		Last Modified: Thu, 13 Aug 2026 19:18:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97655a872427e662ca296a131310924bed064f7c67d63f0dfe13fee02a14abd4`  
		Last Modified: Thu, 13 Aug 2026 19:18:06 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482b60f71e693f9d620657edabea47b7f3780093cdbb61404b55b3e082b1f06`  
		Last Modified: Thu, 13 Aug 2026 19:18:07 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2fa2db62e31b4d87bb5391ddca18bcdc507a364db4bf5ea9043fb5defe40d3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b26f7d3fc000be24394d89ee1dee5f4ff5e6453c0371da7bbd4900005adb7bb`

```dockerfile
```

-	Layers:
	-	`sha256:ad5b3f9e0422487ae5de6c1c4b888ac41221af9b87476338e608bfc0e744e5b9`  
		Last Modified: Thu, 13 Aug 2026 19:18:04 GMT  
		Size: 615.8 KB (615758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21f1dd9052dcaeba62379a5083f16fc792716f6b9b1f2fbb944f4dd2614f1817`  
		Last Modified: Thu, 13 Aug 2026 19:18:04 GMT  
		Size: 39.5 KB (39493 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:799ade8eedfc8c9c56fe90f78e012ff20be6b1e66feabe02fa2d2dc9f806c45f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123876426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7090504b9a5e6ccb6a1d0a96334de196d57e1dd5099c20f5a122f44b336dd81`
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
# Thu, 13 Aug 2026 19:14:36 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:36 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:36 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:36 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:18:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:18:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:18:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:18:59 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:18:59 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:19:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:19:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:19:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:19:00 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:19:00 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:19:00 GMT
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
	-	`sha256:688862cef97fdc7cf3db3268f5144f70f6baf640ac26420e5a3b20b8f2fe0ff3`  
		Last Modified: Thu, 13 Aug 2026 19:19:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda8b8e6aabaaeae9fc0080df9d491992f1064097e31387cd8e24c8aea913fa1`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 119.2 MB (119177963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817c47ade70ee3e93e3e43bceed91fa35e2c4fd08b1fa193ddae2d7075866f10`  
		Last Modified: Thu, 13 Aug 2026 19:19:39 GMT  
		Size: 21.2 KB (21170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c51853aa5f13fc035528f2e00c78023ca96fa04d79d3e2d01b9791cc287350`  
		Last Modified: Thu, 13 Aug 2026 19:19:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c412576ef990c26c6e7f82ededd1bc3b8499c28718af95765f3e1bdc92afe9a`  
		Last Modified: Thu, 13 Aug 2026 19:19:39 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfd4cb4f4e731a8a031bb3b8d3ac0fb688a949b03db10da3eb1885c83c42614`  
		Last Modified: Thu, 13 Aug 2026 19:19:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:9418d3c9b112673a59e01b6dab27b92db63f88c5c916d6e62f733e14fe69d1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23e520a1008bbf535c8dbf6cc88caa1cad38e94934f462e839d9fb46c165d24`

```dockerfile
```

-	Layers:
	-	`sha256:3e80af84615dba22361e163c4af7b7331c83e3bd8f3eff25ab5b78abdd9131e8`  
		Last Modified: Thu, 13 Aug 2026 19:19:38 GMT  
		Size: 613.5 KB (613471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c5dc8f63556a9c451825cda5d340b90423c39a1f8da380b32db533d8efe0610`  
		Last Modified: Thu, 13 Aug 2026 19:19:37 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:b708c80a07deab9ef54957f82e88d770cfd53e59e589c5c232e533c90fc2e420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127406062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18d6a082117ca59323f00426657fdd5869081b54412dcdae3e7b30b20689041`
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
# Thu, 13 Aug 2026 19:13:05 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:13:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:13:05 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:13:05 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:13:05 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:13:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:18:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:18:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:18:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:18:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:18:15 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:18:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:18:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:18:15 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:18:15 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:18:15 GMT
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
	-	`sha256:631c5cbfc231342e0f879733db34c1c20786197342fe8754e6674af856a9f3d1`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dee7aaadac56c208a66aec568595eda56aed764ef86230a510c4dc6b05ab54a`  
		Last Modified: Thu, 13 Aug 2026 19:18:45 GMT  
		Size: 122.8 MB (122795636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d05dbf4f460682b0295ecfb4f69366a10779880160e24ba0ef6aa430eba656`  
		Last Modified: Thu, 13 Aug 2026 19:18:43 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c677ba75abd5f15e9750f64fc72a4e031f29640a31dcf7d02a25390b4d064cd5`  
		Last Modified: Thu, 13 Aug 2026 19:18:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f06a1b9cdd339fac7b0a15e2e42f04d5c465c14c7191f2756fcdc6723aaa807`  
		Last Modified: Thu, 13 Aug 2026 19:18:43 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507eb9803b50ac7f57bbe6e612be670f17e508a56b2ae026302c64af88978e15`  
		Last Modified: Thu, 13 Aug 2026 19:18:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1576ad810f0f39a193c726a5bea42ad9dd167f3db1d7b45446d04e017f1095bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76aaf6795e3d916981f8fbbbffccd89c02df93f2a3c15e6755aedbb35ae55d61`

```dockerfile
```

-	Layers:
	-	`sha256:ec702d2af96234a8b0e083a1cbd1428d87267bd4e134dc0c71274b8173b55dc5`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 615.1 KB (615117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2613dce496a474d615f27aabbd7651dd44955ebb560137d9c41bcb9276700a85`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json
