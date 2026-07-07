## `postgres:19beta1-alpine3.23`

```console
$ docker pull postgres@sha256:4d4c0f4aa7e615a8512362a4478fa437c4b282b7e6af206b4549631515e1ede9
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

### `postgres:19beta1-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:c05dfdd00d446b6235c2bb76ad842267f469f6785c93b8dc54acb5d6358d1292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120769188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b7c28b5ffeccee4c60dc9ef4b3c9bf48c3946ac682070d8b258f733b32f5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:52 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:52 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:46:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:46:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:46:27 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:46:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:46:27 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:46:27 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:46:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db15d80c6961c0f1e21846cea547182a241fb966e4b2573bce43d7652b0ece6`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2a61bbc86bfcec9d654d888e923420cc87a28707b981a496a2558f26b0bd65`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 900.3 KB (900266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc945bffd6fec13012a09f76c31928877cbf8c6832502dfbbe0655792ce8c75`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6923d40080ed7893c94d4c2fdf795dc6425cde5339789359148331e66057df63`  
		Last Modified: Tue, 07 Jul 2026 17:46:47 GMT  
		Size: 116.0 MB (115995983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce9ab40937100ef2dd88ef8e82035f3d52de3755eabda15bd3c8a0ce7a14596`  
		Last Modified: Tue, 07 Jul 2026 17:46:45 GMT  
		Size: 21.0 KB (21006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e91f79e5af77f6442e1188991d2853243560dfa6eae76914651c1610cbb326`  
		Last Modified: Tue, 07 Jul 2026 17:46:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97628a7d261df0a8c18a130d0eddabf52814dea5f9c0fa3cf74b883e39082d3f`  
		Last Modified: Tue, 07 Jul 2026 17:46:46 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a3d15b6f950911279b674f773199949913c4601145aa0a7871dea8f4f1f39a`  
		Last Modified: Tue, 07 Jul 2026 17:46:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:97da0ce54abcf78f5955e8ac9a444e593dfcb1d0ebe9554828a359c519f5f60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a21e16aa00ca772d6b013845af7227e2b200806755fd0b74d2a187a8b15392`

```dockerfile
```

-	Layers:
	-	`sha256:c50b46e39b95180f9ba2559e2c992d0804257fefae4cc479ae29f404905f0003`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 615.8 KB (615768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b3fa5fd69c6e6fae3407580a30786a9773fb082ae9bf9efc0337fc3e60690e7`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:3e0c1af4386eccd5956fe882c60a0bcc9ede42ab0163d33c3e080d339fa51834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116970236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64cee5574c71874dc4bee87f1b4ae2b797d97a182ce167b480a9f6b01d5eccb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:10 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:14 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:46:43 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:46:43 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:46:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:43 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:46:43 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:46:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:46:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:46:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:46:43 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:46:43 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:46:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd55fb022069202c9d2716883f3ea449aa2e54fd6b8ae59dd4cf4cd7d1e7b9b`  
		Last Modified: Tue, 07 Jul 2026 17:46:56 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92755a0b0be431fc3c9cd6dda5940a992b2048c34fdb56a07bee28b3a9d39bc3`  
		Last Modified: Tue, 07 Jul 2026 17:46:57 GMT  
		Size: 864.6 KB (864626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683f4ccd9222f38ccacdf07d0b9546492a54602afa1b916d60a0b29a020dbb5e`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aecb9729702e217b9e440bc3e92a421c44b4a09594de454f27cc5eae6e580cb`  
		Last Modified: Tue, 07 Jul 2026 17:46:59 GMT  
		Size: 112.5 MB (112524504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64848b4c9ad2e6ce15a7fb5bcd95c596e1d431b0bc7da2d8c9af7f161692c28`  
		Last Modified: Tue, 07 Jul 2026 17:46:58 GMT  
		Size: 21.0 KB (21004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3f3b35b533f2a32f179e036f4bb8408ed735989ba61419f80bd34dbb48e3aa`  
		Last Modified: Tue, 07 Jul 2026 17:46:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8ebadf76cc2ebbc966819844ba76e8eaca051147a4ccffae55695af728377c`  
		Last Modified: Tue, 07 Jul 2026 17:46:58 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69feeb8a5e80db0cec5c9346c0ae0aea5ba3d6d4895891b0f5a29c9f43a1e58c`  
		Last Modified: Tue, 07 Jul 2026 17:46:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d5de4fdee4a20a321da30a9934cf688b901ac638ab4d2134eb74aad3d795b245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc6ec6c3d861676d0b01be4ba5420da41af1fb3c41a7bc515dd97f276b51900`

```dockerfile
```

-	Layers:
	-	`sha256:4b1d7a4dc70ed1408fd68981a5a69f95cf5439c2b0d71e8c0b1e863f46c1ecd1`  
		Last Modified: Tue, 07 Jul 2026 17:46:56 GMT  
		Size: 39.4 KB (39440 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:3744052f044b5030f0e048865f764e4c65177d11d24d1b18ef67e384553cd012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110503412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be8017f395e31b596a161f2d64ef9a1c5ed09d23804b2266c954f084a572096`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:07:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:07:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:07:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:07:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:07:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:07:44 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 18:07:44 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 18:07:44 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 18:07:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:10:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:10:38 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:10:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:10:38 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:10:38 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:10:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:10:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:39 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:10:39 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:10:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e527b48e28931806cb34037a2493769f086cdf7f32149f2b4267c3bfa8cb03e`  
		Last Modified: Tue, 07 Jul 2026 18:10:52 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dbf5f88b5339ae33bc05b0c67cd97d927e20cd070cb7330d08fc6fe32319bf`  
		Last Modified: Tue, 07 Jul 2026 18:10:52 GMT  
		Size: 864.6 KB (864646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3280a1acf7d940735e72edd28109a46c0c991a66d88a02863f68c135311c5052`  
		Last Modified: Tue, 07 Jul 2026 18:10:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bdb146361a0b79d28a9729b27de99de18ef3a6227209b2304739f0c543a163`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 106.3 MB (106348399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40349ea436b453f3fa7a27aad830e6ba3ba12ff6b911fc24bc3aa5f405d7a931`  
		Last Modified: Tue, 07 Jul 2026 18:10:53 GMT  
		Size: 21.0 KB (21004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b87632c13de2f58ea5a68f76e146bd100a5d9bceab923042a127d834449f04`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175fb820c7fda903f0c341377eb3f86a4df3980192e9254aa78e5f71bb661582`  
		Last Modified: Tue, 07 Jul 2026 18:10:54 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dd52e12123006a4d80d425430cf8a286bb04fe20c6d09d1e6b3e2ebec5ac0a`  
		Last Modified: Tue, 07 Jul 2026 18:10:55 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5f220c24f83cf0c73f388859f06a2be996bc905ea3367b86b4c1273e27ecbb7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4647573d2183ff82542894160ec1360e641310d64b76912afb6980551e4642b0`

```dockerfile
```

-	Layers:
	-	`sha256:776699c1447fe5a10f50436ebef1a2ce914b2d0b61ddda538f87142f45227fe1`  
		Last Modified: Tue, 07 Jul 2026 18:10:52 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1c3d286e93648654806418809f6d4ef49d85bb065c1c28aafd4bb6386786d3b`  
		Last Modified: Tue, 07 Jul 2026 18:10:52 GMT  
		Size: 39.7 KB (39656 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:6abf7de8418210e144122641fb2dc27604e7b0d140c3827f0c114a5d9e82a444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118538072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c8fb9e2e193c61bb752e533f16588942cdb99e2200d15ae309a7412179143c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:19 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:22 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:22 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:22 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:22 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:22 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:45:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:45:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:45:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:45:52 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:45:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:45:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:45:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:45:53 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:45:53 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:45:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e045326fa00d466c82db9370f940a41e3cc85cb597a7dd77a770287b9b212da1`  
		Last Modified: Tue, 07 Jul 2026 17:46:08 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522594eb05b32932b02563eab86fcb039376915373e7a55520f08e8eef5de7f1`  
		Last Modified: Tue, 07 Jul 2026 17:46:09 GMT  
		Size: 852.3 KB (852271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22d565d50567d3681ba4f2deedd5b7227d0b542dcc57f469620355b0e76ffa0`  
		Last Modified: Tue, 07 Jul 2026 17:46:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95995990d3687cd6d5b4a2a4da649a0ef9c3b81c5c5391afaa49aec41a3fe902`  
		Last Modified: Tue, 07 Jul 2026 17:46:11 GMT  
		Size: 113.5 MB (113475432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e174219b119b2ab32ddd67e0bc322b5ca68a6e72b03562fa426b54e1af9708d8`  
		Last Modified: Tue, 07 Jul 2026 17:46:10 GMT  
		Size: 21.0 KB (21005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b46d43ed9f2a175267c01448987e507643f07146e3918378a3bb3fe5ed23c8`  
		Last Modified: Tue, 07 Jul 2026 17:46:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a43a80cd2011b5dd9642b26610015a706f9d5ff1b8813d904651be87ec9d4e9`  
		Last Modified: Tue, 07 Jul 2026 17:46:10 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92ab11092e35c40289e87c8827ce648dc73c72d0825bf2ce09823eda2dd9607`  
		Last Modified: Tue, 07 Jul 2026 17:46:11 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:29b5b7c2cd5ecf7074d81db74683a63886d8190849411ae75fb52c1e1b0871b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b18e4cf96815a63ef3320ceb25e50305cc8daf8a9a06beb149fd3c394d402c3`

```dockerfile
```

-	Layers:
	-	`sha256:c5bc6030b36b4e1a861d93d7edad04b47dcd81d1dff7727387b4cbb90509edf8`  
		Last Modified: Tue, 07 Jul 2026 17:46:09 GMT  
		Size: 615.1 KB (615138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e2851944fe03d0ec304c7f1480c7dd45749c310054b00a58d01a24a18787140`  
		Last Modified: Tue, 07 Jul 2026 17:46:08 GMT  
		Size: 39.7 KB (39680 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:38fbd5af59ef594868b0453159cbe25dc3e65cf28f6aa8a008473f1a189ab9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127692179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d6580c6250df2d804a6fcc6f6a7b9b30d14fc7cbf1accddbbfe5da22894097`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:57 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:00 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:00 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:44:00 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:44:00 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:44:00 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:47:03 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:47:03 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:47:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:47:03 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:47:03 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:47:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:47:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:47:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:47:03 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:47:03 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:47:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd8b65d2d1fde52394345b5eef8bd74b72183186dde0c99413625bce2159712`  
		Last Modified: Tue, 07 Jul 2026 17:47:20 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3c1a0bb8d694a8fa88c3082c965f36a0cb8d7ee9d38a7279958f796488cfe4`  
		Last Modified: Tue, 07 Jul 2026 17:47:20 GMT  
		Size: 868.5 KB (868462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc241ba7a79bacb9d889ddb8a687cd244b861ae0899ab11d58455ce728af1c92`  
		Last Modified: Tue, 07 Jul 2026 17:47:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca307f35cca31dac72a8e602d0097f7e85ec3c3271c5e1ef003461331bb30ad`  
		Last Modified: Tue, 07 Jul 2026 17:47:23 GMT  
		Size: 123.1 MB (123127210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d83adeafb76a10f6aaa538622c54348bf6dafbb346c87556a7a2f9a5d609c5`  
		Last Modified: Tue, 07 Jul 2026 17:47:22 GMT  
		Size: 21.0 KB (21007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562bdbd02bf749893b1b0dfb0794f53041295353e0a4fdf92c7e68229a62d8c0`  
		Last Modified: Tue, 07 Jul 2026 17:47:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4781f953f5722a544cb78d8f6583f755f757dd467ece85de4a29e09ff4b57a1c`  
		Last Modified: Tue, 07 Jul 2026 17:47:22 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abf598384bc6cd67f8f2671385edd893c07b563dbc5c6f8b9e389a663e340d8`  
		Last Modified: Tue, 07 Jul 2026 17:47:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c8d37c85692399771e873db483bf76326b687631e19e442a607636c8af7871ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7c9e57a0ed9effe743e6fea74406140d543a753f78735d6bbebacd6395c5c8`

```dockerfile
```

-	Layers:
	-	`sha256:e109056efa4596b8825d0258799352b170aa6d4003c00ecefde674166f27676e`  
		Last Modified: Tue, 07 Jul 2026 17:47:20 GMT  
		Size: 615.8 KB (615758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2926cf056be9e27ccac85b149abf39cea4be75c067a7176f5d162696d7a7bd8`  
		Last Modified: Tue, 07 Jul 2026 17:47:20 GMT  
		Size: 39.5 KB (39492 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:63fdefb3d29d02b973390c9302bc242bf29cdb853adb4fee985dfa9f7a52d552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123801958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce206a0f0f1359ac5e2ea431c6b299909a8be4b14a84db23656c4e914e67b05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:44:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:49:50 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:49:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:49:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:49:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:49:51 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:49:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:49:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:49:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:49:52 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:49:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:49:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2be8e1d56936cf0a694ebfac95a86877af3563e28b6843df76307a91d70af04`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcea6e4c5e5916bfc18cd1639d6a37a387821d20b06c444f82a48b577e8ec340`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 857.5 KB (857489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02500ebfa877bc45d0105557c5c48e5f954b940b017c288923149a30a61daa3f`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec3b3a917446f55b10416a70767294bf30201e2d4dba6064d244d59d853152f`  
		Last Modified: Tue, 07 Jul 2026 17:50:28 GMT  
		Size: 119.1 MB (119103645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312051714eb6588c02cc4f28362594bde345f824d93d15b70396af44bdf71b30`  
		Last Modified: Tue, 07 Jul 2026 17:50:26 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0274f99c381298e2ed464362a21df233bbbc1627810a9fb2b6e5a7efe478810`  
		Last Modified: Tue, 07 Jul 2026 17:50:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5309c6cb3d4613de162df8045c336dda43147b16afce204f842eb29e10b1ed`  
		Last Modified: Tue, 07 Jul 2026 17:50:27 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9427f8984364daa8ac79f5bd652bc9b3729fa83363423256641b54ced6754`  
		Last Modified: Tue, 07 Jul 2026 17:50:28 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a79bb715d491f1d1ce55f8625cfbc7f4b68b869a8afef1cf45e0c3b6462b2fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f735887d921301fa389f4176ed38049ccb08fe589c3e3d7d5b1821f94b6203ad`

```dockerfile
```

-	Layers:
	-	`sha256:dbf0bb005613826348d08127528cb9ff23593d86699c15140ff036df969e23cf`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 613.5 KB (613471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc19ef440df54284a89cbb578984a61d513d069b54fffbcda420c479e194464`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:32bc61595f8f2de898b30da242e38711f301822e4774cb1b1da62d59f40b5500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123440968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b30ba32ad3ef1af257c816c61c36be224405ed4adba38202a9382c8af02880`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 07:15:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 23 Jun 2026 07:15:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 23 Jun 2026 07:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 23 Jun 2026 07:15:22 GMT
ENV LANG=en_US.utf8
# Tue, 23 Jun 2026 07:15:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 23 Jun 2026 07:15:22 GMT
ENV PG_MAJOR=19
# Tue, 23 Jun 2026 07:15:22 GMT
ENV PG_VERSION=19beta1
# Tue, 23 Jun 2026 07:15:22 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 23 Jun 2026 07:15:22 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 23 Jun 2026 08:07:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 23 Jun 2026 08:07:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 23 Jun 2026 08:07:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 23 Jun 2026 08:07:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 23 Jun 2026 08:07:36 GMT
VOLUME [/var/lib/postgresql]
# Tue, 23 Jun 2026 08:07:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 08:07:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 23 Jun 2026 08:07:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 08:07:36 GMT
STOPSIGNAL SIGINT
# Tue, 23 Jun 2026 08:07:36 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 23 Jun 2026 08:07:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cac45ec548c7ccf65b7ccea57c257bf6c8aa845b1f52c0e944db730d107a7f`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca51690a6cbab005a488d9d289f0dffb8791e9037c65b7bb2f724816ea103`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728a39afd43e2cf4bfadbcd177e16ea1fd0fd814acc971f0f926cd6fd385facf`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561daed2558cff9e289ec5ba223cabfe5ddd33e05e9d79e580bb1ae7881aee4c`  
		Last Modified: Tue, 23 Jun 2026 08:11:00 GMT  
		Size: 119.0 MB (118994272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb9de88de48727c77c1ec4f048737cc80e4e0aef0fa3e268f4b53b8de0bb5ce`  
		Last Modified: Tue, 23 Jun 2026 08:10:44 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99da292ae92d78947d9dba7881903a362dfbd0d6cfa52b85a41770582cc3b065`  
		Last Modified: Tue, 23 Jun 2026 08:10:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029f02a15d74943b8fa25c4dc08be59b8ad1c2ece7a9a5c818458e98f4b8e483`  
		Last Modified: Tue, 23 Jun 2026 08:10:44 GMT  
		Size: 6.1 KB (6098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c00e75c0a79491455c5c8f3977b29e494bc531cd85151db70a7d05b25adbd0`  
		Last Modified: Tue, 23 Jun 2026 08:10:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:bc5f4b97bb249cd8bb4695be5ab17199d63fef87813bf83f9253d810aff98020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f76b42761aec26c627d2d621166e753ddbb8b233de737d2b42a22678f1d259d`

```dockerfile
```

-	Layers:
	-	`sha256:936f72a3bae1fa8d8bba74f94ad10ecc6184648fda3ea03c93644c2db24ba09d`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 615.1 KB (615129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4270363d6bbc7c9367be95c65b483a8d32ce925db14cb63b8f94223a114f585`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:370758e313096590b66e5cb40c425793a2b45ba90714f4f66d1d1f4d04093548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127332723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adaf24e4a4eb6f4343a738fda3ac9726fc1c78aac24726e82a36c685f4c6b9aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:09 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:51:09 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:51:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:51:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:51:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:51:14 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:51:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:51:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:51:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:51:20 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:51:20 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:51:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71583f459d7af9dbf626974c4508c34ef8ff2f23423acbd6cdd0ad249ffa101c`  
		Last Modified: Tue, 07 Jul 2026 17:53:05 GMT  
		Size: 976.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3b7cbff228ae21293abefe41a5ef7af098cb2c33987a22cef4394ef4e96812`  
		Last Modified: Tue, 07 Jul 2026 17:53:06 GMT  
		Size: 874.5 KB (874493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63966c3941952a667731ff8bef3acdcbbf73949ca02c4b7f7926d6c812604a6e`  
		Last Modified: Tue, 07 Jul 2026 17:53:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0bca56f3cb0eb1b296093cacca273a6bd7ef97e48966eb742cc10394d00425`  
		Last Modified: Tue, 07 Jul 2026 17:53:13 GMT  
		Size: 122.7 MB (122722449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b13266facc2d680511c5275e419a99030156b9ec867f4e5260b660d625cff0`  
		Last Modified: Tue, 07 Jul 2026 17:53:08 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5398465e03c2c70d72c5eee4f56dc157584b9b753b493e58bb89f575a36e61b`  
		Last Modified: Tue, 07 Jul 2026 17:53:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2849979c5322a22f128b28fe9daf07f8dd870d24cbb216d06915923fbeb303`  
		Last Modified: Tue, 07 Jul 2026 17:53:09 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab7c0c65250f9cd325bd0748020119e3fff427bea7f8c00d48ba3b823e9f014`  
		Last Modified: Tue, 07 Jul 2026 17:53:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:8b14fdeb8e3706c16ea4b71ff834248766fcbc4ee33b38b41a425cadbd5764fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:832afcd20d8f362d89b42443ba6850648fbe635ad9ce84bed6b9a5c35a65dd08`

```dockerfile
```

-	Layers:
	-	`sha256:92970ff3d5aa6de52c167a3abb7de4039764804ac966fa0b3f4fa073fd244019`  
		Last Modified: Tue, 07 Jul 2026 17:53:06 GMT  
		Size: 615.1 KB (615117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788df084742a24fa683d82345c01dade661bb58652d9e348ffe10a68b36bf0e2`  
		Last Modified: Tue, 07 Jul 2026 17:53:05 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json
