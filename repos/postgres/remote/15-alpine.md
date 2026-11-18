## `postgres:15-alpine`

```console
$ docker pull postgres@sha256:83b923ed7ae2f5a9d128da35c25a084df4e86875fbb59888659eb476e2621a33
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

### `postgres:15-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:36dd0a523ce9ab5d4be69d79c116bbfe3af83ed1f708233d491d2884ca7d8a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115406501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd85ce89ef213831bb1381f41e31c252e89b98676f33e2dcc1dcb273a2083a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:06 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:31:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:31:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:33:44 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:33:44 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:33:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:33:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:33:45 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:33:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:33:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:33:45 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:33:45 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:33:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d564254f88a9391cb6ecb43239268c3ab6ada4158470e9383d2adbe9506de`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b958ec33668a16df402da25a873657d17ec16d6642bd76ff3509983a8afe69b`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 901.1 KB (901104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aeb54d379d5517b44bedfa3b7f2b76fe63ecfd760de01c673eea9e6a66e6557`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13177e35627285f735eeb90f3a78f9b76cd10c5f55c2b04d6fbd8ef6a8483517`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c15c8e2258ddd79af3700b6b6c0badd4c4fd8fced5f9f79944148940e5f02b`  
		Last Modified: Wed, 18 Nov 2026 21:34:02 GMT  
		Size: 110.6 MB (110634498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eea17b157714ef8410f9d674a8088e00baabd8a485abeef0663cff229dc993`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20274f76558e445b0095f5cb56115492102c01e76b6ac5459a85437d71f4923a`  
		Last Modified: Wed, 18 Nov 2026 21:34:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e045eed8ccabb51f9b371f2ee2a868db247a10464067e359df6223a0fd645e1`  
		Last Modified: Wed, 18 Nov 2026 21:34:01 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e571357576e67b1305fa48e4aace7f62b118c9b42fd4508c359488d288c69090`  
		Last Modified: Wed, 18 Nov 2026 21:34:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:fb8f28f236cd6e9c11b87e04a28bf6cc0566398ea058c4d13fcfb126479c6c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.4 KB (640418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49b6b3aabbc74867a8db919c3f5dfb0fa6d43e48ecd38ec7a143ff799d542db`

```dockerfile
```

-	Layers:
	-	`sha256:f5ee26a460446e6c47d53a181b82ac262b09841a619ede7c1aa1e86768fb0230`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 598.0 KB (598036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9158be413255b1fef7b8bfdb5b042dd39adfb4de9a0feb5883d1481154c93661`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 42.4 KB (42382 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6367e57bd9fdbe7aa04502459f6e67856c06caed3a95d1f68ecc911e78a8721a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111692308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4317cbaa7350709c7fa36cf2d6a8f4365f46baf6a9176bfd71c976cfefd17e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:08:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:08:28 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:08:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:08:28 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:08:28 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:08:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:08:28 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 21:08:28 GMT
ENV PG_VERSION=15.20
# Thu, 12 Nov 2026 21:08:28 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Thu, 12 Nov 2026 21:08:28 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:11:24 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:11:24 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
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
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6121422df7c9c723ae1ce7cf72c7c3fa48a3f98d6f23dd54867153c693501e75`  
		Last Modified: Thu, 12 Nov 2026 21:11:36 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d8c5ac2f35f3803a6f053a5a0c9b8de22eb320eb69222fca29f4664b1b01b1`  
		Last Modified: Thu, 12 Nov 2026 21:11:36 GMT  
		Size: 864.5 KB (864507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aaa3ec62d311831d0516a7908967cb56b0299cebd2c172b868f2af3e959cf3f`  
		Last Modified: Thu, 12 Nov 2026 21:11:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fa8e3a0a76629dbdeb5e73f3c99eb2c7ec40d4facdb72f6e01632f3f6cda4f`  
		Last Modified: Thu, 12 Nov 2026 21:11:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60fc3e35393b594c8b11217e8caee42f320756e6c502200ab1109e76df14e92`  
		Last Modified: Thu, 12 Nov 2026 21:11:40 GMT  
		Size: 107.3 MB (107252063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d196be2092b6ee22b66add9ab3bbc3a0d7df81dd99a12a94f6fd1e21f73710f3`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f7bfd0d2b066eeef1f24f9f8872b84e31453e2ca7ff6eb702f74ef3ecfdf77`  
		Last Modified: Thu, 12 Nov 2026 21:11:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa5350ebbab0df61b5ab3687a9b9b705bc2fcaa9f7762f3d2312288580efba5`  
		Last Modified: Thu, 12 Nov 2026 21:11:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f269a31c0bc7bc8a2c889cfe98cc112b7b775d4c9d647ef37e1818f54c5b5764`  
		Last Modified: Thu, 12 Nov 2026 21:11:39 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124600899bf8ef36261586a7eb41312b0667e0a5957fdca4505f4bd7b0cdeabc`  
		Last Modified: Thu, 12 Nov 2026 21:11:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:440445a4ca300394402e4629993397eccf7175db4cef2f05d4a790fc64bf1ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 KB (44358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5eecd7bb1428cc12e0191daac86a8276b59bc0d23c8ed183211eda1b2069b85`

```dockerfile
```

-	Layers:
	-	`sha256:faad13d107b30f817e5021887fb521f6ebd628d8bd6e367e180e464bcc43f50f`  
		Last Modified: Thu, 12 Nov 2026 21:11:36 GMT  
		Size: 44.4 KB (44358 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:dcf5375f0d8c4910af750a5db66ed906a15360a0a822c5de5f42a61b0a73665e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105405070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054985351cbb3b9e23b3f58b7a88291395fbccbd232f00ad85edd17234eace89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:15:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:15:23 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:15:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:15:23 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:15:23 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:15:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:15:23 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 21:15:23 GMT
ENV PG_VERSION=15.20
# Thu, 12 Nov 2026 21:15:23 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Thu, 12 Nov 2026 21:15:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:18:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:18:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:18:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:18:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:18:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:18:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:18:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:18:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:18:13 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:18:13 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:18:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628fc1eb4db5786108fb38e47d71417bcbd777bf9c324f737abde6384cb2d3ed`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083831cf751f1d1bcd5b2ed130f1ee58fb3f4edac2ace5ab5c539813862c902e`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 864.5 KB (864517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae04864b8cec5945504c872120e010f7e19b9d39f27dae75c329488aa553d73`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c317828b238fd02c04c847d5deb76639ceed15eed776eccd1623547fd9f1906`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa0a8c1f4d18c2cd07ee06411071925d08b80a89363963b0566fc8fa4e43277`  
		Last Modified: Thu, 12 Nov 2026 21:18:30 GMT  
		Size: 101.3 MB (101255483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03639e2a0bf339a409dd7bd19d2d0dd2487d6b5770df5d61654dc20770599ab1`  
		Last Modified: Thu, 12 Nov 2026 21:18:27 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a053ff40f43dd24a7ca3c0345aa314a5f5a2d147445dd1b0e3136592510487`  
		Last Modified: Thu, 12 Nov 2026 21:18:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a4da365cb2fdd5a88dfa877b13ad2ce4c3bbc551851a488955f2605e1befb1`  
		Last Modified: Thu, 12 Nov 2026 21:18:27 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eceed8605dd39b3e78e90b1bd42566ce5511d5eb27b97645fb3b7a3faa706b`  
		Last Modified: Thu, 12 Nov 2026 21:18:28 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af93b67d4e9c3e7ab2a865086556d356f61a775d28414443bd46589bf6f74c83`  
		Last Modified: Thu, 12 Nov 2026 21:18:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:f7d7863826a021b92245a7e4743e18efd9f79afd300cccdcd280465a4d6bfb42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (641996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b039c0d9a5b2f9a95075464001f8cc73ead69a3e79e91da5a9f3d3b54b1802`

```dockerfile
```

-	Layers:
	-	`sha256:a0eb32c2e5c94547f58a01d37eb6b465054d00c6a8e9b3ae312155abb5b81a01`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 597.4 KB (597422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e75dd3d3075b6d06340e3716c1ee9c8c85d71fc0b046a87589cd40054d8b17e`  
		Last Modified: Thu, 12 Nov 2026 21:18:26 GMT  
		Size: 44.6 KB (44574 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ae822c9fd507afb0c5478cc0d513876dd1b2212c3230bbc9c9abc50d3718edce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113246284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa391219329d8cd651432a63eb98762750e209892c519570bbd677611ca5e2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:31:27 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:31:30 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:31:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:31:30 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:31:30 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:31:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:31:30 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:31:30 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:31:30 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:31:30 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:33:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:33:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:33:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:33:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:33:42 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:33:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:33:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:33:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:33:42 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:33:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:33:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0f5dd6975abc40ed3eb7c180730c83bcb9473566e10b426b618672a1f53d3c`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453fe678c4c60e1f41375a4f5aed2f722f11c225b1e4d7595756a499ac338a7c`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 852.8 KB (852819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e95773afce520ce8cceb39a7e36a26bb9972f5bad8e49aaff14e88c9315e58`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b8d7b711d1359c4bda3fc340af633171a9e196aa0a68c7bf1d443bb8715c33`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1e84083860aab44be6a27a277c787f9170e105ca8288a134ecb12c7782cdf9`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 108.2 MB (108185638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec77c5210c36ae33ed9ad1b1f2a2ee5c5bd413ef4892dc2098223d13155c39b`  
		Last Modified: Wed, 18 Nov 2026 21:33:58 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1de6787e4cdefe4866408f675ba1f4b93219602fce75ab5ac1c08a099b8258`  
		Last Modified: Wed, 18 Nov 2026 21:33:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00194fdac0b4cbac0d42d27019ee20ac332545c8162117530d848b75e25cccb0`  
		Last Modified: Wed, 18 Nov 2026 21:33:58 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74c49a4ec480d2b6c571a8034cbc0853a349b05a17c884606e538d8c1f54d6`  
		Last Modified: Wed, 18 Nov 2026 21:33:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:bae5817c4ef4fd1f4726c9c2cc5bece145c0f26762732d51d0f86e94c916f7d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 KB (640033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1940659e60096399e5e509d295d8e0d29de103fc1a6c6c798221f5f5c4452c`

```dockerfile
```

-	Layers:
	-	`sha256:979918acd015e2aaffff695adff84a4bbc66acb646df321dc84f268322163378`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 597.4 KB (597442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dac446bb0470c05b5fae824e9d670bb30903893c73bf2f2642c37026ae28a78`  
		Last Modified: Wed, 18 Nov 2026 21:33:56 GMT  
		Size: 42.6 KB (42591 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; 386

```console
$ docker pull postgres@sha256:ec697fb7b0877f509c4b1aa44f8d6e931cb897a76f2c23e3f67397b037cb7d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122111252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966b8d5d407b1d96c370f1c5e607dea8375320c7fe3ec9ce4d73faf50882bd6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:27:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:02 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:36:45 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:36:45 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:36:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:36:45 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:36:45 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:36:45 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:36:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:38:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:38:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:38:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:38:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:38:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:38:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:38:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:38:59 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:38:59 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:38:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72da9f33e8cc1ee0209f7f47a4897f502e0ff9f2f003baa3b9e060a97bffdc7`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6781cf33b7c270c64402830349b894e8d64b03375b012f4c82bdc7ff9f10a6f7`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 869.8 KB (869815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d4669abbe43a3527f5074032159b28dff74866262ff9b5750466dc818e2055`  
		Last Modified: Wed, 18 Nov 2026 21:39:13 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad527d79a2eb20de140d72a55c4880e02b95bbfb52bda7046d9b4df94a4607f`  
		Last Modified: Wed, 18 Nov 2026 21:39:14 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178dc3b26e391dd53806d55b19be253b4d76286e59bea814832df7c7a4729dff`  
		Last Modified: Wed, 18 Nov 2026 21:39:17 GMT  
		Size: 117.5 MB (117543849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29227f9e09f2e3c8c66edf66e00de8b85c58665c7add8a338f2f2bce3a42c64c`  
		Last Modified: Wed, 18 Nov 2026 21:39:14 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef7d669939cdb97703f735fedd5ca3302b27360e36fae44a5423b5bce3c587e`  
		Last Modified: Wed, 18 Nov 2026 21:39:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ffd00baac12640225b2f864fdc12505ead635beb0ac7684bc7409e32470271`  
		Last Modified: Wed, 18 Nov 2026 21:39:15 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b480ffe735b9c79070477597fe5db2777e19f7b221873a2cb42c80441edcbf1`  
		Last Modified: Wed, 18 Nov 2026 21:39:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:46b181e623eb3de5bf63ac701ffb2b283cec2ea2ab5d41100aea2ae0d9a20735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96387887e5cf2587dbf1bb7b9b53dd19a980f560029ec1df6b64034a8b93685d`

```dockerfile
```

-	Layers:
	-	`sha256:aa9f38c57b84d99a9a4856bad3f2e4524162e703842fa8ec0f02b9dcb4680ffd`  
		Last Modified: Wed, 18 Nov 2026 21:39:14 GMT  
		Size: 598.0 KB (598011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ec4d4da0b1854fc58ef1fa185e50239cabd57923ed1e3f070a91e44a90cc8ca`  
		Last Modified: Wed, 18 Nov 2026 21:39:14 GMT  
		Size: 42.3 KB (42336 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5f844700bb5be20867def6b9fa5aa9d18d72368306572018b8a828b7e050115d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118091924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44dd6a9a62502221544a9205bba75daf9fe38fcbbe85744be251a65045869435`
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
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_VERSION=15.20
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Thu, 05 Nov 2026 23:06:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:54:01 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:54:02 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:54:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:54:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:54:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:54:02 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:54:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:54:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:54:03 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:54:03 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:54:03 GMT
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
	-	`sha256:a1f7b9736b38c31373684dd0259f3a2b6729e23af36a7b54bd2bbf9ad55c9845`  
		Last Modified: Thu, 12 Nov 2026 21:55:08 GMT  
		Size: 113.4 MB (113395457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4995665b385b8cee3a3d2de62a96910e15b8a8720606193f7b42498a66e74e94`  
		Last Modified: Thu, 12 Nov 2026 21:55:05 GMT  
		Size: 9.5 KB (9497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdacb37e1eeb7034cd787ac86e53f97723242610a42a4940ff9f23f407822e2d`  
		Last Modified: Thu, 12 Nov 2026 21:55:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bffa35b0ed4f98af689c7abdf91e6fdb7c3f0fe58b4713c58d5c82cbf0b639`  
		Last Modified: Thu, 12 Nov 2026 21:55:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48cecd0f4f575d9a59f055ee53cdd23453e95d138996683c8abc84554246d953`  
		Last Modified: Thu, 12 Nov 2026 21:55:06 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30809da836072b171ad5423138dffa2ba03f324f78b7e9b53e914d93991ae8a8`  
		Last Modified: Thu, 12 Nov 2026 21:55:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:4f1415a1da9e8758e8df03419d99e8b18803042ff1ca44758ccc33e5e7c030ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 KB (640207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952c4ab47761c43da62f827d770747bdcfddfc0b3cf56089727ca25a46bfe36b`

```dockerfile
```

-	Layers:
	-	`sha256:50aa5bec8bb82cd31f7a864c4c713feb3770263151b1d7b087b052e0283d5958`  
		Last Modified: Thu, 12 Nov 2026 21:55:05 GMT  
		Size: 595.8 KB (595757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7827197f5e0602e9e4638886bdf9b59269a66aefa42ceadea6935ab8893599f`  
		Last Modified: Thu, 12 Nov 2026 21:55:05 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:d7875d65fdf4f5a17a86245ad6853587d45f53885708280a2074742a0081c13b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117420945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7117e9ba55489a09031b9f144a28b7023eb68be3d1ccf9c67ce23e4ac2009b`
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
ENV PG_MAJOR=15
# Wed, 11 Nov 2026 14:32:11 GMT
ENV PG_VERSION=15.20
# Wed, 11 Nov 2026 14:32:11 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 11 Nov 2026 14:32:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 15 Nov 2026 14:56:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 15 Nov 2026 14:56:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 15 Nov 2026 14:56:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 15 Nov 2026 14:56:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 15 Nov 2026 14:56:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sun, 15 Nov 2026 14:56:42 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 15 Nov 2026 14:56:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 15 Nov 2026 14:56:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 15 Nov 2026 14:56:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 15 Nov 2026 14:56:42 GMT
STOPSIGNAL SIGINT
# Sun, 15 Nov 2026 14:56:42 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 15 Nov 2026 14:56:42 GMT
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
	-	`sha256:07a0234b0c5589d90482984e19bda047a20c57b8d700902b79e6fd1e013c8209`  
		Last Modified: Sun, 15 Nov 2026 15:00:25 GMT  
		Size: 113.0 MB (112978271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04b7d04f3f99ca61c8cb14083cd20f4f30ddd8134173b85d6f41f11af7eb697`  
		Last Modified: Sun, 15 Nov 2026 15:00:09 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd21d3c36748b25a48ab1200a29d81efda2562261bf503b182f7bfa448ebd078`  
		Last Modified: Sun, 15 Nov 2026 15:00:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2599e33d6a9c727b175755c72577ae070bb64b99122a749612fbd396a9292cb5`  
		Last Modified: Sun, 15 Nov 2026 15:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318c191556425783d04e689d14ddd78f249435aa5bb02275b63384f66f08aba0`  
		Last Modified: Sun, 15 Nov 2026 15:00:10 GMT  
		Size: 6.1 KB (6115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86730fb0ece94b6739ba0d2ff58faa21764af54780cc6d0d2de71e6a21d9312b`  
		Last Modified: Sun, 15 Nov 2026 15:00:11 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:5f71ea0f79ecd501d2564b9f26a476d7c961cbc5c0498012e1cd6005320c70d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6d0386e6e168f704047f4608a6cc23501c5073a44018f8fbe724bf23ebe00c`

```dockerfile
```

-	Layers:
	-	`sha256:af284f96f0e3f46690ce99668e5d21f51a68b40b20a035cae70623e96efc510a`  
		Last Modified: Sun, 15 Nov 2026 15:00:08 GMT  
		Size: 597.4 KB (597415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88cb9ee70eae7e068b00e1771b2677c63bc7bde3bfb2432313a0dd58bb2020a6`  
		Last Modified: Sun, 15 Nov 2026 15:00:08 GMT  
		Size: 44.4 KB (44449 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:a90415d0a2e2952625a46e6e9c04ff156f00e2f73028e7e3890180cc6d755e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121910666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1639efddbf2fbf6874d488ff8f0d865328d58742e3fb29a473875a082efa5f1a`
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
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 18:58:27 GMT
ENV PG_VERSION=15.20
# Thu, 05 Nov 2026 18:58:27 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Thu, 05 Nov 2026 18:58:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:18:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:18:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:18:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:18:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:18:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:18:33 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:18:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:18:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:18:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:18:34 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:18:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:18:34 GMT
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
	-	`sha256:57b896513051bdb4227c69aa9bc9f8fe9995e95c9512edb4a98a0ca028299d3c`  
		Last Modified: Thu, 12 Nov 2026 21:19:19 GMT  
		Size: 117.3 MB (117298433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94832c001e75eb1d51097d04c63944432bf1cfd5adc32397264d8f9eedd8dec`  
		Last Modified: Thu, 12 Nov 2026 21:19:14 GMT  
		Size: 9.5 KB (9489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe413b4f861f09d3311eecb5741e1eee584e42fbc98fdd656d6bec0f0cf8db0`  
		Last Modified: Thu, 12 Nov 2026 21:19:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12b2cee9746879aca918560e9ca8d0f38c3dbcc2e30f9a28ed8222de2ca1f63`  
		Last Modified: Thu, 12 Nov 2026 21:19:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0549320eb332191746f8777dd516fb23c05affd68055af43b00b0765d9648c`  
		Last Modified: Thu, 12 Nov 2026 21:19:16 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edeb6d2e3d38a35c9dea5af9d8610540637d9270d27d86f6cc6709c2c2b7a851`  
		Last Modified: Thu, 12 Nov 2026 21:19:16 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:d2118a7effa4143298f01f038b1f4a70e2917cbe66da5e8b1249083f6ace883d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.8 KB (641775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07253c859c24c5b7945bfe15afff84061000e81e709751a7da6ae2137dc1b35a`

```dockerfile
```

-	Layers:
	-	`sha256:0c5fcdc7d6de0142fa3181f96dedfaca61e59627e8079f49c28a62413428c6fc`  
		Last Modified: Thu, 12 Nov 2026 21:19:14 GMT  
		Size: 597.4 KB (597385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18f5287a63a1842f126526f08d7ca4b805b1a84f32e422209e8df831ffe06d7`  
		Last Modified: Thu, 12 Nov 2026 21:19:14 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json
