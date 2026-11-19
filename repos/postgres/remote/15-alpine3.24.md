## `postgres:15-alpine3.24`

```console
$ docker pull postgres@sha256:e18480a22d6e48f4d816a6696769b1ec09ac73a824c5649e49c7d8b684913f3d
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

### `postgres:15-alpine3.24` - linux; amd64

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

### `postgres:15-alpine3.24` - unknown; unknown

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

### `postgres:15-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:3a8886526ce591386e73f3ecccc615ecbc1ea286a4807a479728af083cd6a2c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111692212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1761b63895ec01d3731bb7d3e5b1d25f4180d6abe5aa6f94ce49f58dfa8a5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:42:19 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:42:23 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:42:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:42:23 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:42:23 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:42:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:42:23 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:42:23 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:42:23 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:42:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:45:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:45:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:45:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:45:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:45:16 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:45:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:45:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:45:16 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:45:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:45:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1fb2a4f56ba731624553913a56e59e7a2329049c360b0c185bd5154de89487`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec86e608a92051fe0eee41fda39b8a37ad6300eae35c6627364c3e3a05172a7`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 865.4 KB (865398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867ea8f6a2c9a77f176a7bb409a1b51587b5d2d92633955a5315f05917b7929d`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f7b76a7506cef47e56ececa8561cd2e7e17b0956de654752e737921cefc058`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae05dd82f8d9a28d5039e1f7b0c4dea06d8eb94775aa843e1446fcfb4f0e5251`  
		Last Modified: Wed, 18 Nov 2026 21:45:31 GMT  
		Size: 107.3 MB (107251180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044c621480740f207ee42cce86764e7d07c63043632cc7fa9c8832fdca352d39`  
		Last Modified: Wed, 18 Nov 2026 21:45:28 GMT  
		Size: 9.5 KB (9489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688f1820a2767c10e70fff85d842c2436b8ff9050784fa4ff0f68daeb970dd72`  
		Last Modified: Wed, 18 Nov 2026 21:45:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6f9325e58b1b91dae692a7742536eb9097211b90f03a28aae5af18da561774`  
		Last Modified: Wed, 18 Nov 2026 21:45:29 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49728f64ce368ab80f7f5ecb7c7331a1b8f14c36db5b24ecb67a11be752cc8f7`  
		Last Modified: Wed, 18 Nov 2026 21:45:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:59a3f208769fb8ba2a7cc666ee589ae8b2132485b8f8bbe29463124a047aedbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 KB (42337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202f9b7a0af0d6d8dab12973f7f2cfef635625e73c4586b178e4fbd44777ed54`

```dockerfile
```

-	Layers:
	-	`sha256:d3486a2c56aa2c770e99cef694e1e186887af9ec4d6398a44c0f46faf7f3fec5`  
		Last Modified: Wed, 18 Nov 2026 21:45:27 GMT  
		Size: 42.3 KB (42337 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d2007c7860d1180488769ec23502739b8f17ead5a2a62895a08a30f655990835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105406329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f269c13a0195211f5da83f0e357f7ea5dd6f54bec40f53008b52e85e8744ecec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:46:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:46:05 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:46:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:49:13 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:49:13 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:49:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:49:13 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:49:13 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:49:13 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:49:13 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:51:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:51:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:51:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:51:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:51:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:51:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:51:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:51:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:51:58 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:51:58 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:51:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc61fdf6664a469b9046638dbd9bcbc696f65c58286588a00ccb2c7998ebd763`  
		Last Modified: Wed, 18 Nov 2026 21:49:04 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad3b7fff26d8024f3a43f09fee58d0761ecb0a0801f99cbf870da985fa0b1ee`  
		Last Modified: Wed, 18 Nov 2026 21:49:04 GMT  
		Size: 865.4 KB (865406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a1926c388dd6c29037b7acff0ef37f4d33339f932ecc9f164a77f4ab3d1886`  
		Last Modified: Wed, 18 Nov 2026 21:52:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18313e1c772b943d81d3f9b472b17c75dc7313c4047f71121c7d991a740430d`  
		Last Modified: Wed, 18 Nov 2026 21:52:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f465e9dca36147c92b9749fe450867e5218659c80ce846739edeac4a0798f53`  
		Last Modified: Wed, 18 Nov 2026 21:52:14 GMT  
		Size: 101.3 MB (101255960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868cd7830c27f0788e65a8f9b582aa50773f63a79ddaef93baf2f9b302478d7b`  
		Last Modified: Wed, 18 Nov 2026 21:52:11 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014a8d57b832886e2dc2815743893018af8eda754631d3b1b10aff0ba13b4356`  
		Last Modified: Wed, 18 Nov 2026 21:52:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1ef29e6c312faee54c591cd8fbfbe34dbe2d320754d844f5d18440ec58eb19`  
		Last Modified: Wed, 18 Nov 2026 21:52:13 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf4f9d45a73db567c6081348a61e884ae29dae7b6d2593c5f8131778d893071`  
		Last Modified: Wed, 18 Nov 2026 21:52:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:ccf913620ef64f811a69d53011d6b61e075f22ced9664f37959a5a1f70c2c48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 KB (639975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662a7e973de28f9cec79666bac9f734c2210d02d771f602467f28daa6e87287b`

```dockerfile
```

-	Layers:
	-	`sha256:8eb6a5a9131157928c1e808a3058d136ccc93ced2fb285a4c332b856221c3dfe`  
		Last Modified: Wed, 18 Nov 2026 21:52:11 GMT  
		Size: 597.4 KB (597422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ffcfddd35f159ddce0fe3de63f65cae2cbe5f655ca19742c4b3619af470bf69`  
		Last Modified: Wed, 18 Nov 2026 21:52:11 GMT  
		Size: 42.6 KB (42553 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm64 variant v8

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

### `postgres:15-alpine3.24` - unknown; unknown

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

### `postgres:15-alpine3.24` - linux; 386

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

### `postgres:15-alpine3.24` - unknown; unknown

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

### `postgres:15-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:e31aae1149b3aa49606ae289f05797fd8c85e37e9d6d9d58a4cadaf8cc3d9dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118092488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cdf98b27bd9df454fa04646e867376234165b3d2e743719b6e052e552de929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:57:39 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 21:57:39 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:57:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:57:40 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:57:40 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 21:57:40 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 21:57:40 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 22:10:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 22:10:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 22:10:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 22:10:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 22:10:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 22:10:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:10:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 22:10:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:10:59 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 22:10:59 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 22:10:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2440b9e7921eacc8bb45520cac21c5ea14a4e576497cd9e8ec76c71edc18dbff`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5f5e1c58ec6e5c7595372b790aedb97235afb3bf004c060e843cef1a1fbfa3`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 858.0 KB (857995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcf9196c0297f99cc54725ddc774550bf44cbfe82c2465eb6dae1d1f9538c73`  
		Last Modified: Wed, 18 Nov 2026 22:03:31 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30335aa2ab9e34e93643dd8cd918a7c23bdff042c87bb5da82f3692829b7acc1`  
		Last Modified: Wed, 18 Nov 2026 22:03:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e44387283245ae18cbc6ae840390cd91eb72ff6219d87c107c754f021f1e7b`  
		Last Modified: Wed, 18 Nov 2026 22:11:38 GMT  
		Size: 113.4 MB (113395332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d1579f8049aaa6c3b79b9a1885f5a861aa2e05caebf9adec21dc7491371cd8`  
		Last Modified: Wed, 18 Nov 2026 22:11:35 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ab3331737b1a322870c9f9f20774b6efece66687f624416d00c01f60d9c2ca`  
		Last Modified: Wed, 18 Nov 2026 22:11:35 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d3a72c51b945b5ef98ddd7f3c2e823e53f8fd98f47b943b1e30ac8750d2ffa`  
		Last Modified: Wed, 18 Nov 2026 22:11:35 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3dcbbf300d37162f31bf491ff0910ce1ef65fa8020e961e1d30a4d9100b88f2`  
		Last Modified: Wed, 18 Nov 2026 22:11:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:1942fbf8cf7f23639e2c5ad79b6ca89438575c990d0807eeba52602128df2b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.2 KB (638197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195861172257e54f443c0f2ccf62016e69d11baeace1f4e4ca4dc536e8f990e6`

```dockerfile
```

-	Layers:
	-	`sha256:f6cb3c032ca4161b0c6948100b8a8371a758f3abdc951fc8f6bebde5d90d35aa`  
		Last Modified: Wed, 18 Nov 2026 22:11:35 GMT  
		Size: 595.8 KB (595757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d267d37307d679efe96342d0b2491dc468b08767ba72e798e476850b3f683861`  
		Last Modified: Wed, 18 Nov 2026 22:11:35 GMT  
		Size: 42.4 KB (42440 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; riscv64

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

### `postgres:15-alpine3.24` - unknown; unknown

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

### `postgres:15-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:463b54a709d1d449334cd76013381c543d103f99aa92be255cdfc4234aadb7a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121911735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbdb9e35f7e6fd638832f8220fcd1579e535e652a282a383781586ba83df812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 23:12:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 23:12:21 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 23:12:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 23:12:24 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 18 Nov 2026 23:12:24 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 23:12:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 23:12:27 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 23:12:27 GMT
ENV PG_VERSION=15.20
# Wed, 18 Nov 2026 23:12:27 GMT
ENV PG_SHA256=30e65cbbb771a39b553ed2df7e65622e65647aed55dbc19bd0fe853ff0a08442
# Wed, 18 Nov 2026 23:12:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 23:17:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 23:21:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 23:21:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 23:21:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 23:21:22 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 23:21:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 23:21:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 23:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 23:21:24 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 23:21:24 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 23:21:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e72b30f84c030af9654568d6ee3653265568789facc232d8d580b58a57fd52`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6ca2482221a53315857c112c4689381b3511b6f71f611f39ad42e9106d21bd`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 875.3 KB (875341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d08ff744394e47dee3d5bc6993270e5bce31a52fd3c636fda1adc183ae039f`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0397f3ad1e95cab5e287b3c52bf7e5148feb62f9fa8904fb0fa2bb1b0d5449`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49c51f416c980e290814df21fbc7195c154eb3024f8e34da78b778bf9457fa6`  
		Last Modified: Wed, 18 Nov 2026 23:22:22 GMT  
		Size: 117.3 MB (117298481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fcbac0210f07064f6c2b1415997a024d6f2b20374f04a96351fd9eb671ce5c`  
		Last Modified: Wed, 18 Nov 2026 23:22:12 GMT  
		Size: 9.5 KB (9494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c923853dc914fd6c933db81cad7e7562d54d6576aada1944f192c6c3724378c4`  
		Last Modified: Wed, 18 Nov 2026 23:22:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb1cd9a9e1097d71407869a7ed20e246f935c51ff8be73b64e107cf4fc602af`  
		Last Modified: Wed, 18 Nov 2026 23:22:13 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b0bc9deff7d2ec57b44f0eb4799ecce9ed6b752aa2e3f67500994dd8ef9ab3`  
		Last Modified: Wed, 18 Nov 2026 23:22:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:0e0d68bf6fb09b85fdc7468f40db86b36869a54125a9e6447f237af5072b4901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 KB (639767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9972ea760d45dd35bb648a9a4de04de1dcc8bd497039883cbf477025f1366fac`

```dockerfile
```

-	Layers:
	-	`sha256:bbed9f898952531788db12e163103d1189702e2839e059fd6a6c65db06f328a5`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 597.4 KB (597385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66e6e977c7958a4c986dc5c55f326e6a428743e9c9eb658bc530accda147d196`  
		Last Modified: Wed, 18 Nov 2026 23:22:10 GMT  
		Size: 42.4 KB (42382 bytes)  
		MIME: application/vnd.in-toto+json
