## `postgres:14-alpine3.24`

```console
$ docker pull postgres@sha256:052ae2fd087a14b1c39b3841dbc47ce6e6c48389ce843eae85c21fcf8ee45d74
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

### `postgres:14-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:33aaef7032af664d3570377b9f73877a55caca56661da7297516287f238b6354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114822375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9ced5a992d84a7585a00c34746fc25b02c39652744bcaa4e8a3ae9744342029`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:58:57 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:00 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:59:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:59:00 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:59:00 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:00 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:59:00 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 20:59:00 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 20:59:00 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:01:24 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:01:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:01:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:01:24 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:01:24 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:01:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04f5e2c6c3d5ec6d527c3ab4635adefb9a32ac825679a82936fcaf098975972`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caffe82336573bb535b23f8781c1ba2bf6b1b3eb0ca142b0f772900ce17e0470`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 900.0 KB (900011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d00c51ee6c8bf4da64f571b52f4fb6ac5763741dee8039146c8828cbb325063`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42356ca9b8c9a8faface8b8eb5c409e2b592e4ac553cd371733b33df461340d`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438dde9b9d98cfd93c5e61986211aae24dbc219f84564a7c1699178aa3162831`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 110.1 MB (110051608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f156c3dd11ec9dbaed4ea5ee31101956e3c166f2edc37ea83834672f88be498`  
		Last Modified: Thu, 12 Nov 2026 21:01:43 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5ff443e0cdbda6d60309390b0ad3a3be45620f4035184f56a788fe51f2419e`  
		Last Modified: Thu, 12 Nov 2026 21:01:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393750220153d57c1f13d451412cca27ebc6cae37130d7ee06903cdbd16ebba`  
		Last Modified: Thu, 12 Nov 2026 21:01:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4171819835d0a0fa7d55abf0fe3ff6fa0f5c5c7ccaa53f1e0be9aeba2b5045f`  
		Last Modified: Thu, 12 Nov 2026 21:01:44 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6c6afa59bd50c200ecdb378b73076481f38f6253e58afae65bdb01c5da3381`  
		Last Modified: Thu, 12 Nov 2026 21:01:44 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:81cb9ab4fd1e7bb02144f5c69fe56156a45f7ec1ee2d872bbc7d22730f3b85b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.1 KB (642107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e5a47b95e5b5d614e0e3fa152f78183ba128a76487192c518d9c037537ad707`

```dockerfile
```

-	Layers:
	-	`sha256:3f5fbb2da5f8cbdd65e25071842482e1227c9484272660bd6dcdefc0daf8b8ef`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 598.0 KB (598036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd414bbda6e732d2a3558180c9f77a6d72d33811e198d91cd6591216f51057c5`  
		Last Modified: Thu, 12 Nov 2026 21:01:41 GMT  
		Size: 44.1 KB (44071 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:b9ede5988e16c211f6900b39ab84de3f8efb65bbd1852881096328fc1b8b621a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111112549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ccbb55f8d1e4a2078c9bf41ae5b4d6a8259d2fcd10f345d1428d2946bf7a1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:59:56 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:59:56 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 20:59:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:13:09 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:13:09 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:13:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:13:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:13:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:13:10 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:13:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:13:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:13:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:13:10 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:13:10 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:13:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0e05e600cf9964816af5f760084e3e2fbd21939af970f860cab2ce87eb68e5`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c314a30af802b06c490da8bbcaba843ca877e496f89d3aa714eda5e31cec09`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 864.5 KB (864506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4122f7ee7871f094876ccce10cffe1ba3d8d6274a9e99e9ee9dce386237ff388`  
		Last Modified: Thu, 12 Nov 2026 21:03:13 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d7f71620f8c3747ae50a92153dad0cf105bd35a4bbcf4f460336d83e0c51b1`  
		Last Modified: Thu, 12 Nov 2026 21:03:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2dd083c32968a44509fbe8160e3055f2fa671530529e9a40b0a463ee439cee`  
		Last Modified: Thu, 12 Nov 2026 21:13:24 GMT  
		Size: 106.7 MB (106672559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dca01ebc8f9326e1a8c541f794b043cce924e231e5a6088db9134177b217697`  
		Last Modified: Thu, 12 Nov 2026 21:13:21 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca5393b6c381e0457a51a9bcbe1175d86a3b53a8d2ec115773baeb9b8c0f32c`  
		Last Modified: Thu, 12 Nov 2026 21:13:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505c6843b3ac637d9fe8b4b7945223adf0c224657c6b5c88855d9d823d59f043`  
		Last Modified: Thu, 12 Nov 2026 21:13:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b198c7a18604951b6e246b44b83565bb3215b5a97b49b0ced8a7db684cb990`  
		Last Modified: Thu, 12 Nov 2026 21:13:23 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45840f8d951be2fc1f8e9d051a788955d59d3cb806155bcc870f2da77388a125`  
		Last Modified: Thu, 12 Nov 2026 21:13:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:29a34e88547174faec914786443e91e22d3a763fc567a924380deaab99fbc03a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 KB (44039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44fcddbeed803b00720210dc28d2bec94a70b1cfdb73e424371f083e3b66a51`

```dockerfile
```

-	Layers:
	-	`sha256:5348da0725de94adf8cf69d700dcdbafbe2e28524f70acc7b4ef445f24e9684c`  
		Last Modified: Thu, 12 Nov 2026 21:13:21 GMT  
		Size: 44.0 KB (44039 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:817ca8a8cdd6be2876e8e954c851b5087de4e05775ef1c61d6738623b7b57110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104841467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c69dd9b5d695faa637672f8b09f7aa36a029a49dc7fcc63adca52cce770582d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:19:29 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:19:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:19:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:19:32 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:19:32 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:19:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:19:32 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:19:32 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 21:19:32 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 21:19:32 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:22:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:22:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:22:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:22:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:22:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:22:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:22:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:22:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:22:16 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:22:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:22:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6a417887cc825f462dca72044f257170508a77e4ed4bde5c558183eaf78938`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef929ea5382ae8d54190328945d9fa11737fd4cf5a0b48cd503e5c506b1e075e`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 864.5 KB (864520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d4c35b2f0302092a12ce5ba6a8ad204ed435befb2ac01ee53ac7de168433cf`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa3096eb6e0f8123611f8352639568428745675259c8fb1c6e13f064840c992`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea61291bb52bb7f5feb82d8de8e9f3159fec570513be5cabb70dfede2c8365d6`  
		Last Modified: Thu, 12 Nov 2026 21:22:32 GMT  
		Size: 100.7 MB (100692131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b8a148ac878b24f591ef49377e8e9db3d2f6448d1651e820b0a3f4b8b24fe7`  
		Last Modified: Thu, 12 Nov 2026 21:22:30 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0741d1e838c74762b9aa8b4ceb2474e1214f9d22672d37387565956e50c97c`  
		Last Modified: Thu, 12 Nov 2026 21:22:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c021b8e6a42c383a7878dd9f428929aa9c5d62f85704697bd21beaef95d68dc7`  
		Last Modified: Thu, 12 Nov 2026 21:22:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f08724da98b9ed52b2d115e72cbb4c5797282383139d2b5b7a9d90d8499152`  
		Last Modified: Thu, 12 Nov 2026 21:22:31 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fcde9bb22a9e8901bf8edbc980d78ad679ef85b76d8e4025c091ab29d92f60`  
		Last Modified: Thu, 12 Nov 2026 21:22:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:a2c161aac39e95d734b3ae3f7b67ff18b2e60f8376b5c05d9a5c90983e09af9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27969cb59bd189605c13ff2cf8d3a5f07e0fede021912091f4f2cd108a5a825c`

```dockerfile
```

-	Layers:
	-	`sha256:074907d3b39489521a69b5164cbe80db8c17827d53f64134c5242bc700e52fa2`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 597.4 KB (597422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f785a844b6457eeb152f605acf8e4be19bef85347e93b0b3cddb5d3d31aa3b63`  
		Last Modified: Thu, 12 Nov 2026 21:22:29 GMT  
		Size: 44.3 KB (44254 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8b202606ad91714bc047712eb753710546ee0d02af57c574f60fd9c50910e458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112674700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a49b1efdd59bba14b89edd590a370b7662efd05b4227b092ba3e8426bfb75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:57:41 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:57:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:57:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:57:43 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:57:43 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:57:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:57:44 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:57:44 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 20:57:44 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 20:57:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:59:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:52 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:53 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:53 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2058957694526113a071e0ac1ad6953a45223df912b72c7756591f587dba1a6`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5336d9c2b3ae76e49471c24c4ca4de7372e31839841af1e631e7b6929b3191eb`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 852.0 KB (852033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535fdc66a4535973131c69877aac8aeb3ccb97f87518b83f75ce43b333a6070b`  
		Last Modified: Thu, 12 Nov 2026 21:00:11 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a306b0da435e9df9ec43cabc704f6ace17a39a34f63c46bba83d5d48986f4e9a`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae54731d65f04aef487e6d937bff8983eef1e9ed53b9c5923bd479a5addd94d`  
		Last Modified: Thu, 12 Nov 2026 21:00:15 GMT  
		Size: 107.6 MB (107614990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41109453d757c0b69cce5098988cb12d3d13e9ad68c6c347da25794b7bae3da1`  
		Last Modified: Thu, 12 Nov 2026 21:00:12 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19667c3f2b572564122eecaf14788d86042a455d820ffb7264528be6708792a6`  
		Last Modified: Thu, 12 Nov 2026 21:00:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81ac33d0fea0db7348d12ceb237a3e7e5095fc947242f1a675537cbff628500`  
		Last Modified: Thu, 12 Nov 2026 21:00:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bc2a22447c7133957a0d389c89a51c1d3d8a46dd692da4ba527f432bf96d8a`  
		Last Modified: Thu, 12 Nov 2026 21:00:14 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e6972742e5929bbc1e3979ce6669a5437a772b8527b81b993433e57c6314dc`  
		Last Modified: Thu, 12 Nov 2026 21:00:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:209041180c694b1aadabd0484758868fe613d147657eaaef44c57747fa766b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3b33e7b497757c1479ac621fa1af532f97c98f367e23c39c4d974958064ec7`

```dockerfile
```

-	Layers:
	-	`sha256:9ece7d8abff87164d6f79dbd61a3284b4314e52448e08ea35ec6f16d04c9051f`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 597.4 KB (597442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7e107666bebb0682dbf2fa07b2fafb2355b9b105fdaa8fe04f8a3d4840fa048`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 44.3 KB (44294 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:68a3e543c3d22038521de141f31a046e89b2503d8936b15239f54f987710c183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121489612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7192c992d54aae0b47d383a2e8b0e21657cf4186784016732ed51f2fc54c6b6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:04:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:04:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:04:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:04:31 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:04:31 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:04:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:04:31 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:04:31 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 21:04:31 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 21:04:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:07:08 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:07:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:07:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:07:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:07:08 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:07:08 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:07:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9bd8d5f564ab37162de6ae605ba5be0cec37f53b58bb2a110119a68b56378e`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80153a1bf6b5ad2f09cabc71d18f1a1e534ad0a8d43c1e4b74d801b38de28af`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 868.0 KB (868013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481ce5126c053ae00a0e84a780b21a50ed5255a59d39cb77615329dfc815a4a1`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6731e6bc27428d7f5d3522316a13228b5227361c4ed25443f1ed44550a7d7d`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b0167bfa05dcda6764277c4093b04c0e0585221a1a1b891e0de720cf4a300d`  
		Last Modified: Thu, 12 Nov 2026 21:07:29 GMT  
		Size: 116.9 MB (116924151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad705fc6d544fe0e83f8c294d9255de3821b79351e21f3d47fdf211463742086`  
		Last Modified: Thu, 12 Nov 2026 21:07:26 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c42408e1a28bddf5da20002adf749b77765b942a0eec55b69e62d21600f1e9`  
		Last Modified: Thu, 12 Nov 2026 21:07:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ddc20defe65414b6f9f180c664cd559f68fba6a09938ca7480753c54f87f8`  
		Last Modified: Thu, 12 Nov 2026 21:07:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238cf81fc9729992d6502f84a49d9965757baa1536c7cae3d40c36d3ca007c30`  
		Last Modified: Thu, 12 Nov 2026 21:07:28 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b8e55eef539679cfd6f7f4bb8f5cb32f751de42af541ea929d60cf5ce6e9b5`  
		Last Modified: Thu, 12 Nov 2026 21:07:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:18dd06be154151582f1e2deabf930a479805991be39078161d56d307d6ff7b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (642034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e790e5720a490c144eba5ae3dc0dec7e5edc5d11f0be9da72fd06e1f6ce83d`

```dockerfile
```

-	Layers:
	-	`sha256:b40edb08337eb46083b5ed6c2f90201c21a61b820312f56f899a7213f2a4f634`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 598.0 KB (598011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e664ce77b8c279f2efb1a5a7225fcb4365b4b57e1c5eff1e0fbd7c441fe329e`  
		Last Modified: Thu, 12 Nov 2026 21:07:25 GMT  
		Size: 44.0 KB (44023 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:f742ef24dc03b533590186106c453c075b1131a21d92871ed719f0229519613c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117243014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8793f0729132086587ca7db16bccc5c4aee275706a76604546622f556dbd37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:51:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 22:51:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:51:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 23:06:42 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 23:06:42 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 23:06:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_VERSION=14.24
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 05 Nov 2026 23:06:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 23:20:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 23:20:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 23:20:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 23:20:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 23:20:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 23:20:33 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 23:20:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:20:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 23:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 23:20:34 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 23:20:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 23:20:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e496cd08a2e2a5ae537ae63240d8fd4a0bc64591a1f331535c344b72250924`  
		Last Modified: Thu, 05 Nov 2026 22:56:19 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825cfb770c1e3c9e726e63c8f74363c76e3b3ea8aee1298b9804860d17ea3731`  
		Last Modified: Thu, 05 Nov 2026 22:56:19 GMT  
		Size: 857.2 KB (857193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d05a0a4eecb34d940db1ef7627c66ac4fe58438962cf107026e70e68b944dd`  
		Last Modified: Thu, 05 Nov 2026 23:11:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3740b6f37b9312c7c6b56243dd2c45dbd2305ad6d33e7a6a1dca72b550515353`  
		Last Modified: Thu, 05 Nov 2026 23:11:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a462b9e34c43b3baf02f1cf5f50357c442c33dc30031f4724f09a1efc025e`  
		Last Modified: Thu, 05 Nov 2026 23:21:17 GMT  
		Size: 112.5 MB (112546812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a094bfaad3607ff0ba60fb622da478df6938bd2ede1d0c93ab89895fcda28602`  
		Last Modified: Thu, 05 Nov 2026 23:21:14 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03b4e2f47795d7e381e7cd2f90bcb154cac116ad1ddd3e0029ba2806f46c530`  
		Last Modified: Thu, 05 Nov 2026 23:21:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945574be3d51e5fd0394da970cf049c1a4c160914350214de8a6366cfc86072b`  
		Last Modified: Thu, 05 Nov 2026 23:21:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9dd197010d81aa9bf269d0357b280317c5541a7e1f0cf1db96cdbdabedba79b`  
		Last Modified: Thu, 05 Nov 2026 23:21:15 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae41ddbb6486da0d8b58cecce06acd5b0bb87930fa359f822dffe679269d0fbc`  
		Last Modified: Thu, 05 Nov 2026 23:21:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:06a32f04bd82c963e1124928de0b54adfa23f42856f1328d2c1c865a4e033283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 KB (639894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a5dd3d981452d4202c98b349fa1adaaaa150e56c4644fa8beabfbd2bf66e93`

```dockerfile
```

-	Layers:
	-	`sha256:8d8fef4fbcb529a8f217822eb28b89b4c97e8e202459afac7acedbf756d182e9`  
		Last Modified: Thu, 05 Nov 2026 23:21:14 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ff1eb391707892b9c42453724d672a13e1dcbbad57a42c3602e13108e033082`  
		Last Modified: Thu, 05 Nov 2026 23:21:13 GMT  
		Size: 44.1 KB (44131 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:ae3cf46ab70e59855bfb79692f86c71cd0320d5092a4196e400b4baacc2e86f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116570271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa248f716f534e0c3928a8d177f089173d545984b17ad70aeaeb1833ea8d5cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 07:20:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 11 Nov 2026 07:20:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 07:20:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 14:32:10 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 11 Nov 2026 14:32:10 GMT
ENV LANG=en_US.utf8
# Wed, 11 Nov 2026 14:32:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 14:32:11 GMT
ENV PG_MAJOR=14
# Wed, 11 Nov 2026 14:32:11 GMT
ENV PG_VERSION=14.24
# Wed, 11 Nov 2026 14:32:11 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Wed, 11 Nov 2026 14:32:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 11 Nov 2026 17:22:34 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 11 Nov 2026 17:22:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 11 Nov 2026 17:22:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 11 Nov 2026 17:22:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Nov 2026 17:22:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 11 Nov 2026 17:22:35 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Nov 2026 17:22:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 17:22:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 11 Nov 2026 17:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 17:22:35 GMT
STOPSIGNAL SIGINT
# Wed, 11 Nov 2026 17:22:35 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 11 Nov 2026 17:22:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcec225f9c6589fa4358b837a951805829583158dfc129cbb26d00a920374c7`  
		Last Modified: Wed, 11 Nov 2026 08:21:05 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7169bf5d1d35bd4075e2f5cc19c4701a4488f010484d2159b306a5d1cbad878`  
		Last Modified: Wed, 11 Nov 2026 08:21:05 GMT  
		Size: 844.7 KB (844704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98b04686a370509117390c29cc864a4bcaf3152da6ecc75278c743e3b1f1864`  
		Last Modified: Wed, 11 Nov 2026 15:29:47 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbd575fc641571a59b8c758eeb41a0ea628895a3cfbd2df27156a06dcb3df24`  
		Last Modified: Wed, 11 Nov 2026 15:29:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c399dc7247132a2083d1989828321a0498bb02a1e31ee39ee2559f68cf8e6c39`  
		Last Modified: Wed, 11 Nov 2026 17:26:02 GMT  
		Size: 112.1 MB (112127855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8611427b56a40e82addc202bce7b6dbb9007ac05e55b23b1bef3bfd6fdaba487`  
		Last Modified: Wed, 11 Nov 2026 17:25:45 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb75dc63213d4faadbfd0536e40f6a1158eefbe7b37b00590fbca6c13aeb5fce`  
		Last Modified: Wed, 11 Nov 2026 17:25:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3a68939ec607c70f193b35650e44e5052ba17c99a9920665202f34f71d27c7`  
		Last Modified: Wed, 11 Nov 2026 17:25:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d398164a64dc9973c8b0b4eb88113bca6625de164937840544ddc69ebdd10c0`  
		Last Modified: Wed, 11 Nov 2026 17:25:46 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0cf4e3659cb3a6147da27b485792a9494d3934dc1a0af98f62c73702111a1f`  
		Last Modified: Wed, 11 Nov 2026 17:25:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:37a98efcf7d2a523fcd2b116b6eb823ed1f93253ed42dbcb5a31a3b186117d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a4d2b48438204aed405e4bec2030def5d1b054c33c16bf2dd8580fdec809f3`

```dockerfile
```

-	Layers:
	-	`sha256:f36c1f118d7d5d2ea23461f0269142c55d2df293577dd7b9d091efd5846929b4`  
		Last Modified: Wed, 11 Nov 2026 17:25:45 GMT  
		Size: 597.4 KB (597415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac1204e47154aa8bc6e1010ae9452d287d7722eb6605e2ba5bdd808a340f7b4c`  
		Last Modified: Wed, 11 Nov 2026 17:25:45 GMT  
		Size: 44.1 KB (44131 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:420194f26965848b9a1c894e720fe0ac33272dce36aec79bfe5c08845108089e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121332626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5d9e590e831b52d9a01535286b632c4c9726b157a23ad97fd3d3e122c6a932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:53:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:53:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:58:26 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:58:26 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:58:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:58:27 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 18:58:27 GMT
ENV PG_VERSION=14.25
# Thu, 05 Nov 2026 18:58:27 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 05 Nov 2026 18:58:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:25:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:25:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:25:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:25:59 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:25:59 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:25:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2219a190ac28071e094b6d832308f7837ceaa55d3d1e584073b39b3df0d60c86`  
		Last Modified: Thu, 05 Nov 2026 18:58:03 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e380c2fc57c1a0b039cf2aabdf4ecfae10bfcdab091fbf8f62ed13bae27265e`  
		Last Modified: Thu, 05 Nov 2026 18:58:03 GMT  
		Size: 874.2 KB (874227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5069e1c15cbe3fe5267ecf76a0f36560b258e5f13126440202647bc0ae5046`  
		Last Modified: Thu, 05 Nov 2026 19:02:44 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d7e8c760165a012d0100d7c3c7c913e85f5c441887b89da23a1f9fa2fa8e6e`  
		Last Modified: Thu, 05 Nov 2026 19:02:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0d5616cfd9e732f2e8f7daed01aa873f554882ce374b0743c88bc86d50af7d`  
		Last Modified: Thu, 12 Nov 2026 21:26:28 GMT  
		Size: 116.7 MB (116720643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c438583266fda6260df6290a8dd8b779740043c5942bd0a8c770d522da37774e`  
		Last Modified: Thu, 12 Nov 2026 21:26:26 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8e5177b4559587cffd8f0c8acff135f64aaf95a23e1bebef6e42eef3f0695e`  
		Last Modified: Thu, 12 Nov 2026 21:26:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6586152f837ca5fbab51d3828d263d1b291cfde924ef0ccc0e5d2a17920ddaa0`  
		Last Modified: Thu, 12 Nov 2026 21:26:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28934f15c3afe57f2a6d74b2401ec4c00be103d641dda751a4b2a75db756dd48`  
		Last Modified: Thu, 12 Nov 2026 21:26:27 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debbbd076b41e7199766fb46778ea964f48583cf8446b887b80a40ae5b0d6cd1`  
		Last Modified: Thu, 12 Nov 2026 21:26:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:df4ee54463e4045095a97e5abb194b09b206905a006efdc3137e476162a7d418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f12f8f16508cc6901c67ea6c034d522e26fd4ce809d4e61ab74760311f56051`

```dockerfile
```

-	Layers:
	-	`sha256:02e25b1820b2695c4385c62217ea4cd5c0f060b431a55db44becfdef43efe244`  
		Last Modified: Thu, 12 Nov 2026 21:26:26 GMT  
		Size: 597.4 KB (597385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c793b7b4b41b489c6f6f162ab18a70597df56a9fd017e16406cb43c15c97c32`  
		Last Modified: Thu, 12 Nov 2026 21:26:26 GMT  
		Size: 44.1 KB (44071 bytes)  
		MIME: application/vnd.in-toto+json
