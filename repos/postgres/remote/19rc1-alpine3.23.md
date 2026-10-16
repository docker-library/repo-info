## `postgres:19rc1-alpine3.23`

```console
$ docker pull postgres@sha256:23f54b487139b6fef7a7fc34cfdce91602363d9e46ae13c11f6afbcaaf47a56d
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

### `postgres:19rc1-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:f81800deecfe77a61ccd2bb5b53779a0e5fa6eeb035d2dbeaa32551f73a79ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123158369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b777517622a3771d96ca67df28f8c57e0193557c0e609ad08e7736be24b5f47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:51 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:26:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:25 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:25 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:25 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be237a462eb581f56f7015648be5d06ebb420d964b66838f9250d1d02231326d`  
		Last Modified: Fri, 16 Oct 2026 20:29:42 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3959ea82403728c043a49a6d2b6892d1d4992e8517e2d35e3fd7d601d1d8990`  
		Last Modified: Fri, 16 Oct 2026 20:29:42 GMT  
		Size: 901.4 KB (901425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390afec221cea9a25a2f78100fe5ccba5e927a74d9870a0823f2fe65c03788b8`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae3433a36b43a0330a2e97868abd70e0662677a5167d260df7c765bebddaf9f`  
		Last Modified: Fri, 16 Oct 2026 20:29:45 GMT  
		Size: 118.4 MB (118379729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483f5010d7433bde7b1273b31508033ec09a8ea535182d4bd003715cec6aed24`  
		Last Modified: Fri, 16 Oct 2026 20:29:42 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cf79cc95d81d2bd4b725868987cea97fe2815e1eba77bdd672cc5c60601b81`  
		Last Modified: Fri, 16 Oct 2026 20:29:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a071980bd6ca78677534b056fedd0ea7a41e38bf12b6f28e2d03e6fd79cfa75`  
		Last Modified: Fri, 16 Oct 2026 20:29:43 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb13a01391ef0cd20844e7c89d3451fc55c68035b74423b7ae105d367232f50`  
		Last Modified: Fri, 16 Oct 2026 20:29:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c4584a128bebf0ea79f65f42bd53277d4369a56507024078b9565f049a194f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b02b78e7a963a682c8598c13019681b8c005542ce8c9d3a3f17f97d81a4b97a`

```dockerfile
```

-	Layers:
	-	`sha256:2610e162b6dcd8484e7b09cad5d3eca67639035498191e9d32b0cbd44e9a3e3f`  
		Last Modified: Fri, 16 Oct 2026 20:29:42 GMT  
		Size: 615.8 KB (615760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1963c26143ac78582e55e71e32c20395b784c0591998f6fd9c12e501e95d6853`  
		Last Modified: Fri, 16 Oct 2026 20:29:42 GMT  
		Size: 39.5 KB (39505 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c86cf33ac58d925c18bdb7f18839ec231a27fdf88c1e4b5ad8f35a196f58124c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118980236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adafcf2b1b153ea66db2fbde60e5c42431acabfe17c2451212f145316535a616`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:26:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:56 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:56 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:56 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fba7eaa4491e1e931cbab7c2c94be2625e35fac02166ac4b54d69d0e6df078`  
		Last Modified: Fri, 16 Oct 2026 20:30:10 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0903c710150f7989b494a776b9915cf4783c9933f3e25ca0128aea9c4660c739`  
		Last Modified: Fri, 16 Oct 2026 20:30:10 GMT  
		Size: 865.0 KB (865045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390afec221cea9a25a2f78100fe5ccba5e927a74d9870a0823f2fe65c03788b8`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33015cd35963ec6c4bf36ce43897fc3263f08b181b0638ecca2ec955713e0c6`  
		Last Modified: Fri, 16 Oct 2026 20:30:12 GMT  
		Size: 114.5 MB (114531568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31e74d78f76f4c480ce82f2e6af9e60602aa4a6e38fa78c2b957d86f6081250`  
		Last Modified: Fri, 16 Oct 2026 20:30:10 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cc4653d51064b8b38bf93bdc0fd829e36c05806835dac9e4e8efd27d1f2bb3`  
		Last Modified: Fri, 16 Oct 2026 20:30:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f00fb83e0bddf2bcd690028d3755704a0565b639f76a2445171e321b20e56bc`  
		Last Modified: Fri, 16 Oct 2026 20:30:11 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4496a014a82f70bfbfe9f700b5a0c3aeb739ceeb5bb552788b955671e732bf4`  
		Last Modified: Fri, 16 Oct 2026 20:30:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:54f7547a884d5e45b5db953676ecde4c24f9ab8857e8ef6c7df5533a8c3eaf04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1d2b05de74e7c43b60f04dd66a9baabe21f06285ffe9dbe7845a5193ca4e3e`

```dockerfile
```

-	Layers:
	-	`sha256:eb10bf5e2bed05496073f3f50b7f3f3a20bd8370c811423c8c521d912256a22d`  
		Last Modified: Fri, 16 Oct 2026 20:30:10 GMT  
		Size: 39.4 KB (39425 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ae4c7b5f410b7816a9c6b4356fad0fa7a6f235c200836709162e136533b0b6d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112352483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2245e264ffa98a580a3f5763c09e4dd5fe505e031b673fe45af5d4dadd695b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:30:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:30:38 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:30:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:30:38 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:30:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:30:38 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:30:38 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:30:38 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:30:38 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:35:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:35:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:35:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:35:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:35:05 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:35:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:35:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:35:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:35:06 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:35:06 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:35:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71c483fb96834d69ff598f3dd522b5376e98e5b4cedec792e60f0810dbae4f8`  
		Last Modified: Fri, 16 Oct 2026 20:35:20 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889b1fa17d2439c7ae8f68262ba6192c09d52d1ad0141dff1c07fe42af3de4d`  
		Last Modified: Fri, 16 Oct 2026 20:35:20 GMT  
		Size: 865.1 KB (865055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63bdc6a889bc8d5729ecb404ffb940e648020d520cd7c90dc087720751665283`  
		Last Modified: Fri, 16 Oct 2026 20:35:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67162b409a508bee4bd1396256a537769ff6feea383bd7263c517fd76055ab86`  
		Last Modified: Fri, 16 Oct 2026 20:35:24 GMT  
		Size: 108.2 MB (108195817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735c21c6d3db726758b32745b3cdad8a0bc549d1a0ae08c05a70283223fe9cea`  
		Last Modified: Fri, 16 Oct 2026 20:35:21 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaac192556bf065464c0e0f7ce3feccafd4c043c83313ca72d61d3f20567cdb2`  
		Last Modified: Fri, 16 Oct 2026 20:35:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95dd99ef862d1ecdce8b31d2a51b61fde3874f3276762e2196a49388a7a93b57`  
		Last Modified: Fri, 16 Oct 2026 20:35:22 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073730dc7564eac08ebb5d48c40ceaa148b162e4601e6e20b857e21e8eef433d`  
		Last Modified: Fri, 16 Oct 2026 20:35:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:de54826498e9f4df9e1de35c8f7a53608fce572f2cc4fb6f0e34710830771526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524ad6387c7beb01b54cc5f5d472af27cdda2fb17173a82cf67111a67b958860`

```dockerfile
```

-	Layers:
	-	`sha256:8ed33d52be6887269a9fb03221cfccd1e39d77c7bf38964e8d81d2186cc8fe01`  
		Last Modified: Fri, 16 Oct 2026 20:35:20 GMT  
		Size: 615.1 KB (615122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5faff4f665b6726ac29db01312bc70c58c7c1007bc2c98ee1a191e6c29cf912`  
		Last Modified: Fri, 16 Oct 2026 20:35:20 GMT  
		Size: 39.6 KB (39640 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a8ad4b27768bf92b05e77a0d44d97a795d42ed50dead60631f5b1fbc8259fa33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121224220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e19895ff71293ad1445cb308e248ab0b0903759b1e63ceac945ec86ded062a7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:58 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:01 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:01 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:01 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:01 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:27:01 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:27:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:31 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:31 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:32 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:32 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:32 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:32 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c52b31a9cf4117e251f133eea82428c31099bec6a7ee08f1bc2394501a679cb`  
		Last Modified: Fri, 16 Oct 2026 20:29:48 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e973e0dede59e5d126fe9647895f1056b91f34d6363bb122ded3f6ebcf4bc4ae`  
		Last Modified: Fri, 16 Oct 2026 20:29:48 GMT  
		Size: 853.4 KB (853417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa40fbb2d036f82ed2981ada3f64245c7b52df5633bb5e586ad212031dc36d8`  
		Last Modified: Fri, 16 Oct 2026 20:29:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0996043b0f1436e18baad39bc8bee1d1c1cddb94217d0813413244fccf72bdc5`  
		Last Modified: Fri, 16 Oct 2026 20:29:51 GMT  
		Size: 116.2 MB (116156041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc832653bfb7be1bd284631ce249d10a655f9bfcd6fd4c7d03a23109ddd2354b`  
		Last Modified: Fri, 16 Oct 2026 20:29:49 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa63b317f1c5c19a4da17549260eaed3e081370ddc675959d58c66d5f7819701`  
		Last Modified: Fri, 16 Oct 2026 20:29:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48020042eeec2fc84a9d84020ce5c06351c8cc85da15ecd197a28ce0a6454803`  
		Last Modified: Fri, 16 Oct 2026 20:29:49 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11d8ebc450658eeb8a75227f88fec5bd18f701b55b61a357b4f89e8f12c667c`  
		Last Modified: Fri, 16 Oct 2026 20:29:51 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:8d6a0cc22dcc99fa918a9da0773890377e24cdc78f7e3290c77bc6d1baf1b135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b8cceb57e7a3560acc4e2845c581cca285f96d183145d2cb4f8d90109a6f5c`

```dockerfile
```

-	Layers:
	-	`sha256:3d86ca65d7c86849b3924fa08f07a239e3acde07d5c334203c1b8b9c34127cf3`  
		Last Modified: Fri, 16 Oct 2026 20:29:48 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1df0a07d4bd28a223cd98c0ad67029ee25cc9664e1fee39618b2bb73467cb01c`  
		Last Modified: Fri, 16 Oct 2026 20:29:48 GMT  
		Size: 39.7 KB (39664 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:f9f6f78f826faf132b72c5cb0f04c68d8c7788c1bdbf822a67968ea03b781007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129874710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab76ad635a167e1d672c732dd398d15ea3a3f6c55edabc2d27f7e0a28e4544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:31:16 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:31:19 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:31:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:31:19 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:31:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:31:20 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:31:20 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:31:20 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:31:20 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:34:01 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:34:02 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:34:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:34:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:34:02 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:34:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:34:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:34:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:34:02 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:34:02 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:34:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6108a0ff91ce09df29dbca554f98ac9d5f0b1e72ebf5813e2e9234f45da9cf9`  
		Last Modified: Fri, 16 Oct 2026 20:34:19 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400c571e3c495f01504d9f07205121bfd08020fb55b00deaf454ab806823ac69`  
		Last Modified: Fri, 16 Oct 2026 20:34:19 GMT  
		Size: 870.3 KB (870324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915de15975bbc735a8f9de8f43de10536bd8535b706d9ddded61d519738303ba`  
		Last Modified: Fri, 16 Oct 2026 20:34:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac05dae76f35e269d94cc5b0e63f91105fc119defdbc0b169a6a92043d02f33a`  
		Last Modified: Fri, 16 Oct 2026 20:34:22 GMT  
		Size: 125.3 MB (125300571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a40ea275dd79dc109f6a0f1b7a9254b1749b592d86a4c1c084a3fa7e8e451d`  
		Last Modified: Fri, 16 Oct 2026 20:34:20 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f3b92eaf29c37cc97181029918081525b8fd96c3130f8e99aabb907c1afc08`  
		Last Modified: Fri, 16 Oct 2026 20:34:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027b358a1c91ff67d21be7c7420f5def697cd75a0f094c4ea114b23a4dab61b9`  
		Last Modified: Fri, 16 Oct 2026 20:34:20 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d63498eb44dfc545533d8f5b0ea0bc08300e8e115c861d9aeed99c2216f0fb0`  
		Last Modified: Fri, 16 Oct 2026 20:34:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e0e2996e04915b4d0d6d81958c5157ba732cb58586f8269d1bb90f6118f32a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c073da1ff1e7f5152e8b3cb79b9f96564d2037fd8f2aec1653ce36ed7edbac7f`

```dockerfile
```

-	Layers:
	-	`sha256:5c1205d0d4d09e73e9cab54d3962867d45207db939b3d308d3b09bb503b9de80`  
		Last Modified: Fri, 16 Oct 2026 20:34:19 GMT  
		Size: 615.8 KB (615750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f42723fed0fb2e4da1ce1f4633668cbd267933b06595a99ff894de3add60ebf`  
		Last Modified: Fri, 16 Oct 2026 20:34:19 GMT  
		Size: 39.5 KB (39477 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:58f3c1f24228fa87d5d7d1e7da7832bdac35e2f1e04737125732fd6ea1dffcf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126062788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a64552e96b1ef5a802ea98c403d46e6d0cfe684ee91bf8c4f230442fc237bdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:30:07 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:30:12 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:30:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:30:12 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:30:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:30:12 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:30:12 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:30:12 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:30:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:35:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:35:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:35:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:35:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:35:54 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:35:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:35:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:35:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:35:55 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:35:55 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:35:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb29491e02ad7b2eaf520310bfac251cacbb9deab887c837d7b886b3735013`  
		Last Modified: Fri, 16 Oct 2026 20:36:37 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17b243a4da4b0073ed57cae831a77cb3f10d37ad279015145aa21e1d205ebfe`  
		Last Modified: Fri, 16 Oct 2026 20:36:37 GMT  
		Size: 858.7 KB (858717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acb55f9c47e903f8b4821ed4516108d869560f8e7169fb58b8ba13ef88eb2d7`  
		Last Modified: Fri, 16 Oct 2026 20:36:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d1bda26f64134f60c3fb540ec1a9ff9d731e140ce92e1a268234a97c7991ec`  
		Last Modified: Fri, 16 Oct 2026 20:36:40 GMT  
		Size: 121.4 MB (121360585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e712274d8a783fe88649ab25d2180d9c8873823a26b9708cb838644d3cb42a`  
		Last Modified: Fri, 16 Oct 2026 20:36:38 GMT  
		Size: 21.2 KB (21202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4ff709c1369d8bc1834b83cd3b647a3f3df3880cfd91cd332ce706c32e6301`  
		Last Modified: Fri, 16 Oct 2026 20:36:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a675d1d4311fcdc0900002b5f168edb11f5e19f1b1a229c18332fe9590e6b6`  
		Last Modified: Fri, 16 Oct 2026 20:36:38 GMT  
		Size: 6.1 KB (6114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8d5aa7a0985a8e7907a421da0083477a01c953e5e94182b1fd750e81ad772a`  
		Last Modified: Fri, 16 Oct 2026 20:36:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:31837be74695eb103b85419aee0690dec2c542df15a0a0ca32032f90f9c277c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d7ffa8fbb81d14996763dcb2a232eaff138ac8becb3a69faaf9d757d7242e8`

```dockerfile
```

-	Layers:
	-	`sha256:4a6161e5241165629481e819d69ebcf976641af724d1bcf76b711feceba7727c`  
		Last Modified: Fri, 16 Oct 2026 20:36:37 GMT  
		Size: 613.5 KB (613463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97d687749c9eb9deb63f096ec53ea154448892fe23fe454a52a7111e68c818b2`  
		Last Modified: Fri, 16 Oct 2026 20:36:37 GMT  
		Size: 39.5 KB (39544 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:0764d6c28cb21f667c7154044f7c741ee89cd59e2dcfda2eebdf0eabbe5ba322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129466575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f81cd01f4f8974b4eddc740a79047c5ee3041bd09031b64d04197a29846481c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:25:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:25:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:25:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:25:37 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:28 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:28 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:28 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:28 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:28 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6cb9f6a3305ac720581dd7848fb793b756861b8232e8ccef88b8c5598eb33`  
		Last Modified: Fri, 16 Oct 2026 20:29:51 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddc9f67132e8808d01da1a997fa312cc8f7839f6a763efdc6b86553ad8bf7da`  
		Last Modified: Fri, 16 Oct 2026 20:29:52 GMT  
		Size: 875.7 KB (875724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f53e8f630b260658480c9b8eddc6485971f70e1aa0e2f8fa4ccba2fe40e05`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c8ce21825a92ef81d76fe8d18ada4cfb5ce1474e1af4f0ac48906c42320472`  
		Last Modified: Fri, 16 Oct 2026 20:29:54 GMT  
		Size: 124.8 MB (124848893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5eace799f77db785e252634cdea4ce39cd90b1ed52765b1a20d0ecad4c9a41`  
		Last Modified: Fri, 16 Oct 2026 20:29:53 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1903d26de7701027fbfa05b3c86bdf2fec93d3712f160ef741fc8aba4df63388`  
		Last Modified: Fri, 16 Oct 2026 20:29:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fdf2ec2e6800d33b706df57ab776c7453fa14469d0320f4e63af092ea2c260`  
		Last Modified: Fri, 16 Oct 2026 20:29:53 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d680a0e64ac862a0d2d8a3d6365339af5837c09a29056b5d2b055b020aad22`  
		Last Modified: Fri, 16 Oct 2026 20:29:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5049687dfacf83bcafb893700853c2fb7bc930276af37558d2e16d6173b1592d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39633c8a72cbe8496eb3135049689ebc483f274f2524f36241096edf6f6aedf0`

```dockerfile
```

-	Layers:
	-	`sha256:84356f344fe93cf4e57235b4ca1fd9b5489c35c21f41a5d0d629fead543340e8`  
		Last Modified: Fri, 16 Oct 2026 20:29:52 GMT  
		Size: 615.1 KB (615109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:857ca60aae06389642d92a6188507bd310843311a447acb5a822b077171f4bab`  
		Last Modified: Fri, 16 Oct 2026 20:29:51 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json
