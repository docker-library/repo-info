## `postgres:17-alpine3.23`

```console
$ docker pull postgres@sha256:9ae4e8f8d0284836a505f0b2e825144e32e20499856e7dc5f7b99e19d10eedd6
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

### `postgres:17-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:09f3fe6ab613dc2ba3f7584dcebdf4bb7acf98366169cd1805ebf9a65eab1041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116694890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff189b99814463e3b0c4157a9ed8b0254931dbc0f5bf68186a92453cea8b9a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:15:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:15:28 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:15:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:15:28 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:15:28 GMT
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:15:28 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:15:28 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:15:28 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:17:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:17:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:57 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:57 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1565ccfd94509be862b813e648c05f9d6fa07086d60f490ce8ea2203d2f2c0bb`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7682c72851a98c7f8f7c26ac646a519e3c2220a4cd799d4a5923ba34cf5bc243`  
		Last Modified: Thu, 13 Aug 2026 19:18:15 GMT  
		Size: 900.3 KB (900263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c15625ab5b8dd2133976f9d03c56282ff6473a446c18ef4253e123ca18f0d32`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac2dfda9defac986f8783d5658fc4f4a74a193a236f5118c8238befde28f22b`  
		Last Modified: Thu, 13 Aug 2026 19:18:17 GMT  
		Size: 111.9 MB (111932519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f822397d3601a59e1a47f982c0753b284b2d83a559162ea2cf661673cb0fc9ca`  
		Last Modified: Thu, 13 Aug 2026 19:18:16 GMT  
		Size: 10.0 KB (10001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04f30a449037fa90837d8aa9512862cbbda9c38b9667030b6e40bd4a0a4efcb`  
		Last Modified: Thu, 13 Aug 2026 19:18:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfed83cf6ab08ae6ffd98c8d8bfcb863e1f36c907fb1914618480638dfafd7e5`  
		Last Modified: Thu, 13 Aug 2026 19:18:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ef1a997c99761bf9efb4a72f81259cb1594b79439ea680c961fc9ccb4ef7f0`  
		Last Modified: Thu, 13 Aug 2026 19:18:17 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e2f1e00b05fb5af8b6a57965ea73faf11362081b96c0239cd989ca2a4a5305`  
		Last Modified: Thu, 13 Aug 2026 19:18:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7563827cf88b2184de6b1e8c272dfd9cb7f6c03b62e050333c77dfb932ddd3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2074e9e8bc5a5a8a43292da04cf1b3d1309d50419c831e61081e159325e69e`

```dockerfile
```

-	Layers:
	-	`sha256:9a7308dc12bfe134f7ddf3aba2451e8745bf5d9c3937bde5d63d5f837c4a393c`  
		Last Modified: Thu, 13 Aug 2026 19:18:15 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afc1327825b84856153bec96369d5d52a60e5eaa5a29583adca4aec0d9c23d86`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 41.1 KB (41070 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6086e0723d214d0b98e7c9607b3a3b06aff5bd67aa5f8be709368a81c434fe51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112880151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f968f0cb5180c6a17fbad0c6557b80f8585cc65e89aed5d1d83074e6fa1923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:28:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:28:29 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:28:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:28:29 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:28:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:28:29 GMT
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:28:29 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:28:29 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:28:29 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:31:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:31:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:31:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:31:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:31:42 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:31:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:31:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b25fb8d5c422eeba6dbc6430723d79079a49d7a2b772ab75f60ddfc19f1c440`  
		Last Modified: Thu, 13 Aug 2026 19:31:54 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4ddf96eee82dbf9ba919be6cd45a70ef9d2e72cb1a32a9ed2f87afd02b3002`  
		Last Modified: Thu, 13 Aug 2026 19:31:54 GMT  
		Size: 864.6 KB (864630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aea668b76ca619ddeee5c25bef054811eb7ab84b5614554eb9b2a064049af6`  
		Last Modified: Thu, 13 Aug 2026 19:31:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4034e9a9f344523603c09bffef64bc20da323bef5b49fb0d3fcf38174765cd4b`  
		Last Modified: Thu, 13 Aug 2026 19:31:57 GMT  
		Size: 108.4 MB (108445245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f946c124a452bc5129732534e8690af4baaf9da816845c65884ca16f511a0e`  
		Last Modified: Thu, 13 Aug 2026 19:31:55 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacb3a6de25657ee58bbd16c9100f4f49e178b00c84c2c8a744446565a9321b2`  
		Last Modified: Thu, 13 Aug 2026 19:31:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9599deb229d5cf8b4043a8f0839c73ed192d7c4a105f0d0be2a1a1eab8f37cc2`  
		Last Modified: Thu, 13 Aug 2026 19:31:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3436e8cd40f331e3e7799cab14ec5b6b6e80c5f1a8d974ea38165780f61b8693`  
		Last Modified: Thu, 13 Aug 2026 19:31:56 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26c9e3317381d4bf4b456b43ae1b7f85e40f12f591536567b694e2eae4c5754`  
		Last Modified: Thu, 13 Aug 2026 19:31:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:32721f18113a23d2f5b1577401dcb8ce376e48242bc31ed7927ba011044db27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b03c3886359a7e827d85ec4b776ed9bae587278dc31e8cd0b0817203dee60f`

```dockerfile
```

-	Layers:
	-	`sha256:575035d2661baabe9c8539be68d4c7d6195636afee5a67d71544c14802447d7a`  
		Last Modified: Thu, 13 Aug 2026 19:31:54 GMT  
		Size: 41.0 KB (41005 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:47871e23055b35c496c47f3ba27798ff0c7cc683fdd86cf38b023736279eb30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106558628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbe1f66b9cfd1584217432dd7a429fdea4783bbda26ed03078907919fc08be6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:31:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:31:28 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:31:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:31:28 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:31:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:31:28 GMT
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:31:28 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:31:28 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:31:28 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:34:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:34:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:34:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:34:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:34:32 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:34:32 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:34:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594ab4137f3c63ded969cdfb45b18b85f346a568de75e337f0bff22b4c8b773d`  
		Last Modified: Thu, 13 Aug 2026 19:34:46 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee34b6e756ee9debbc8c3ac0f4bd11aae407b6bd7d5da4cdad77163cdf6469a`  
		Last Modified: Thu, 13 Aug 2026 19:34:46 GMT  
		Size: 864.6 KB (864643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfbeb3f5965c5770be3e296cf1c5de7e9d568fba9d0e3cac29604a097bbd48d`  
		Last Modified: Thu, 13 Aug 2026 19:34:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f56e76ceed836048672d0811f344c4fce432bc7fa01559c48a587745670b16e`  
		Last Modified: Thu, 13 Aug 2026 19:34:48 GMT  
		Size: 102.4 MB (102414449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98131c29bdef367e2de2d0ae14e33d5b6aa29239a45eba3340225c7310ce7a0d`  
		Last Modified: Thu, 13 Aug 2026 19:34:47 GMT  
		Size: 10.0 KB (10002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c20a8006f7af5012e87e41e6096320d6eee2ed6dc1224f3c396ce14b92a607`  
		Last Modified: Thu, 13 Aug 2026 19:34:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40cd4504b63926ec5b8aba0e15d3333d8c534993fe9c47b55064756487678508`  
		Last Modified: Thu, 13 Aug 2026 19:34:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f85fb2929fe5a0e7c870a37c1c9237bcbb8aa96855234753932c76540b8c0d`  
		Last Modified: Thu, 13 Aug 2026 19:34:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0925f2c871457e8d1e180ca9be03b09849d8875941288b281781efb6308c8f`  
		Last Modified: Thu, 13 Aug 2026 19:34:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:04f0989bb046e47e4c4e21bf18a534bd6affdbecdd222755727922308221e90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.1 KB (638053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b2725588523b8e800311e786df4f2d6ce86a19f504a133897d05cc015f0aa4`

```dockerfile
```

-	Layers:
	-	`sha256:e339c7f8cb42ad3e70b864ba9725eed8260f21562c180458db5585f3feba4e0d`  
		Last Modified: Thu, 13 Aug 2026 19:34:45 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fd4b7d04e5b05bbd1adb439981e7375e230a4538a127e16c789de5569eea06b`  
		Last Modified: Thu, 13 Aug 2026 19:34:45 GMT  
		Size: 41.2 KB (41225 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f2924e77eb4939843396c157a86e5545f8b5d7568c35a80eca7dfdb3a0fe764b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114512591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060f507847f538f635197486b6533e5331c9df4339ba5856211d3ad9178f3b0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:15:29 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:15:31 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:15:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:15:31 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:15:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:15:31 GMT
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:15:31 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:15:31 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:15:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:17:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:17:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:17:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:57 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:57 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e1e119a1ac96618354d502fe5c1191e7e5af19250e422a4c0a199921739e9e`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790daeba8030cb8b8428430ff08c718de5d7e706ddc01e6503ff210bd7425776`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533997c64751be9a2acf68dba8346c0130886cef563d6eaf322bc7e9a1acf819`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9986d8a846551bbea666011fc04c71415862cbb565789ba815dfd75cd7f1000`  
		Last Modified: Thu, 13 Aug 2026 19:18:15 GMT  
		Size: 109.5 MB (109460779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598205ae448ae5ab4157e2233de2df988eb269efdf3630212baea21ef235ada0`  
		Last Modified: Thu, 13 Aug 2026 19:18:13 GMT  
		Size: 10.0 KB (9998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b47f16cf4974d3f53aa9e6ac4e3961c9a6ca6082b85d88a1e25054ec571a1b6`  
		Last Modified: Thu, 13 Aug 2026 19:18:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8f069f82f9d3d86d61dcb2a98758e8cd05b5a29bbaa5e5a6d1da6a442b3a99`  
		Last Modified: Thu, 13 Aug 2026 19:18:13 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99305959d068ecc0db7b34f794c17047003c90919ee1411b86b90ff0cd47235`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d7f48001bf81d7391c818f85a06321fbdd111c9954fa1ee91f4d4163ed3b33`  
		Last Modified: Thu, 13 Aug 2026 19:18:14 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:317925610230b52d1c8a3a9204090d14443fab70bf23f21221e0e1b4a39ba5c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.1 KB (638090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca2d99bd23d0bd399e3fcfa40ea5afa72e746bf99ea406096141923b1a3a3b9`

```dockerfile
```

-	Layers:
	-	`sha256:d80981e950fbdc2462713cf0f8e17ef5ca83204cd242f852ef7d2b1d4067d996`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d72c7bf31bbc125977831b789455ec98031cf5772e25d4eb5c7eb9cd52d9f2c`  
		Last Modified: Thu, 13 Aug 2026 19:18:12 GMT  
		Size: 41.2 KB (41250 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:4a4f262755939c7b560ae6cf7b53927f2e7eba880b7f64b0de430b8fb79f27cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123394287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e49450d99920d0fef6684c2ef1896efdd172e4ef0f4782c77d755a6490efbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:17:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:49 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:17:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:17:49 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:17:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:17:49 GMT
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:17:49 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:17:49 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:17:49 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:20:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:20:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:20:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:20:15 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:20:15 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:20:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f32d796682599f3d15cc253b47ee708e444e18f733f5f703996495e2e4e50c`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6a7a34120426f8a33a773a81209b961079ff818857e241141cc9edcad9122e`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 868.5 KB (868450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d5c6b2d25a1d10b0b0cfa09816df358d9a5271761cae7300d4ec7f64487195`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c406fd8c0ed3f6e5b7404dc4e04b379483d46cc322fa956b776dabdf4ed8044c`  
		Last Modified: Thu, 13 Aug 2026 19:20:33 GMT  
		Size: 118.8 MB (118840167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34531c733f49dbe64cde09e7246d159ade75c67ea1a1b5e7d272b6b212c297ea`  
		Last Modified: Thu, 13 Aug 2026 19:20:32 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b1b16a771748a2088a04c8abddc36ac52fad678ccedc045992e3fc5074d31b`  
		Last Modified: Thu, 13 Aug 2026 19:20:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be9aafacdfcec4bc758cc1692c88074b053d9cf9090bb8bb1f0031f7847491b`  
		Last Modified: Thu, 13 Aug 2026 19:20:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363900c40d5d462e0349f5cc64792f721dfa1af8e8ac54c5ca6f8dc0a73b058e`  
		Last Modified: Thu, 13 Aug 2026 19:20:33 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec48cd4da942bb722b67a89a759a6c530d57142b1ff991791561a75697cdc379`  
		Last Modified: Thu, 13 Aug 2026 19:20:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:eb9d0551f775a657d127e7807953c6fbfeaa6ca16de382d130c992949857618a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d27e631899baca3d5a396e7eb45d4b49a045e4980353e7c06b7252b8d871fd`

```dockerfile
```

-	Layers:
	-	`sha256:09183ed31c497edc9f043cee9b522a41c65e56b1cbe5f7e2a6559b66ee17593d`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:143ac3a87770b91168ca79b86715586dc015eb432c3cfb0d9cd6ce8d3f881ac6`  
		Last Modified: Thu, 13 Aug 2026 19:20:30 GMT  
		Size: 41.0 KB (41029 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:7920349d41e8e35e4f6370a5b3f66fd52e64e42a6aa5f752abc100292e027952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119448603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1420287c0c2a7b35e5705b7b48c5ee42bed53839d86d298d27571d51418a189e`
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
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:14:36 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:14:36 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:14:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:33:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:33:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:33:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:33:26 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:33:26 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:33:26 GMT
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
	-	`sha256:6a4a58a91fbde96020ed6214eaf0204f3a4a0dd2ca6b47cc41b590e1040b51e1`  
		Last Modified: Thu, 13 Aug 2026 19:34:05 GMT  
		Size: 114.8 MB (114761128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bff011a9f20791a8d51c9c8b65d3812b772e7444c5b8d81d7edb9af9db4639`  
		Last Modified: Thu, 13 Aug 2026 19:34:02 GMT  
		Size: 10.0 KB (10009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e3977935f5849d89a884da3a75111c355b20dbbaa3a9f266abbd64f361d0c7`  
		Last Modified: Thu, 13 Aug 2026 19:34:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2650691bca7d5efae238b95b812c89fb69ceb1ab19f925a8a0e7657e426c82`  
		Last Modified: Thu, 13 Aug 2026 19:34:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d0d7dd74eb8210a0afe9b0788d25dc4ee29ed0253b703eeb976cfbd12fc541`  
		Last Modified: Thu, 13 Aug 2026 19:34:03 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbaf4dd7de2e3a0844d20f99d266ef4a7faed7af3d29c30c7a4b42353d6d4667`  
		Last Modified: Thu, 13 Aug 2026 19:34:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:75bd8dcfb2b0dfb26ece3ab56e7bedcc2ef85d1f3d7a8fa6d9013b6ece1af216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.3 KB (636282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca24d04c21beb8363aee5219355ae03e6608e6c50eb30917671c755345ba1d8`

```dockerfile
```

-	Layers:
	-	`sha256:541b6f5cb1f67a96a7120e3a3f5c4e65066de1571fa2874053335f2a9358d586`  
		Last Modified: Thu, 13 Aug 2026 19:34:02 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95438bda17678c56ec05593c123d6aa489ef6abdcc6b6eab0c995336515a469e`  
		Last Modified: Thu, 13 Aug 2026 19:34:02 GMT  
		Size: 41.1 KB (41115 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:5c61a0e7dd7ee05fa70b06aae4f0ea101f4a6e9ceaad241ee01c60a27218fe27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118909573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075373c7c4dfdd7733f64cb94ec71230f13c7ce4a77783dbed55cad260faad27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sat, 15 Aug 2026 16:22:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 15 Aug 2026 16:23:10 GMT
ENV GOSU_VERSION=1.19
# Sat, 15 Aug 2026 16:23:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 15 Aug 2026 16:23:10 GMT
ENV LANG=en_US.utf8
# Sat, 15 Aug 2026 16:23:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 15 Aug 2026 16:23:11 GMT
ENV PG_MAJOR=17
# Sat, 15 Aug 2026 16:23:11 GMT
ENV PG_VERSION=17.11
# Sat, 15 Aug 2026 16:23:11 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Sat, 15 Aug 2026 16:23:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 16 Aug 2026 01:20:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 16 Aug 2026 01:20:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 16 Aug 2026 01:20:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 16 Aug 2026 01:20:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 16 Aug 2026 01:21:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sun, 16 Aug 2026 01:21:00 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 16 Aug 2026 01:21:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 16 Aug 2026 01:21:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 16 Aug 2026 01:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 16 Aug 2026 01:21:00 GMT
STOPSIGNAL SIGINT
# Sun, 16 Aug 2026 01:21:00 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 16 Aug 2026 01:21:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d6175a2112a5f08ffef8c62314bba816252f380a36da5ce52ff868c3b4b68d0`  
		Last Modified: Sat, 15 Aug 2026 17:18:12 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601df98a2176f8950c09b8cfee7e7ba139aad034ccb0ed9c32feab7a421aef6d`  
		Last Modified: Sat, 15 Aug 2026 17:18:12 GMT  
		Size: 845.0 KB (844952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7784051f0ce591a830238c90ca98662962c83cd52844a376d02a411bf1f7f5bf`  
		Last Modified: Sat, 15 Aug 2026 17:18:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169f2dfdf34ac8707b55018b205701abad78652b0a022634e2a533e3cb372a2c`  
		Last Modified: Sun, 16 Aug 2026 01:24:15 GMT  
		Size: 114.5 MB (114473688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3598bdf3a3b0d618b513d4152c47c96766701e141fef046c9fd6a9179c821d22`  
		Last Modified: Sun, 16 Aug 2026 01:23:58 GMT  
		Size: 10.0 KB (10006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df0dcb6b4ad3e487478d057f4c1adc7098e5c73e52a6da346125ad114ee4661`  
		Last Modified: Sun, 16 Aug 2026 01:23:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e77a05d0ac424478a8226865f40d47d958ea098606a4176c71e39b67fc38cb1`  
		Last Modified: Sun, 16 Aug 2026 01:23:58 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65909c634993b1cf9db3ff794f949d83ac01bd5aadf0b86d0add1e0652a2c38`  
		Last Modified: Sun, 16 Aug 2026 01:23:59 GMT  
		Size: 6.1 KB (6114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54a112b38661a1264834600feb44324cd3598f71bc951ad1fbd063bae348382`  
		Last Modified: Sun, 16 Aug 2026 01:23:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6f6a4d78a3d6ad27c13a940fb44662e52527d6888b987015591e81dbb395101b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d88690972cfea43b96352d5aa07bfbb25fda223ee68bebea2056d4b313ad695`

```dockerfile
```

-	Layers:
	-	`sha256:73d625b69da31df28ff02489d8570e3308ec80c4ca33550efdb5afe56059721a`  
		Last Modified: Sun, 16 Aug 2026 01:23:58 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5044c40ff2039bbb664075ae8bc84787854ab6d6444fc048118e7658e3c53e67`  
		Last Modified: Sun, 16 Aug 2026 01:23:58 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:ffe2311e1783b364ee39c7886892ebbb162669a98b8e71cf37cee9f63f4f9928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123205931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9048af1a1ab51e84300850b0e2c31cb754b3d687458f1d6580d9406d3b1a5d`
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
ENV PG_MAJOR=17
# Thu, 13 Aug 2026 19:13:05 GMT
ENV PG_VERSION=17.11
# Thu, 13 Aug 2026 19:13:05 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 13 Aug 2026 19:13:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:32:11 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:32:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:32:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:32:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:32:11 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:32:11 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:32:11 GMT
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
	-	`sha256:159187fa5f2c9fb3d2246837184f1398c788c4ecda619cd4734fa2056f72e23d`  
		Last Modified: Thu, 13 Aug 2026 19:32:38 GMT  
		Size: 118.6 MB (118606502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad6eb08311eeca40fbf7c8e9ffa96837c062e81218da4e4ee274fa57130328a`  
		Last Modified: Thu, 13 Aug 2026 19:32:36 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9ec581d265bde556735b0069a8fbd0956a830782ddaa77e12fa8a519271a68`  
		Last Modified: Thu, 13 Aug 2026 19:32:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e122bc6c5d0f0052bd79d2a7064523a0018dbdc19186bcf78555f0ae726baed`  
		Last Modified: Thu, 13 Aug 2026 19:32:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd6e4252f4b2f7a343aa7510717222ee09f6aa77ffff828ec0b314c5b97d7a5`  
		Last Modified: Thu, 13 Aug 2026 19:32:37 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dfeefb89e86152fa6cbfbaac964e52de7cee346532cf5b97d9fbdc6494d6dc1`  
		Last Modified: Thu, 13 Aug 2026 19:32:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:fd4a63dcf2117c1e14bae71911984f32f153902823731b48bb4461dec7294c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84c29dc6f64e108edc4d663da74362411df4ae9ea951b4f9e93bd140504720f`

```dockerfile
```

-	Layers:
	-	`sha256:7702f0df182b2901409582bc5c00c79a6c4b2098c6bb9955c24270f8efc3c077`  
		Last Modified: Thu, 13 Aug 2026 19:32:36 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66b9dd0ce6f999099e95764cc4d5a5941d41af615446297c7f1ab37da978260f`  
		Last Modified: Thu, 13 Aug 2026 19:32:36 GMT  
		Size: 41.1 KB (41065 bytes)  
		MIME: application/vnd.in-toto+json
