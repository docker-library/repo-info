## `postgres:19beta3-alpine3.23`

```console
$ docker pull postgres@sha256:1d1a18e26375ce100677ba024215566367479fda4ae620f3a656b29abac25d92
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

### `postgres:19beta3-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:dbe07e7b6c4967c4b78a8d78b4aa1860391541d8fc6a146f984f5bfdb23ecccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120877645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aa7456ef4c59d2330c6f8ab6af517ea62a0a4cb8c3708af88e2aad0195d251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:27:08 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:27:11 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:27:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:27:11 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:27:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:27:11 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:27:11 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:27:11 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:27:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:29:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:29:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:29:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:29:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:29:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:29:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:29:45 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:29:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:29:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0323fcf8e18c32dc72c43dbb52075a8c82622165189340a1c689267627c3bce`  
		Last Modified: Thu, 17 Sep 2026 21:30:02 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cdb196a4a83f0e77ee9093a5a406e9e0e594f2c7ef70eaf9507eb109f74d6c`  
		Last Modified: Thu, 17 Sep 2026 21:30:02 GMT  
		Size: 901.4 KB (901424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f166f21d9d7a5dc9c9b25f649e43d00321896ee3fbe236d13a3a576946155a5`  
		Last Modified: Thu, 17 Sep 2026 21:30:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad4c0ea3d9bf8c3a07daa38c02278c2020957f5c7051388e7dce58193b32e61`  
		Last Modified: Thu, 17 Sep 2026 21:30:05 GMT  
		Size: 116.1 MB (116099049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75230418ed43f894a36409667313c14f9cf759e0f3047778dd8b216511f0ffbc`  
		Last Modified: Thu, 17 Sep 2026 21:30:03 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050cbbda1104dbd67720dccdf6264930a14ef8e77e67d03cc4026f9d9f003c92`  
		Last Modified: Thu, 17 Sep 2026 21:30:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1324ed94bdd931be97010dfe0e2ab90dee69458c4a2422f45df309c97a749b42`  
		Last Modified: Thu, 17 Sep 2026 21:30:04 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6159be76e81224c97931f126cd553c5c0beccaabff1a643855cf541bc4f2851`  
		Last Modified: Thu, 17 Sep 2026 21:30:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4e9340033d4a58dc8ac50927e88e0029caa4ac3434766be215067e9116f4f4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6b8d80b758095a334498f99fe559485f42b4123d77a9cd3be883ab297c2a79`

```dockerfile
```

-	Layers:
	-	`sha256:42b902067838902e26a3ab8304124d83f667e6e0c0a78d679ea3508623efe413`  
		Last Modified: Thu, 17 Sep 2026 21:30:02 GMT  
		Size: 615.8 KB (615768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303e7383a954dc540dbbabbab1cffb9b4a6517c028188a600803966a44774f72`  
		Last Modified: Thu, 17 Sep 2026 21:30:02 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:704e9f0e8e23b9997615ed90c20b9bbe8d9e4053393b05b6a5968d3cebb81fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117075545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2817c8c56a7badbc1378063fe2db1b483cac07ccdd1eccf2121be4a2d871fef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:53 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:43:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:43:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:43:56 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:43:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:43:56 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:43:56 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:43:56 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:43:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:46:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:46:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:46:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:46:57 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:46:57 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:46:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:46:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:46:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:57 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:46:57 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:46:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e8a087dc897e89cda503e99b1eee5c38361f90f9b881f585c79ad732aaa65`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80271559a301d2113af66478cac3127cc5c1be56b782637e30ff4e00b0c07d41`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 865.0 KB (865033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd430c3fb2cb84194229f6ca44aa51a090c88d2bc9e0960fdec7fb986c86165`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f7e0ac09b5ef8a77b5fd028c3bfe731df6f2973aa04383748be60fdcd99530`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 112.6 MB (112626928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652636a025e10d46f4451f1c98240549a1d2178b9922e0c84838ab1faa74d08b`  
		Last Modified: Thu, 17 Sep 2026 21:47:11 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f52d2d4c5a22710a1744e4ed8f68e2a06b4a414d927fe5db9dc2b2cc472dbd8`  
		Last Modified: Thu, 17 Sep 2026 21:47:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4561bcde86b676a2a49f764af85d7f5dd86804ff006a775be8952dac45fff57`  
		Last Modified: Thu, 17 Sep 2026 21:47:11 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631f0775d26f277397d2508ebba038921502974dd19350a4f410e3615ed5faa6`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2195826e4268ca26b5235e3856d2566eeef921a23dc7d0016863e101422bb63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73599f373754962c79b836cda3db4dcc76cb6711ad77cd3751069e0c0fbfe175`

```dockerfile
```

-	Layers:
	-	`sha256:6dfa3dd103ede877616e8794be8ad6f5dc83357a0b9545f6323722879856c8ae`  
		Last Modified: Thu, 17 Sep 2026 21:47:10 GMT  
		Size: 39.4 KB (39441 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:fdd844d93b1bf3bdd98ac664dadafa8a588b29c5f6a0b66400f7a43437d6e9b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110591903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f951eef56be6e96fb314aa9942a5ac1ffa304685c07da06074c369ad3d2b4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:43:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:43:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:43:16 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:43:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:43:16 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:43:16 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:43:16 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:43:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:46:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:46:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:46:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:46:06 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:46:06 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:46:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:46:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:46:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:07 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:46:07 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:46:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb01b1078426c2df60534f741ffe764e6bd11f440df82ba8b2a6189013cb1ba2`  
		Last Modified: Thu, 17 Sep 2026 21:46:20 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647400d4b26c41885eb5f9942c58c13132b6db8da9ba473879d0205a3760f34a`  
		Last Modified: Thu, 17 Sep 2026 21:46:20 GMT  
		Size: 865.1 KB (865053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ef24811dc0ef1922c5516cd866b501c8b434035cf6e7d07510078f1f40ea93`  
		Last Modified: Thu, 17 Sep 2026 21:46:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8221c2bb412e3f8aeaa569a8a1782ea4c00cecbcd26ad22a61dc87da4988f1a2`  
		Last Modified: Thu, 17 Sep 2026 21:46:23 GMT  
		Size: 106.4 MB (106435271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f4db94224acb6cc821e040936255aa3cd8f2942e4d4045447bf2c3d36c246f`  
		Last Modified: Thu, 17 Sep 2026 21:46:22 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ef2642bc4573178911a9a0ced313c9f8efc506b8b490dbeb4f3a44d1131830`  
		Last Modified: Thu, 17 Sep 2026 21:46:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0708018426b961bdb220aeb4fd4f3e9409c9cc5c5d8c0f8e4b4851f2376242d3`  
		Last Modified: Thu, 17 Sep 2026 21:46:21 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843268939b65ea6ba6d823e168bcf9161a39be8e9344b8be1a6e71ef523b97df`  
		Last Modified: Thu, 17 Sep 2026 21:46:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:654e1644f7416d70b31e286b4d84ce6c2660b3ae3705c3d46498ffe890af13dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cacce23f4395fa69e26c735a982b5b9e7a671917f01180665db22ea5409f73`

```dockerfile
```

-	Layers:
	-	`sha256:316e4605346b9f1947bcc2823dddc3ea2b4dda86042e3c92263b863f2e706c15`  
		Last Modified: Thu, 17 Sep 2026 21:46:21 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:893670d0011ca6ecbe8871d680649c9a9f8d649fe0ac2d00f5e0a6d078cf6b2b`  
		Last Modified: Thu, 17 Sep 2026 21:46:20 GMT  
		Size: 39.7 KB (39656 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:43f76558c31f0cbaa04279230f3531c89e16cd1e3f06826201bf28cfd5756cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118633707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799b016ef11f872f6429a98eea41487346224fbc124515e1de674d1c812d6919`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:28:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:28:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:28:32 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:28:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:28:32 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:28:32 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:28:32 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:28:32 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:31:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:31:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:31:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:31:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:31:05 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:31:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:31:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:31:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:05 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:31:05 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:31:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95e7dc60e1d4e9c5ed1ea4bf6fa8a2c6d4a1e27e61fc20c3d775a268cf3a336`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d0630e5f6c3a3f02bab478af2b40d10e507a707dd6b112ac9bd422b2b0d3b`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 853.4 KB (853415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ab3aebe83de38fcdbbeb55dd75ea8ab5d7681ea5ffd3cad663fcefae6bfd15`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7d20e3d30211f1bc9d8281b01717e14cfdec64434982b6f4a7b9cd3df72e0c`  
		Last Modified: Thu, 17 Sep 2026 21:31:24 GMT  
		Size: 113.6 MB (113565573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1afc946bc6f6616c9a7839538b87ae0617c4dbda9ca2d00c8d37cbfe676d573`  
		Last Modified: Thu, 17 Sep 2026 21:31:22 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4b2530e50e448a4165f4f16a2fbfc66d36a126993da6e40cfab04773460ef2`  
		Last Modified: Thu, 17 Sep 2026 21:31:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d8391d919ae35778c245829953a61fe33e9399a66242e1719901fe256ddace`  
		Last Modified: Thu, 17 Sep 2026 21:31:22 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8faefe48f941a66ba6860d84b2174ce703cc594269d0fcef72155ad0b76094f3`  
		Last Modified: Thu, 17 Sep 2026 21:31:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:158a00abe02d68f019388b1ddd0c46785c6aeacc438344b2d4d91c2e9545a66e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f9d767c79baf75947b8bc546f57e308265d9b36857ada94ea8f1b9bc11c2d20`

```dockerfile
```

-	Layers:
	-	`sha256:270dc85fb27f010f79b8722b74dd2e00f31e3c5ca6752b9ea2d7982db8edcd01`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 615.1 KB (615138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a200965ff398e31eaae9c3084ce32da99c94798d13640fcb64859b893f139578`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 39.7 KB (39680 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:4285c2bba78622d3619fd4dcda474d43386450634e5a32d21fe6d2ab45bd49e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127802464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281697bd132d3eae2346539bf3f4966ea4da870e135af0a1c1a4b90c131dfccf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:27:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:27:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:27:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:27:05 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:27:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:27:05 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:27:05 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:27:05 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:27:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:30:01 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:30:01 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:30:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:30:01 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:30:01 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:30:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:30:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:30:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:30:01 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:30:01 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:30:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af679da6219816ac741b2fcab814bc36334d61e655879b76c9b7e159d0bcabd`  
		Last Modified: Thu, 17 Sep 2026 21:30:19 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a790818916f107e8e038013bdb9ae94651ead77abb6a67c3c41dfb47fd80ae9`  
		Last Modified: Thu, 17 Sep 2026 21:30:19 GMT  
		Size: 870.3 KB (870311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3036b0e5ad1ed2467a5970dcca21c064714b27e45c17651890532e231e7b065`  
		Last Modified: Thu, 17 Sep 2026 21:30:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77dc5ac9fdfe5404a5c1981925ebc22ad9a603c497ca6a6bdb4784d13a3b04`  
		Last Modified: Thu, 17 Sep 2026 21:30:21 GMT  
		Size: 123.2 MB (123228372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb48b5d647d30d1e2190a1ab2309709a0785b26b83afc4cfbb4513d7cc33dc6c`  
		Last Modified: Thu, 17 Sep 2026 21:30:20 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fafb50ae0a968447dc5a7f2ec2a2b42ccf30b4697073503f6c821ce06d19a9c8`  
		Last Modified: Thu, 17 Sep 2026 21:30:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87baad36068d762025d6bb26afc53fb7a12729aa5309b0baf43805b7da53790`  
		Last Modified: Thu, 17 Sep 2026 21:30:20 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d53e023b58240c7d1bbfd2377ecdf70dd7cdd9a5b16d7d69d3d55d93cfe76c`  
		Last Modified: Thu, 17 Sep 2026 21:30:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5e48936a31f9cf633820f020377bc436b1e275f4b1b133477e899dd53ae43a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381a9e51b5321ca6251b62c3df019203b123cac1ac6eac13912fe074528aa645`

```dockerfile
```

-	Layers:
	-	`sha256:f893f77e3a9251f79a34dfee586d3212b0ae7828e6da3b18b839ca15ab05ad19`  
		Last Modified: Thu, 17 Sep 2026 21:30:19 GMT  
		Size: 615.8 KB (615758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4892aae79dab3023fa424cc9e31d001bef61c593761da488d0c4495deac1afc`  
		Last Modified: Thu, 17 Sep 2026 21:30:19 GMT  
		Size: 39.5 KB (39492 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:05fddeb94ea6685d07da523b428f46a251f53f8b63902c772924ef66ad470077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123907267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d68d73de11b16859c0ade0be9efac6d383b6778e519272d482be4c99fb2a9ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:14:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:14:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:14:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:14:52 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:14:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 23:14:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:18:13 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:18:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:18:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:18:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 23:18:14 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:18:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:18:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:18:14 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:18:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:18:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8490e968633285da4722df0a549c834b8b848638ea16b615e12ec9bce1e87`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52bec7a9608ad9121937e70d51608f40e8b92fdb40dcee763860e731251a99f`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 858.7 KB (858704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6caf251ae46b9a02b5b829deb8eabbc8cc9d7bbb5b617106a91e03b3cca3a5`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97ae505cf2afe0085ef53670746ec32a65cc1efa6d4c2a28375bf74e941ecbc`  
		Last Modified: Thu, 17 Sep 2026 23:19:00 GMT  
		Size: 119.2 MB (119205121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55dcc097055f8d07a35a6ac001e5d8abf46d2794737a7d80d8fdb5b6482c448`  
		Last Modified: Thu, 17 Sep 2026 23:18:58 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fd678c5e8e12c124cfd6fdd368fafe97985b652d80941beef0e74bfa2bc240`  
		Last Modified: Thu, 17 Sep 2026 23:18:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cf7be18de0b0e91787d9e92a4d4596c9593295fb6de1b63101f01a3b8ece24`  
		Last Modified: Thu, 17 Sep 2026 23:18:59 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f529471ab866832d7c98f25c9066118068b4f3410bc2f8be155db10417f010`  
		Last Modified: Thu, 17 Sep 2026 23:19:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d6cea50998bc6a19469a8f44b2aa274b056cea305a01d31efb5fc31b4439e7a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da01df8e340f6ce044e7b0a55de46fa7fd2e9a9522dd71321142d83bc825ade`

```dockerfile
```

-	Layers:
	-	`sha256:84d8a3b97ca72c9b681143e4fe35ba335a1b74587cae20ee84f3229df0dec959`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 613.5 KB (613471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e4b70a27a521f7454920094d6122d3209085a320c808e58280a7d8d14a7a83`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:e336b777f6225fef98614ec731d8e46ab28ed5408ac1ccddf7ffd2b0007c2e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123531053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97f0384ca699f814b2eb0cf9c51f1e4bd662b741091819ebc821b6c76473989`
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
ENV PG_MAJOR=19
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_VERSION=19beta3
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Sun, 20 Sep 2026 20:31:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 21:26:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 21:26:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 21:26:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 21:26:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sun, 20 Sep 2026 21:26:37 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 21:26:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 21:26:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 21:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 21:26:38 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 21:26:38 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 21:26:38 GMT
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
	-	`sha256:e21b808779408112cff40909e984d6da45628af7d11ea7d7f0c0008cc09ac8e5`  
		Last Modified: Sun, 20 Sep 2026 21:30:05 GMT  
		Size: 119.1 MB (119079755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42fda68ad36aa016d43d5ea50dc68d61c05e59f214f11097db6695728931b18`  
		Last Modified: Sun, 20 Sep 2026 21:29:49 GMT  
		Size: 21.2 KB (21170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d773b2a6c9fe25d0020b15f12ca580cfd1a214f4fd41b0d4558bb758cd0d455`  
		Last Modified: Sun, 20 Sep 2026 21:29:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee825041efbf79595b4110dc5d5de7a5ea49ca50c50fe7d296e4c502f6c62b19`  
		Last Modified: Sun, 20 Sep 2026 21:29:49 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160b8ece566b1fda7bf6a12849dc1258b7ef02fa8b2f4b338e9de5a8e05b2622`  
		Last Modified: Sun, 20 Sep 2026 21:29:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e87f7fd479d1c5fd3b05b81789b84178e6860305a09029a979e1f3beab2532ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bfc8d4288a1c79e2940b39da7fbbc95ac14e13338b627389403c21b60973bc`

```dockerfile
```

-	Layers:
	-	`sha256:2d105990254c2af715ff91cebf1aa08088069d9d9e3bf0c43bd739871df337a9`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 615.1 KB (615129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eddb4190c206ab0abdb04b71d389bb9e0a563cd0810ea5b52357d78b40661f4`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:7bed9c6a9680b93b7c58dcf1c6e0994d6ce02a51d910f29f5d63c09831f63ea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127438170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047d89c4680a30a40be172ac33fe31f1d52689948eaa50a72e67aac6ae3eb11d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:06:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:06:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:06:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 23:06:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:10:04 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:10:04 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:10:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:10:04 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 23:10:04 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:10:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:10:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:10:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:10:04 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:10:04 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:10:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcbaa7a596793febf23ff4276c1f2163f8ebbe953ed79228303642170f8d3db`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dfb91d02989f8bb24fd2c3a954f91f88fb914e0686c18b224e1246716c34c2`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 875.7 KB (875713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7998a8b3ac38bff3dc514f8ed744e229e0fb1810e2dbf54b7fe0e2f42df179`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1becc66883ea23e20f2b9b9653487622d08d147b93f0a26c6db9c22da8d9`  
		Last Modified: Thu, 17 Sep 2026 23:10:29 GMT  
		Size: 122.8 MB (122820533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a35de15d6486870f9a051d3cf2dfa825df504298b86dac600a9c1e2af3d5bcd`  
		Last Modified: Thu, 17 Sep 2026 23:10:27 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b902355908a51c814e85916172f90868fe7600e98df4f9d7c7dc07340d2e7e9b`  
		Last Modified: Thu, 17 Sep 2026 23:10:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3691b129da9815fdaec696cba36fe3b4ecce0f3d4430e0661af0dded440a1`  
		Last Modified: Thu, 17 Sep 2026 23:10:27 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f860551bcce930d7eabe19a70aafac5116c9964b38b543e04f4db70c3eefee`  
		Last Modified: Thu, 17 Sep 2026 23:10:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:da6e2bd5f2eb154b71ec7a14ae29e1b5a7ff54aee767e0e68c9608917a6d2dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c40aac176c582770bd9a9867aacb4ac8b2e8ab3acd350fda20c7697ba94722`

```dockerfile
```

-	Layers:
	-	`sha256:f2b65aa1c50db0a4094f1fa693b4a7997573347ccd5cb7f5ba75f9e1bca4c97b`  
		Last Modified: Thu, 17 Sep 2026 23:10:27 GMT  
		Size: 615.1 KB (615117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c775c8639b9117aacf8b54c7488bda71d40ccea21bcd8e934636b065d147e3db`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json
