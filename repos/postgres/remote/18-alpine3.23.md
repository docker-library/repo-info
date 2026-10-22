## `postgres:18-alpine3.23`

```console
$ docker pull postgres@sha256:dec395d8c09c45609d6deb5c2388a07882d64fa59b1d98c1895792e085f57888
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

### `postgres:18-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:dd504ba15d335bb17f83ed48a75899501be82726126a691f597fb91e1e505373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119574423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7f7cd6ec4a7e5364e98cfcafb0a5c07f6284ed222a0710ac730f4983da154e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:29 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:10:29 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:10:29 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:10:29 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:12:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:12:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:12:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:12:41 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:12:41 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:12:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:12:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:12:42 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:12:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:12:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128f126c794159ba4cd0655d7ecc3b2e93c0de26a24f997496632b8be16ff095`  
		Last Modified: Wed, 21 Oct 2026 21:12:58 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7feac65faa3b126c5ccdae6332b5a473e76ac205d3eee321a4e6906be5ba422`  
		Last Modified: Wed, 21 Oct 2026 21:12:58 GMT  
		Size: 900.0 KB (900001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa33325271ce107ea40802bfd81248ee604e0f59be56cd133e998afbd5349371`  
		Last Modified: Wed, 21 Oct 2026 21:12:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30dd53984343d08c36ed2b0220889b56372b36aa5edd6272ec205dd6af41c893`  
		Last Modified: Wed, 21 Oct 2026 21:13:00 GMT  
		Size: 114.8 MB (114795682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2730eae45ef1c76b86739732f904c4a314d12b290aaa193071a699d091171338`  
		Last Modified: Wed, 21 Oct 2026 21:12:59 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944aa133c745d75b47d396b2b633439bf77b70657e2fc215b31553e41d44e1d5`  
		Last Modified: Wed, 21 Oct 2026 21:12:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5900d5f12dc549caae7229651c54c19cebca2419d34932a158199074cb526d45`  
		Last Modified: Wed, 21 Oct 2026 21:12:59 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb64866783444a45e80bb147c2452ac6db8dc9832563e6443bf5892b16acdf2`  
		Last Modified: Wed, 21 Oct 2026 21:13:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:488c29bf1a21a6622e4d6e2453d27a45947bb879007600d902a9edfff70a6296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.5 KB (656508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b141907bd588dd82c33b2d176bfebc4e2a9325d9b9f666f6ca9fbbf6ad26653f`

```dockerfile
```

-	Layers:
	-	`sha256:0136910ef6d63e973806e7339a97bd16601f8ae2182e525d225ae831a5c92398`  
		Last Modified: Wed, 21 Oct 2026 21:12:58 GMT  
		Size: 616.4 KB (616382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1192d90b41cf1b26e8565089c9f6fed2d4b8ee5c46d8ed564fea22f65d50f8b`  
		Last Modified: Wed, 21 Oct 2026 21:12:58 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6f1fa47d4348711ecd1395600d512266deba4312d54d3faf34aeded45df57e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115743947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e85daa0c553171a96425c77da833e1a3ff34f63568fadc1147ea0d9cd563014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:21:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:21:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:21:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:21:47 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:21:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:21:47 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:21:47 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:21:47 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:21:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:24:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:24:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:24:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:24:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:24:42 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:24:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:24:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:24:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:24:42 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:24:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:24:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68ada04042ae820466cb37b6fa0c29228977264c2ab6b0512677e5b923146fb`  
		Last Modified: Wed, 21 Oct 2026 21:24:55 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6d3782aea9c86abfe8583401112124aff5cb1032462b7d8d2d5986fd52532c`  
		Last Modified: Wed, 21 Oct 2026 21:24:55 GMT  
		Size: 864.5 KB (864509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcd8ca92fcee8a8727733b0613dde655ba19f7fb3b7b1df7da623ee52e320cb`  
		Last Modified: Wed, 21 Oct 2026 21:24:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf54c7b4f35c092893ffd265ef4052dc0f0b16eb2d3a0be9d2f731a9cc55c632`  
		Last Modified: Wed, 21 Oct 2026 21:24:58 GMT  
		Size: 111.3 MB (111294737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6170adf01872bfe20881dce6399ab86ce6a18b7bcfd4c2b8fbb33f922eb2b0af`  
		Last Modified: Wed, 21 Oct 2026 21:24:56 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ccc8ab20f543a7fd039a22b8c95c22d5bceb1caa3a7c19fed60bb9d6e0e965`  
		Last Modified: Wed, 21 Oct 2026 21:24:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12b4c7ce22db1a29a34834ac6903414ab3643b75dc7781546b64592e1ac67d6`  
		Last Modified: Wed, 21 Oct 2026 21:24:56 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4ac37a1bda85df4e43ec4ea96fe64e9ffd931aa969d9864f4b035cfb0a1209`  
		Last Modified: Wed, 21 Oct 2026 21:24:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2a08764ac0502062a9eee9540df4e10d609f6a5fb7361802f47147cf767ed0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 KB (40061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255d976c5b7f43aa05746b932589390b277a34adeba27e476134e80c1d17ca46`

```dockerfile
```

-	Layers:
	-	`sha256:3923a8880d6c2183ef58dc245e7beb8f149cc85a29e527e70a2abef207391137`  
		Last Modified: Wed, 21 Oct 2026 21:24:55 GMT  
		Size: 40.1 KB (40061 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:24dedd203315bcc9fb406f7627576c85284c74261bc0b5f04a6c44561b60c5ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109297496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0cea0a9eb428b3a328a147d47136beeee898f3964582fbfc981cad9d23e2b49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:15:03 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:15:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:15:03 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:15:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:15:03 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:15:03 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:15:03 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:15:03 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:17:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:17:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:17:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:17:57 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:17:57 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:17:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:17:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:17:57 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:17:57 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:17:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9136b7a1f227d3d9cdd36853fbda33d7bdf3ca58fe62b6160b8258d6d070896f`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0114b836317e2de5d75915b2c29e24d9e7f68102cc01243d3cfa85092e65d14c`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 864.5 KB (864516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c842d355eb4c6e235b3c4517ae62eb8bf8f24c764ffe198856885e91a21d425d`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbd9036d90be9688301d184f7549b6a028a32ee5355477da8efd5431a8bf645`  
		Last Modified: Wed, 21 Oct 2026 21:18:13 GMT  
		Size: 105.1 MB (105139425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c46119bdfcdf39b2f6f157b2f00e780205c8121bae6e8a62a1bbc5a9415976`  
		Last Modified: Wed, 21 Oct 2026 21:18:12 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f66fa2d955a884d64bd4d05c5c1384859f55ac3e668c71144cdde4a65dab1e7`  
		Last Modified: Wed, 21 Oct 2026 21:18:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05393fe59d600e1c9a9f93139a3bc203e8cf364442d70495bf8585c9cddaa13c`  
		Last Modified: Wed, 21 Oct 2026 21:18:12 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320b75596acb84eec64c2185f5ab156019dbc8f431755a8389d6309bb7b274af`  
		Last Modified: Wed, 21 Oct 2026 21:18:13 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:caf99c0d1f0192b77f922f9d09c210cac49ca941b6fd9f2f9c03b7486bec28d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.0 KB (656036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b519f9374cad2c8ceb084438d69ad383c4106a7ea4125c5d741807f8382c6c`

```dockerfile
```

-	Layers:
	-	`sha256:454ee418a6eea96662ae8c29ae9945bcfad72649e9a47879c766ddccb4380511`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 615.8 KB (615760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9530d847bdd686194f753f9f5d3ad113a2081d146b8d8e4e077abde7965eb2f4`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 40.3 KB (40276 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:480557c3a36f683d4101abb700cd7f6f35f60105ecaa9e2f8252b2b743d92b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117397716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a44869b3dc9c65af3e68e3f0de423fabdef6a8d37ec4c142d4ac72aea4ccd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:23 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:26 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:26 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:10:26 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:10:26 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:10:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:12:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:12:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:12:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:12:54 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:12:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:12:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:12:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:12:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:12:54 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:12:54 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:12:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e601da79f2859c5c9ff325c413304d1f19a865637faebd08712b887bd5f1c9`  
		Last Modified: Wed, 21 Oct 2026 21:13:09 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3fc849e0a5494ae411cacd21a50c8d38ec496ec76a37ad8a3174c498466abe`  
		Last Modified: Wed, 21 Oct 2026 21:13:09 GMT  
		Size: 852.0 KB (852037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286acc0d7788c686874fb347e547ce47600f36ecde41f3f563dfe9351de0e8c0`  
		Last Modified: Wed, 21 Oct 2026 21:12:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76aa8560401a321383125a2b4426919a9563578eda68ae3961386b29d0f3040d`  
		Last Modified: Wed, 21 Oct 2026 21:13:12 GMT  
		Size: 112.3 MB (112329669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3859689cf352a04a95f0378af253da51776585592dbff70ff8c9bf337851a70`  
		Last Modified: Wed, 21 Oct 2026 21:13:11 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf3f8f5c6673a5cadfebc3a7cd3c5145c6aca36b4f250276ce22bcef714fb8e`  
		Last Modified: Wed, 21 Oct 2026 21:13:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37985b13de4c7f22ad20efa0e3161b508f08e0be648e74060ef4da18b3429eae`  
		Last Modified: Wed, 21 Oct 2026 21:13:11 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2993486b3852b12c460e8aa474e56ca7c4e43c934652f1b2e36ed3701a32cb`  
		Last Modified: Wed, 21 Oct 2026 21:13:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e2b56e7b255cf59a69846928750964c31c1dba2f1264306468b4da5365bc5ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc26b3166c3e9149618241cf591bc9d36198c7a94bc008ab4233b4841c87688a`

```dockerfile
```

-	Layers:
	-	`sha256:a5c3537901895167e291d7a6d3286e9c201f0f4042e88b63601c89244c448f4c`  
		Last Modified: Wed, 21 Oct 2026 21:13:09 GMT  
		Size: 615.8 KB (615776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3badb4da9533279da4159b3c2a1b86760fbc9414e0ef0a407670ed7de79ae5b6`  
		Last Modified: Wed, 21 Oct 2026 21:13:09 GMT  
		Size: 40.3 KB (40308 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:ffb645ad1b09d6f050eeb23bb98498e68c5fcbd7260aa05a55f7441a3ef10452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126380974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f362f8cf9a96a3d252804796254e2f9f4f69eb707713f2381e88443aa3a969a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:42 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:45 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:45 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:45 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:10:45 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:10:45 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:10:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:40 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:13:40 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:13:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:13:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:40 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:13:40 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:13:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2088b140d474cec9f51e366421ac9f1388b192a06548dab4a03d9a456572ff95`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7163911ce62f2c9bf067822631055d1e0d22c9dce4ebc46ae357c12c37f291f5`  
		Last Modified: Wed, 21 Oct 2026 21:13:58 GMT  
		Size: 868.0 KB (868008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcff9a4f1d12300986c7080f0fbc6531693863bf5363a0040d743bdb0e25bad5`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0584b273f0829087b116f5d1ce345ab0bcd258603fb9a636c36e32dcf2cdd63`  
		Last Modified: Wed, 21 Oct 2026 21:14:00 GMT  
		Size: 121.8 MB (121809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8a718319d33bcc52e415a1655f1b3379b86034ec66bdb0982a99e7ddc7eab3`  
		Last Modified: Wed, 21 Oct 2026 21:13:58 GMT  
		Size: 19.0 KB (19013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe001479ae78018b673eb273f976d5976563a8df4ed2a0b41fe6c8080c61745`  
		Last Modified: Wed, 21 Oct 2026 21:13:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9348a59a40dc150c8d5990840980bf1818e2de94c380a4126115281521ec3a3f`  
		Last Modified: Wed, 21 Oct 2026 21:13:59 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad7a319bd306703d7b74a370f5b6b41f231fa2591d54e21ca695466fd786901`  
		Last Modified: Wed, 21 Oct 2026 21:13:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:84b968e92283ae15bf1e040b242a444bf77cf982b2faa1df4cdb78d9e52ad543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.4 KB (656448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e6ad1411c1d407917995948630c3f08b91ea139cf3b7c12f6510648a9c503`

```dockerfile
```

-	Layers:
	-	`sha256:a2385dc1dbb98cdcfc7b07edf46fa2b4e7074506faf12e98b1b932715ee899a3`  
		Last Modified: Wed, 21 Oct 2026 21:13:58 GMT  
		Size: 616.4 KB (616362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c30a12faf7704b4929cf35bd76fe9d0a5cdbb63b0885afb4996f4532e01802`  
		Last Modified: Wed, 21 Oct 2026 21:13:58 GMT  
		Size: 40.1 KB (40086 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:2fb571277776b9d6c37c2c48f462c63db18485d5ff691ebfc64e809660835031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122536385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d25b04a5d3ce22b9d3151e493ab72a1d09fcaf9162bdcffe379ce88b9e5c8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 12:49:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 22 Oct 2026 12:49:46 GMT
ENV GOSU_VERSION=1.19
# Thu, 22 Oct 2026 12:49:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 22 Oct 2026 12:49:46 GMT
ENV LANG=en_US.utf8
# Thu, 22 Oct 2026 12:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_MAJOR=18
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_VERSION=18.6
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 22 Oct 2026 12:49:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:04:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:04:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:04:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:04:20 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 22 Oct 2026 13:04:20 GMT
VOLUME [/var/lib/postgresql]
# Thu, 22 Oct 2026 13:04:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:04:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:04:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:04:23 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:04:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:04:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29016c1b0c37476485c6723fd1c22e3f326493672403f562f01b5a78a8f816fa`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8b483870d9789ff989a9dcde8a3893be2f44050551868e03326dc77d67191e`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 857.2 KB (857209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df43335170c3bafbc380a5400c3d9cf0296f0eb7d90a8dc21beb5976cd018f7f`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f977bf983998c862eb7c2d11fda064c22a84c48ef76f7beccfd16ba9462aded9`  
		Last Modified: Thu, 22 Oct 2026 13:05:08 GMT  
		Size: 117.8 MB (117834274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a935f8af5da107e5a082dc96f80c77be88dcc94ffb328ec828c286e16e020cc5`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 19.0 KB (19013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77046c47b15b1efc1854d7e304050ce2aab8e51509286fa384e42b9f9d82735`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717a3e7cd6731e0797b05d84b2a935cc2cffc7f7a6150451961498d57263fc87`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6632fd02d4a714516cd788b07c760dbd68381f9d5a53f0cac264a5ef43d8c9be`  
		Last Modified: Thu, 22 Oct 2026 13:05:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6bc468effc9ba91f689a9ba026d0d78777cf386fa322b11ba034612ac8512cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.3 KB (654272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d557ce477b2d58e040ab892ef13dcb8c58a6ff4ba92a64b6bbc4154c94f7a3`

```dockerfile
```

-	Layers:
	-	`sha256:69cd8d4f002a98ea90b51fe87fbd6738f5915f0fe65d78d96773f0571393c2e0`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 614.1 KB (614097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3497c8f24c9def9e418a637f5d7ce84c44a1980cfb68c8df6768cec958d9c98e`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 40.2 KB (40175 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:9beba17f7130eeb81e6c06bb019ce8d11614c60c9b46b99c4f96ebcf6f5964ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122030130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f054e5ebb12a167f39f67a82116dd8ff976ed34f5787d118fbded768d9b6681`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 20:31:39 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 20:31:49 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 20:31:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 20 Sep 2026 20:31:49 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 20:31:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_MAJOR=18
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_VERSION=18.6
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Sun, 20 Sep 2026 20:31:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 23:20:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 23:20:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sun, 20 Sep 2026 23:20:57 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 23:20:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 23:20:57 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 23:20:57 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 23:20:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8a761f8a87c5c65a694024787ae03651c84bf52f0f42da827bee3487714311`  
		Last Modified: Sun, 20 Sep 2026 21:29:47 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb10f0f8fc86c1a789af0737c955d8428ed58f1d483b1ea7faef556bcd0f4bd7`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 846.3 KB (846294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7472805e2cf4ef16db4e5b0b13c2d045ac286c6e348ee8da3884fc799fe0cfc`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65115e3bf80d8870901a798300481b36f24acf5e2a4c96855ee1ec792c5b518`  
		Last Modified: Sun, 20 Sep 2026 23:24:22 GMT  
		Size: 117.6 MB (117580983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b04de44c71dc9c533c1c5d0c262175137bd3047e0f4ca04b7c2a5b9756868`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148c43a992ef350f8655257e4b8a0d8c2ca79e60e5ac0d10aa3b2d0d629bca45`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628fdfa4808f59e4d0702dba43188aec1f5d4b8bc21e5e6ebf7f2ef02eaafaad`  
		Last Modified: Sun, 20 Sep 2026 23:24:04 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8b0cf59775165f31015915d1bf54ffb3346d81000bc15cc81f65eb13e826af`  
		Last Modified: Sun, 20 Sep 2026 23:24:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:3cea3a0b6edcbed92ba621e3b91377d8bd7f597be828337e9a8afd15fd9dd581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf46d883eb6b57aac268e0068c9d1abec541026d8da57c4047ceca6c318519e3`

```dockerfile
```

-	Layers:
	-	`sha256:22da100a9b420c4a3d5a34398e6fe19a13fe1dc7b801ba2c7fb4dc8ae9e8474d`  
		Last Modified: Sun, 20 Sep 2026 23:24:04 GMT  
		Size: 615.8 KB (615755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4e1b781b279648ea9bea07f957ed679d2296402af77a13552e5ff04de404626`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:7d50a496efe66c6a2b346021358a99a356359f9ff2c3e067c056545c92fd0021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126165946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726ea8ca65b195d024cbf1081dbfa41413f03b81b410d20f2d694e8b009fbde6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:21:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:21:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:21:02 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:21:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:21:02 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 21:21:02 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 21:21:02 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 21:21:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:24:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:24:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:24:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:24:36 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 21:24:36 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 21:24:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:24:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:24:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:24:36 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:24:36 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:24:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f96cb5c318465ae52cf20c05d53161fc6cc8a41beacd5009c631ce246ee7fa`  
		Last Modified: Wed, 21 Oct 2026 21:25:01 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3593a52f4554a74416152bb8e930690b0ffaf9a68c77df337c0a20d02036e5`  
		Last Modified: Wed, 21 Oct 2026 21:25:01 GMT  
		Size: 874.2 KB (874214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb48dba2a0d8f24e13e218e6ce936451a1deea82bf9ce64d8e36785c8ca3c1`  
		Last Modified: Wed, 21 Oct 2026 21:25:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d07dd4d342d9ec24455871c91c01c6e18c022c3d3532efbf4d3f0d811f1e02`  
		Last Modified: Wed, 21 Oct 2026 21:25:03 GMT  
		Size: 121.5 MB (121548099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337c74c384a1561c4835ec0b3321ed4ac5c6eb53423b22f3bfaac4274372b575`  
		Last Modified: Wed, 21 Oct 2026 21:25:02 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50806b70343cf6810cf43fde9dadcbdc0f4ab20490b2366f970b439b7f993909`  
		Last Modified: Wed, 21 Oct 2026 21:25:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2197e70c5daea8dd9d8d37b0a2818f3f63adb440b49c38c3bfed765538c86c6d`  
		Last Modified: Wed, 21 Oct 2026 21:25:02 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547bc5ca65bda911929c914fb51f0b0343d98714af4140a32ee54de788eac00f`  
		Last Modified: Wed, 21 Oct 2026 21:25:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:86afaa08667b0fc167b5f7b60b6b6879c02d18719a8c082e3f57f939fe861d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ade41e640e0f070bd386fdbdcf218d811a98be77f19bd32aa2729ef4d7a93c7`

```dockerfile
```

-	Layers:
	-	`sha256:9e00514b53eceaa62a936909f8f0642845c07bfd97bee4b59acb6bb505675809`  
		Last Modified: Wed, 21 Oct 2026 21:25:01 GMT  
		Size: 615.7 KB (615731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57293b6500096bd9deee742379aaeddc25e1bb789c90da2d7d508ea92fb605c9`  
		Last Modified: Wed, 21 Oct 2026 21:25:01 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json
