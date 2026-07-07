## `postgres:15-alpine3.23`

```console
$ docker pull postgres@sha256:7f88162520e27fda14ab3dd59c71bae0ee3b0552392b42dcdaeb0427950cc8e0
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

### `postgres:15-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:870f35a8c9eff7ba79a599794120d326df4cecbc6a1bfc0050d58805e37abfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114700231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb714b58f732eda2369d044a046ea766127e84c66f3bdea460b299ba645669d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:46:51 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:53 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:53 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:46:53 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:53 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:46:53 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:46:53 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:46:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:49:07 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:49:07 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:49:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:49:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:49:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:49:08 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:49:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:49:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:49:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:49:08 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:49:08 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:49:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dfdabb81e771b59edce328961573cc470eb95ed42aa716b4e6f5e5b5d25f869`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681bb1f27268317386e876add0e6fc7a82fa314114693bf7425a7666716a7e06`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 900.3 KB (900265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad14ed4061566d5764fab86f1c4d52a3d749142557991b2ee840c01406fac293`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bbfa314248ab5f69ef7f3dc2c55c7299cfb6dffff294820835eb0503f444f7`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35674dffd3218c4be36cbe647b005353e3ee0c192da204fc1623ad7293b32f76`  
		Last Modified: Tue, 07 Jul 2026 17:49:28 GMT  
		Size: 109.9 MB (109938238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697c64420f84177af375dfa15eb8df876ca0d08f7096eb05ac2da2e57d366668`  
		Last Modified: Tue, 07 Jul 2026 17:49:26 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b688535f33495420a2aa1a1bc37f8843ca73bd752affe2f63dc0e8e57e753b57`  
		Last Modified: Tue, 07 Jul 2026 17:49:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645718959ccbf136f2b3fa5d7cb52302a0c08843df4ee2c41a8c49cfaa5ade4c`  
		Last Modified: Tue, 07 Jul 2026 17:49:26 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8225d255a72418eaf218e214f41f6c5e638e4ce14ebba779cca4560d806161f`  
		Last Modified: Tue, 07 Jul 2026 17:49:27 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa939282905a48c198af12826761388d735cf7cc5a87cbf76807cfe777f326c6`  
		Last Modified: Tue, 07 Jul 2026 17:49:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:31f233c542da78a1d3c277c4577c7ea20c8a0e5816bb8fadd8de5d505b2fcc58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 KB (641225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b7b9fa94189978b88cba223bdb5bbd80a7641ee888fed0195a0e98ac01ebb1`

```dockerfile
```

-	Layers:
	-	`sha256:594bef56e295ed868eb01e3c505b95146c2ed31e19bd59297b5fef1bfc30405c`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d2b4a5dbe2306feed8aba03e67536e25e6adec258e4cb806cd5c99082f89543`  
		Last Modified: Tue, 07 Jul 2026 17:49:24 GMT  
		Size: 43.8 KB (43767 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:a5b9fa0830cb296fb0fe7f2ff6cc29f5b42ee92a8aae5f372a1569e100d0fccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111000184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a2943e6941259956ebf1b7fa65e66fe649ed02a7a2c91f24d55b78371091dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:47:15 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:47:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:47:18 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:47:18 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:53:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:53:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:53:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:53:40 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:53:40 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:53:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac8226dd43743deded345462597f5decbf68b04550674f6ae038106db7b187a`  
		Last Modified: Tue, 07 Jul 2026 17:50:33 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07727ba1e6af4c1ca4a5195c69fd23af0bf912f113dc1e065c9c45f0ae6fa84`  
		Last Modified: Tue, 07 Jul 2026 17:50:33 GMT  
		Size: 864.6 KB (864631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e32e0aadfe8bc123c4ccaae29643519e5d9b2d7999a56a6527ca854131856a`  
		Last Modified: Tue, 07 Jul 2026 17:50:33 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e590d21bdebf829fbd9a988edeaf3cddcd2d94582327bddb9ad7963383123`  
		Last Modified: Tue, 07 Jul 2026 17:50:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b84e201543e1288e8a5af1e4bdc3ceca9b1420e00f77422a91e430c70d47f21`  
		Last Modified: Tue, 07 Jul 2026 17:53:56 GMT  
		Size: 106.6 MB (106565653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c74538c7412cc236179535520537175c337b8bade6858c08aea9266ba64cea4`  
		Last Modified: Tue, 07 Jul 2026 17:53:52 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589713c2c21d0ea693862367704294e9bf767505c803518c451bc1943a7005d0`  
		Last Modified: Tue, 07 Jul 2026 17:53:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398856bd8c9d687ddc79f1aa5275f94ffbc1eac31618cbdda5df927b1c4bac77`  
		Last Modified: Tue, 07 Jul 2026 17:53:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dc5fb56d05975220da5daff6829ff0cf6b653b91b4d206e54b3b612206b9ea`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f68047ba1268d3bc4ced63d824fd93af1905953f914f80da5218622736a301`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:672cbb353c0850815d0e03f149be0b56c22baf5d5a942f924d5b8f9b218bfb2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c556153b4b91c1d6120139395c0c9e82186aafd1c8ebacc330a8f6791358708c`

```dockerfile
```

-	Layers:
	-	`sha256:1c65bc678e3f6d4d1f7029817a39d1d03f8c618f7bd5f303cb5d251890bc5a29`  
		Last Modified: Tue, 07 Jul 2026 17:53:52 GMT  
		Size: 43.7 KB (43721 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4a9a3380f3eac1060d15ba86aa83c0e751d75fc325cce5f0877ef95b8f82c261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104734186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273981f00344d112a7c48b073f0a9836d84b56ce4357ad525d8d7f647cca3bd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:13:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:13:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:13:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:17:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 18:17:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:21:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:21:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:21:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:21:29 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:21:29 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:21:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5542d14a5f06f41eec556bd8e851c162dc22069b9c15859809176494be7670a3`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7de479aed845759edaf3cbd3b719415635476e5614c27cfb9e78ef222d93825`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 864.6 KB (864643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae64d507dd153301382e84193f3906e10555a0a8f05911f445d1820cca3662a`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7425d83439b07df616d2f0acf6bed813a7943600f5bce4a7afa0dfc24954316`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499e1e67066434b2038ecc8d92acdf10ca7c8bd1d8628a554bebede730e02192`  
		Last Modified: Tue, 07 Jul 2026 18:21:45 GMT  
		Size: 100.6 MB (100590383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61bad0fd331fc7e7ea4214f9a78d260a4057b909e2cb87d2783cfc5a1194a7c7`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542f086076bf63e6af39f40eeebd7fe09c4362016711f9b7490d4789fa421e47`  
		Last Modified: Tue, 07 Jul 2026 18:21:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1654e17e0201833af873bcc9ad4c09699d4f78b6e6dc39074af916ab2ebc8d5c`  
		Last Modified: Tue, 07 Jul 2026 18:21:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e620e9b2f63790fbea02b61af7aa0cba5ef0f532ebd1b777ac791ab6fbb06998`  
		Last Modified: Tue, 07 Jul 2026 18:21:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b5b88cac903f57e80d81ddd05b13b2180e6fd4dc234491c2bb8c34502aac89`  
		Last Modified: Tue, 07 Jul 2026 18:21:46 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7f3550080e45807d2353ec0bd5fa5fb279d14e1678b568fc83229d875ba63758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.8 KB (640764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0c6364f4ed387b7aafa88ba6ebb7534a9d2235252eb8c5864245c6da9fed04`

```dockerfile
```

-	Layers:
	-	`sha256:d425cdc797616bda36df552d9619f804d06474209879509d53cb9e33cbdcdaac`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298bd2b6a177881708a228d6c59d63a33c545bf9afef40c156e8ff2f3e7f61bb`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 43.9 KB (43936 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:bfd75496419de898572c2795e7b49d58c0685c718085796caeb641f3083a13bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112536865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c1db9c2eae6715f7bb8d3c677642486e3de45a91d5eb619fc971631e1e9c5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:46:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:48:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:20 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:20 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec09ee96490d97aa2ba356d1ec4504f69e72e09b8be0c296f5e31a7929daec19`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9df39a7929566a25d172e7a13d400ad511a4cd887b2d84a29e99079373fa904`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 852.3 KB (852273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53611a97dcf1f0010be23401b7a0d04e0ac1e8e9cfdf48a78a423ee299fd7be`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5366df1925bd1d7b52e84b3cd8182e95ff4f1119f2b5815067310737e664d4a4`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01c24110a9f65ec2f874aeba6d28054b808fc142856c91009861a8e96ccc2a1`  
		Last Modified: Tue, 07 Jul 2026 17:48:38 GMT  
		Size: 107.5 MB (107485423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093dbeaffcf4148895eda33f1eda8965c286b59e61ffcc4da9c1bd647bd86eb0`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 9.5 KB (9453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e2c34edbe8011c81b40c8baa9a072edad3e3fdaa3a11d570aac1ce64dd61aa`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89426c8180ef3fe7c7c7c83f00b2671411a23cc5de1d8d58c7edf6db880f5bdd`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a0d82750307fed3146fc355cc156dcf843622e6c3eb32755b7bcf679424cb`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a067ff72f973c6338f2a9012838764c0dd271a58a11caafbfad03e0348554c72`  
		Last Modified: Tue, 07 Jul 2026 17:48:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:20b37f302cfec4804a81595b4525fe2dbd3937490570670ce22415747d3bbc78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.8 KB (640807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3597717b44368ef6e31b983dd9f4225dc6a13f04374db872e986e68488639af4`

```dockerfile
```

-	Layers:
	-	`sha256:7279f150923490c3499807581ff5abe290178bfe422e1e1827542711c1ba231d`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a82e4fecef3d15265014512478af66bbccfcba3f704bdddb6857b1c476183cfc`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 44.0 KB (43967 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:79bfcb73a37f193768b656b94fc5e59579908e4c69a612d49b009a74ff2bd248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121389363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae1dd40192d0497a5b750c6005dc156131060a20cc1dda38dd3f817d438fa1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:54:08 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:54:11 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:54:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:54:11 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:54:11 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:54:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:54:11 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:54:11 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:54:11 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:54:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:56:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:56:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:56:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:56:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:56:42 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:56:42 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:56:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849dcb9f3b856465c8f76f49ab8592ef8a682d1fe34551f8c234976431e24d13`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4947777488c0a3813fd8d52e7067c7bc1b5e835c4e4c0b5521e998452820c962`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 868.4 KB (868447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdb97cb1c776740b0041f002121646d32c502a0454d7d8c79b26d3aed5be356`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd200050054df1573b2cebf8e266ec8ddcab53f2dc12d0cbc64a2a6fa1bd4c64`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3f9b7c2e84a15238b0ee3df55612a79ef5a7afff4e62f1c96bf1365894e912`  
		Last Modified: Tue, 07 Jul 2026 17:57:03 GMT  
		Size: 116.8 MB (116835626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b44b686f8c3a110106d0f8aed5b3460e33c9d6069592a18139358c02fe71e0`  
		Last Modified: Tue, 07 Jul 2026 17:57:00 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57244c4998a8f11ce0c68076e828588fc018dcf79cbfc28d7de0b4e9de4f749`  
		Last Modified: Tue, 07 Jul 2026 17:57:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89612d778e221b6302693368ba315c639040804ab524bf80a70fa1c241c9b541`  
		Last Modified: Tue, 07 Jul 2026 17:57:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c45f1472ee8f8ae515886cfb833da7ccd6f1dc1b672b6ebe3c9942c8d5bf4f`  
		Last Modified: Tue, 07 Jul 2026 17:57:02 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88704dafce51f0e243bc515d7da48d59580ecbc859e81238a98875fbaee4af62`  
		Last Modified: Tue, 07 Jul 2026 17:57:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6aac5c65e2dbd5b5449df617061f0bfcb50e996765d3f3b705f1dcf46e619f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 KB (641173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b9bb571b495ce06d4712c1385d354110c2acacdb73664091e522b4bf6711cd`

```dockerfile
```

-	Layers:
	-	`sha256:8d9758d2a400e6d7311eff3a0c4159f7052ed86313dadc0aa63bc9c4a48dc072`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f11036db778506047ba2ef3b178b49bac59310c9b0bb88aacca30d34e91a1e65`  
		Last Modified: Tue, 07 Jul 2026 17:56:59 GMT  
		Size: 43.7 KB (43730 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:c7bcb2b84b3037874bbe4dc2781bc2b4a9a252072e978ba5ff40598e22e21df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117359353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8483a2d61e311d0850ea6c8be92758777fd3dda62ca9b7c170936fede2dca5`
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
# Tue, 07 Jul 2026 18:07:47 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:07:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 18:07:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:18:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:18:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:18:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:18:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:18:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:18:56 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:18:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:18:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:18:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:18:57 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:18:57 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:18:57 GMT
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
	-	`sha256:b21e5268298a67923dd0178bbb3114f4758b56d0aaf932d880ee04ba433ddd0f`  
		Last Modified: Tue, 07 Jul 2026 18:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bbf0a7b7d787690a96b8d33f06d880d7d4621a2fa58d2deeb197cacb74b322`  
		Last Modified: Tue, 07 Jul 2026 18:12:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a09315c9962af3c13f6406099f60d35325117d08592106480ae8299fb7dd2d`  
		Last Modified: Tue, 07 Jul 2026 18:19:37 GMT  
		Size: 112.7 MB (112672253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181b8298d35b1e8d38b3a2aa23ec115dd7825721924ec1320400fad3db9cdc78`  
		Last Modified: Tue, 07 Jul 2026 18:19:33 GMT  
		Size: 9.5 KB (9457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e515fbe1bd5eada74698d4a79cadebc3849543e3c46441ff267648ac7533c180`  
		Last Modified: Tue, 07 Jul 2026 18:19:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9a532340c9b706b15a0551bef2f12bb6797c95753be7b16e8b9a6aeb967606`  
		Last Modified: Tue, 07 Jul 2026 18:19:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c729d40cc71df8f2f69001428478d70f20ac4ada2ff7df9b4d0cab87feafcf8`  
		Last Modified: Tue, 07 Jul 2026 18:19:34 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c64af7e9bb66f1288602784763b66872176a2c92aed1bed13e8f417bab21749`  
		Last Modified: Tue, 07 Jul 2026 18:19:34 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:584a3b07f5182f38ef52956d9f9bdf460530c2a504bdb8ec40147334844bc4ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 KB (638983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166b5f21ef4a5682491f36f5278d2906ab4887a1b3649179097e34c170b77c8a`

```dockerfile
```

-	Layers:
	-	`sha256:fdf4fab0b48c8a5177ce908d362f7fffac46f0419b717a8fd6351a6e7a335f19`  
		Last Modified: Tue, 07 Jul 2026 18:19:33 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bea7ae3086a25ec1753ce0f096b8dda09d9f3bb06407f4d5af3c47113611536f`  
		Last Modified: Tue, 07 Jul 2026 18:19:32 GMT  
		Size: 43.8 KB (43816 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:b6ee1580dfd4c967210bcf49df15fb6400a92ac51c3c8de0716593c250ab45c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116696207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ca715a8c874d2e60fad50ac420252d5f30d8e003630d6625e045867fbd3164`
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
# Tue, 23 Jun 2026 10:03:15 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 23 Jun 2026 10:03:15 GMT
ENV LANG=en_US.utf8
# Tue, 23 Jun 2026 10:03:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_MAJOR=15
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_VERSION=15.18
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 23 Jun 2026 10:03:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 23 Jun 2026 11:46:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 23 Jun 2026 11:46:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 23 Jun 2026 11:46:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 23 Jun 2026 11:46:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 23 Jun 2026 11:46:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 23 Jun 2026 11:46:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 23 Jun 2026 11:46:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 11:46:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 23 Jun 2026 11:46:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 11:46:24 GMT
STOPSIGNAL SIGINT
# Tue, 23 Jun 2026 11:46:24 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 23 Jun 2026 11:46:24 GMT
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
	-	`sha256:ccd8df36bc5f23a75817a1f7b76f219cdcb6437a8900fa4766b5375584844dfe`  
		Last Modified: Tue, 23 Jun 2026 10:56:35 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c821a46d9f863a203d39d66c8acc631329a61d26cc6fc1082d82bc9da9feb384`  
		Last Modified: Tue, 23 Jun 2026 10:56:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5a745fedbfd1c18f194840c6207040ec4df8a0f22b42e4366812ad7cb1eaa2`  
		Last Modified: Tue, 23 Jun 2026 11:49:32 GMT  
		Size: 112.3 MB (112260715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc51aac30e48e3fc617329d6454669617244cc8e933ddcb964ee2fa9023c036`  
		Last Modified: Tue, 23 Jun 2026 11:49:16 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6310bced336e628ec7a733fe249a479e54eb926f2dfd889f8575de9187ddd140`  
		Last Modified: Tue, 23 Jun 2026 11:49:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57d93e63f45801204f6b8bdbac64dd2b054b9467e2d3ad6b3c85d53902b19c2`  
		Last Modified: Tue, 23 Jun 2026 11:49:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e6144e9420a8738678b6559f0afbe0f408a39a7132fdb73b103e66b9d579802`  
		Last Modified: Tue, 23 Jun 2026 11:49:17 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b19902eb415712076438b870d34e4929be0c5be6c76665dd7f045825f467612`  
		Last Modified: Tue, 23 Jun 2026 11:49:17 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:69052818d63191038194d3904a6012ad0c10597553171ce10c63b4ef5933a309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.6 KB (640641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23eda9daccc05e25372373437817af74a19992fe2d9a9c87dd7558de6ac09d3`

```dockerfile
```

-	Layers:
	-	`sha256:c47d14a0316931efeb1108b6cbf8fa14e15c675a4c4e8cb4ab3e1e6b7a679a40`  
		Last Modified: Tue, 23 Jun 2026 11:49:16 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:452b94c7a6cf195067b35777385807bbe01a771ff60616562ad23f0d2ca6362a`  
		Last Modified: Tue, 23 Jun 2026 11:49:16 GMT  
		Size: 43.8 KB (43816 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:fcb132cc14bda94b85722f436b55609d438bc64edfcce040176d48fb0122f42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121185592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e7bef2c0ed824a8bc129f387d93f62b04452466ebc4ae35ba8051a2dc54a6e`
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
# Tue, 07 Jul 2026 20:00:44 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 20:00:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 20:00:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 20:00:45 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 20:00:45 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 20:00:45 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 20:00:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 20:05:04 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 20:05:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 20:05:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 20:05:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 20:05:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 20:05:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 20:05:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:05:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 20:05:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:05:09 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 20:05:09 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 20:05:09 GMT
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
	-	`sha256:03a8c7c164ad7e597a4a81f20e77815c9cf4b08def23dcffbef0c9f514a251f5`  
		Last Modified: Tue, 07 Jul 2026 20:05:51 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8798b2097cfe0fda36bd11c55f67801e4a5d96ea3bfff0fb56623e02538c5f41`  
		Last Modified: Tue, 07 Jul 2026 20:05:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fad8ce8c1772217742fb91ca804e458e52a4a610367d45f107e5ad7ad7281e`  
		Last Modified: Tue, 07 Jul 2026 20:05:55 GMT  
		Size: 116.6 MB (116586533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac064fae6e3e2fd1e7c8e09dc9e8a3d7638d40e55fe1c669287deac4df4a166`  
		Last Modified: Tue, 07 Jul 2026 20:05:51 GMT  
		Size: 9.5 KB (9456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d6aeab27462f23ece60b413c8a42e7e969bdbefb415cffa4ee59767bb563bb`  
		Last Modified: Tue, 07 Jul 2026 20:05:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee214574aeae68b52b8547d108b68dcd343f1eb1efba50cc721992dd8b981c0`  
		Last Modified: Tue, 07 Jul 2026 20:05:53 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c31248daa9a6bb59a5236c50ce868592943ab204c38ec4c4e22394519693cfd`  
		Last Modified: Tue, 07 Jul 2026 20:05:52 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285a9ff2ae6504c59e2f698872c88cecc4eed01399103a42b3e37f7c466217c3`  
		Last Modified: Tue, 07 Jul 2026 20:05:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:17b152a991bc30195f5d4eace116b0a796723bd62ec9702273542b7b7533d82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.6 KB (640575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215c782bd3b24f9859ff3d53db7ace01f223a68b1900878d4975d604209e14ff`

```dockerfile
```

-	Layers:
	-	`sha256:6f4936f2a67c09cf895d8bcd5d058d1cbe1855b0896351aea0a7746444c612b8`  
		Last Modified: Tue, 07 Jul 2026 20:05:51 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0222d4dc20ee78aebea0c5c7784d5e16af83ecc775c0a984cacaedad83d2e8bd`  
		Last Modified: Tue, 07 Jul 2026 20:05:50 GMT  
		Size: 43.8 KB (43768 bytes)  
		MIME: application/vnd.in-toto+json
