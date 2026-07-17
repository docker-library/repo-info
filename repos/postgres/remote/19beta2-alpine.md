## `postgres:19beta2-alpine`

```console
$ docker pull postgres@sha256:bc62313e826eb44d5f608425b7665962b72820e686da017799e906604bfeb8a5
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

### `postgres:19beta2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:1d459435c6ac0832d1033d51c9a961735346387834222af14ca6fa38daf3c92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121283957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4b0000fd3100c9b60ccb9ff94e6352b9fea27921b0c33437195e416f376167`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:16 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:18 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:18 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:37 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:37 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:37 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:37 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:37 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe1e0480432a03fb12f11513d04bfb4d150defe7f04cb112bcc375130c6c280`  
		Last Modified: Thu, 16 Jul 2026 22:07:53 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3e983959883735d128c8ae2107e6d5f103464f69273deeff3127f0dda193bb`  
		Last Modified: Thu, 16 Jul 2026 22:07:54 GMT  
		Size: 900.2 KB (900249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374b08127f065ff4fa256c4b2564704158b4232047f72b282af590f562ee4b70`  
		Last Modified: Thu, 16 Jul 2026 22:05:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1fe63228c888a279a335c26a530f7a5a00dca2c73b1e5342d5382f2b1442733`  
		Last Modified: Thu, 16 Jul 2026 22:07:56 GMT  
		Size: 116.5 MB (116508795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb861cb18be062cb81ece26241c5c39f99200f916b7edab252df3249d85f3fb3`  
		Last Modified: Thu, 16 Jul 2026 22:07:53 GMT  
		Size: 21.0 KB (21015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42c6e739c8677684b4558f85d433d85f87bc1097949b2a122010d82d733a603`  
		Last Modified: Thu, 16 Jul 2026 22:07:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f6540b0b45a1d883a19f2381c40c2eee3d143052cfbaf893815d5e5eef62aa`  
		Last Modified: Thu, 16 Jul 2026 22:07:55 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5419671d2e1ac9920d7e6ffbb18e2bda8ec98b28f9d597494fb6f43133eaabef`  
		Last Modified: Thu, 16 Jul 2026 22:07:55 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:647689894c313496a97e2d0719eb3706bf6a344444c9b9e47c8c0e0f0b72e486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5a8d90f33660f94ba94e093be3f7dc06c8b89595515037e20d22898d945e7a`

```dockerfile
```

-	Layers:
	-	`sha256:aaa3ab69ae5608be6eba993cc294750b44a5430c76678168dee66611bd809d0b`  
		Last Modified: Thu, 16 Jul 2026 22:07:54 GMT  
		Size: 616.0 KB (616048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2c9c0449bd5eea55e2ffddd2413d19762f335a90cdb3c377f9ca78606ec05ba`  
		Last Modified: Thu, 16 Jul 2026 22:07:53 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:a146636649208f5c54e02e26d41f4a05cdc952a9130a9ec875618a7e40e269bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117478012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9fea6a48c43e72b28bb8a889e583b71c34a3d43bd53e430eeb13f08ef504a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:04:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:52 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:04:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:04:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:08:02 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:08:03 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:08:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:08:03 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:08:03 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:08:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:08:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:08:03 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:08:03 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:08:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61e9e97b88cf5549ec666a65ed97793583582bc5d94a1c8a08add9613a91f87`  
		Last Modified: Thu, 16 Jul 2026 22:08:16 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8187af28b56c41cc8bb31f903ae7160aff54c7db86b51dee96efea7769604646`  
		Last Modified: Thu, 16 Jul 2026 22:08:17 GMT  
		Size: 864.6 KB (864614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6699e76439bdcfd8fae22b2a599e40262379108b464b1024ad036dcbbf2cb7d7`  
		Last Modified: Thu, 16 Jul 2026 22:08:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470eb664924bc85ce9557e29c27fd5388ac6c26b71c628ed265b438c8bc459f6`  
		Last Modified: Thu, 16 Jul 2026 22:08:20 GMT  
		Size: 113.0 MB (113031428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476b7dd9537c3b6dc7a621363ce4977cbb846015f626db398ab9a80f5234f733`  
		Last Modified: Thu, 16 Jul 2026 22:08:18 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77434d6346680cff44695c35dc0333f3035ffb0207ea00fb8ad67c8637056463`  
		Last Modified: Thu, 16 Jul 2026 22:08:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7156db7e073946ce252e74e45f9653337b6ab94638659b4c4dfa6c720c9da8eb`  
		Last Modified: Thu, 16 Jul 2026 22:08:18 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2c4765d53cecb54b2eb251aae15b8a6e94434ec817a65309e7481b7f29310c`  
		Last Modified: Thu, 16 Jul 2026 22:08:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:4efa0853e78e1325744b3a8325a28017fffdc3b0097e9720f4ea52960d34c8ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 KB (39766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c38597bd51878b9b8261593d62fb6f356ea3f681cd3c7f995d143366c5fcc7`

```dockerfile
```

-	Layers:
	-	`sha256:35cf9e49d9ec7f9e8380f01832d6838f10d5018c834d02f4ef1003ee73a4a1ed`  
		Last Modified: Thu, 16 Jul 2026 22:08:16 GMT  
		Size: 39.8 KB (39766 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a58a1ca4ceed833a5150675de88413cec82e9176b3fd611861193080e725af1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111016755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4799b450d113254866e87abbefe6ca2733cc03a0183ffef4c0326281b841b7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:04:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:53 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:04:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:04:53 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:04:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:46 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:47 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:47 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893521f052c8f88b744e5a2bd81c3c95a9b0178b400361b1ae6916d6ee3653c9`  
		Last Modified: Thu, 16 Jul 2026 22:08:01 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1107183aa8f464c67fa55d44f1266ca91d9b626068c3a9e30addb687a61a353b`  
		Last Modified: Thu, 16 Jul 2026 22:08:01 GMT  
		Size: 864.6 KB (864632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6699e76439bdcfd8fae22b2a599e40262379108b464b1024ad036dcbbf2cb7d7`  
		Last Modified: Thu, 16 Jul 2026 22:08:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8c70afa18e6a0249f1e72a145521b90c19286d94ae6a377141649b6b33786f`  
		Last Modified: Thu, 16 Jul 2026 22:08:03 GMT  
		Size: 106.9 MB (106862987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cba9841581627d15388653721f307296b0b910be3aabf221cdb2bee146a1075`  
		Last Modified: Thu, 16 Jul 2026 22:08:02 GMT  
		Size: 21.0 KB (21014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae47da7726934cdff42118ab8ba3b17058678a24e5e01c79c7e556129323875f`  
		Last Modified: Thu, 16 Jul 2026 22:08:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a3affb9345bedc157a8a980aaaec1a7b5505587e2aedaa726b881736597096`  
		Last Modified: Thu, 16 Jul 2026 22:08:02 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47a25957498abbec5764bc4993bb8a277dd1ed1e4709cb0ea89f0de3a8d2fb6`  
		Last Modified: Thu, 16 Jul 2026 22:08:03 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:c0c3939645b8d9b14bd889fb6d5d6351159a12967421d3d312b82c14556b6a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d08dcd06a148f1fd54998b8eeaddd7179c7608e7ceba55cfd98f2a2c549202`

```dockerfile
```

-	Layers:
	-	`sha256:7c32e67b76d4f69ee9d60e80a2dce10c775d1d5cfb61574ec7db5c279433c363`  
		Last Modified: Thu, 16 Jul 2026 22:08:01 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d9506c1d65eba81a960ec1fe8e224565da89b0e256680423736c4a1cc5cac6`  
		Last Modified: Thu, 16 Jul 2026 22:08:01 GMT  
		Size: 40.0 KB (39981 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:70f71acb5737b10db46759bf3c446d9f24fb09727a74abfc4c2f729dfcddc316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119057009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c26ce1c0608b7bdf5223e5ee4f1c6991c8777fb2867d2276de7b77caf11071`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:04:54 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:04:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:04:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:04:56 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:04:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:28 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:28 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:28 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:28 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:28 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ffeadbbaebbdf3d2a32b2bebc9d3941ff8341572dc7e9288e057c5e0a72fb0`  
		Last Modified: Thu, 16 Jul 2026 22:07:44 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc46fa804b27823ea5b8b09bfdcf4d1e05bbb44f6c21eb70465d75bbf758c42`  
		Last Modified: Thu, 16 Jul 2026 22:07:44 GMT  
		Size: 852.3 KB (852276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613195481303c0eed79f58efd30b650502e76826cf1dea057ce2db811a03265c`  
		Last Modified: Thu, 16 Jul 2026 22:07:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440a01ad3d191b47f5dc20be3a5797f1b9aa6dfc8d2a2adc9bf8e382989ad04a`  
		Last Modified: Thu, 16 Jul 2026 22:07:47 GMT  
		Size: 114.0 MB (113993172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6408de335f1224ca46b2ed12c97abc63c8eaa21c73d9fb4feee70f721f129c1b`  
		Last Modified: Thu, 16 Jul 2026 22:07:45 GMT  
		Size: 21.0 KB (21016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8825abe97426804b005d608cadcaef1a3fc4ae92003620755fbdd390e6b8c3`  
		Last Modified: Thu, 16 Jul 2026 22:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ab6d7da2dc346df0771f39d22c6d6382916b1a68f5a2243b42c3ba3d07220e`  
		Last Modified: Thu, 16 Jul 2026 22:07:46 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6bf854a6367d45e22ba7e57e31d9d1188b07a20be61a6a963bf88d79fbf778`  
		Last Modified: Thu, 16 Jul 2026 22:07:47 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:206a5241d0434724494780a7fa6cc9afd49a773d5511435898a7e0576d31a28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb55f1ac88a877587520acffe2e4d948329fa418ce37862a71e863e46984578f`

```dockerfile
```

-	Layers:
	-	`sha256:28663d1d3a151e59e01c8ab71d411fcc3db33b159c4063cea64b83a955041e12`  
		Last Modified: Thu, 16 Jul 2026 22:07:44 GMT  
		Size: 615.4 KB (615430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ddfbb9c26505a7410f02ad15193f50b4f18ede0d63073e9d98f10947b0f4fc8`  
		Last Modified: Thu, 16 Jul 2026 22:07:44 GMT  
		Size: 40.0 KB (40009 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; 386

```console
$ docker pull postgres@sha256:a2516db016deccd3cda802ae5d201f0b3ff2be277682677e40c13605fa1b3268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128205116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2001e4521b3e498fc2f30aea8ca4075799d43db5b37b05965a82bcfe0d046625`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:31 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:08:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:08:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:08:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:08:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:08:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:08:26 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:08:26 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:08:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5173a39c8249ea51ea622d792d8066aed074963848f638e9a1505ceee6a99baf`  
		Last Modified: Thu, 16 Jul 2026 22:08:43 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c29dce250bb8a0f259b379565bff3dd9a72e48c0842188618333f747104c59d`  
		Last Modified: Thu, 16 Jul 2026 22:08:44 GMT  
		Size: 868.4 KB (868426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c992ad85c9a6c511f6020bc2c6ebac165f909c8d305d3b466df05b6a8e4693`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f807e5878640e9245ea8e828bec65fea67b0cec5a58f34638dca569b2c4097d1`  
		Last Modified: Thu, 16 Jul 2026 22:08:47 GMT  
		Size: 123.6 MB (123638019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca02e9308b12d98dc1fe9f06b1ad24b2a539c186d9502092d067f7fbc1bc1970`  
		Last Modified: Thu, 16 Jul 2026 22:08:44 GMT  
		Size: 21.0 KB (21017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f613fdbb38ff03d9d207177f5461ec6bb627e68906d95b4e5a667ffa8cbb75`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b587810956aed513018b21dc50dfe6d79d7404ad91fa5ac0e725f7814aee5737`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbaee66683c51f4eddc306e68b58f446faf91f9031b45aa21a08c82f9155926`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:385916da57ebb62f6db1bd9362348f64b7b9c51e27d7105d1655d97c55df97db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7769d95358152ec419682684c4d1bdfda6d8f82f645829da02bfabe6353a1a`

```dockerfile
```

-	Layers:
	-	`sha256:1fb6676a96c1e6e3d55c775f6cfbc2dc5f526e67cdcb45bdad089c2e4fc570b3`  
		Last Modified: Thu, 16 Jul 2026 22:08:44 GMT  
		Size: 616.0 KB (616033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97b64ffe96ec8920e144d1ded985c5418280af9ac3f38a775a174806a0ac567a`  
		Last Modified: Thu, 16 Jul 2026 22:08:44 GMT  
		Size: 39.8 KB (39806 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:d59f831057d80f90145c296f861d5f3cadba310a7911ec50052846e7ee62d214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124352568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeafcf4460920850306a2b46e90caaec8360ec45fc3ebec23f432175e6145f77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:06:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:06:29 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:06:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:06:29 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:06:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:06:29 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:06:29 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:06:29 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:06:29 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:10:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:10:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:10:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:10:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:10:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:10:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:10:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:10:34 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:10:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:10:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d15de9886784e20ca383cfdbda0f4c4924ed2cb46c4f828a6f169e5d53f77`  
		Last Modified: Thu, 16 Jul 2026 22:11:16 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69369c47e71e99d7eb4d7889fb9d158dec58d32f1876192bd0dfcc5f64783099`  
		Last Modified: Thu, 16 Jul 2026 22:11:17 GMT  
		Size: 857.4 KB (857444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d002eef03ed402c7a4dbed89dd808e7e7a29dc19fe67f0cf0c748b77fb56dc0`  
		Last Modified: Thu, 16 Jul 2026 22:11:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f1cf2d19be3cd59d17c8f3b07ad82cbd8a38e44fab258bae42a696be1e4b19`  
		Last Modified: Thu, 16 Jul 2026 22:11:20 GMT  
		Size: 119.7 MB (119653191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695b356c787a99a459fa5025d0861f4220a98442c2c132f60104950d59904dbe`  
		Last Modified: Thu, 16 Jul 2026 22:11:18 GMT  
		Size: 21.0 KB (21022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca15c6f7dc42f3e293d414d2c365a079d13d9713cd4d092a47cac69b9ec68f2`  
		Last Modified: Thu, 16 Jul 2026 22:11:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2708252e22e25696462a217815a820940e0acad7d9f2e2d27f849b4aff1c6d68`  
		Last Modified: Thu, 16 Jul 2026 22:11:19 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5416e8ab2aa600b912d9cfdfffc72311fcaa13758df3c221326f769feb9af15`  
		Last Modified: Thu, 16 Jul 2026 22:11:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:05761e3d9e0f5905f7b9248c203a11f31bd8b67ac080e4e797c6befc412dd776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508b700d32fd16f06f3358d817791ab88708b4a4ab4fedbef219a91d01e95db9`

```dockerfile
```

-	Layers:
	-	`sha256:3569e2d53981248f279828975d8c829fcddf4631852401b448d8eb76626751db`  
		Last Modified: Thu, 16 Jul 2026 22:11:17 GMT  
		Size: 613.8 KB (613757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e7a4d2c387cc186f8422f22e130c10828992174ce1e0d371681801b7f46e4c`  
		Last Modified: Thu, 16 Jul 2026 22:11:16 GMT  
		Size: 39.9 KB (39882 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:7e41d6d019a9208d0c702a90ff6c6e749dec3df28c81baae9de3dc1380e7ed17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127863150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903145219e51f22a0a6aa4037077d47dadd6bb08d6fafc29872df34a34b5ec65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:03:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:03:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:03:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:03:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:14 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:14 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b7cdbae143460459b5c04ead0c6af38aa10eff3b2e6242285eed803d689131`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6aff225c988442442c492cb9b2f9f7386043bc27e12ac662b5e2eb209f0ca6`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 874.5 KB (874490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465e4a76106dbb79c81141c3178f62131d2d0fc194e262805acfedac8d754287`  
		Last Modified: Thu, 16 Jul 2026 22:07:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2293e60375f7a07108e846bc6acc0b92f049f5fff076fded1b276bcdfea2d64`  
		Last Modified: Thu, 16 Jul 2026 22:07:43 GMT  
		Size: 123.3 MB (123250817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad53c17f6fc70a58ec22059bd8a3efdca1cc2e277e56f1012a88ea07e3f63b1d`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 21.0 KB (21014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed28d7b44a9e79b7fe9b0a5254701d5874fb0fed79e9487b38780bf0633ae93d`  
		Last Modified: Thu, 16 Jul 2026 22:07:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa348355334e1d14d447f08eaf3af4293ce866be73aed03da4ba4ce28637f83`  
		Last Modified: Thu, 16 Jul 2026 22:07:42 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc1989d1d28db18708715e541e1702d89d3d2f2d3b3d06d1c4bc1e3f13a56e7`  
		Last Modified: Thu, 16 Jul 2026 22:07:42 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:1b4ee900d20d5a37fff94a6ebd7f4dd857a0326b931f49219eebffa701f8e5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf8a9b1cde261bbfa342521bfa3fb0273fc6d56bbd6400d9a945a92b0a5e56`

```dockerfile
```

-	Layers:
	-	`sha256:040cedebb4e2105953918237941c4835a8eed8891ccef3a5ed6cf93d6523d917`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:472268967805dc57cfc5b7d139f4e79f72f7b6fa495d4cd3ac6a83c5cfd0dc92`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 39.8 KB (39839 bytes)  
		MIME: application/vnd.in-toto+json
