## `postgres:16-alpine3.23`

```console
$ docker pull postgres@sha256:ad0cb840d55b753f671c515ac80d6e07b8d73c05c1e7452b1f1975a9ebc2c8ed
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

### `postgres:16-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:40d24790c1cc175f4245cfc730389fbc122f43d9af3f8dc2d4214902920e0899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115570057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe6b545da8a850f724c036f0d99ff3a4a8993f87fa377297bbe719c0c6aee55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 21:10:49 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 21:10:49 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:13:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:13:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:13:15 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:13:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff87e200170f3cd88c8e546b78ecf5491f2926ca8cdc9cc8cd9680785c4173d`  
		Last Modified: Wed, 21 Oct 2026 21:13:31 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b805b606edd7845238309b3010812603bf01e1f1d5f9c4bc59aa153f07fa9bf`  
		Last Modified: Wed, 21 Oct 2026 21:13:32 GMT  
		Size: 900.0 KB (900019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8579cb9eb9ef9825ef732f1753998199a36a37a6ae88bac72353d6f0ca73e73e`  
		Last Modified: Wed, 21 Oct 2026 21:13:31 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bbffdb77f91f5ff518deff19bfb730b0f024830a5b170458751b654ff0e196`  
		Last Modified: Wed, 21 Oct 2026 21:13:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2d8c2d35c9b6bbade0b100297baa6d4f99625c24d3b65f6ea04866b8ebee35`  
		Last Modified: Wed, 21 Oct 2026 21:13:36 GMT  
		Size: 110.8 MB (110800293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e3f75328ec54fae9f019450581e1d110e0695835d4f4911b4701f61826b434`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ea70dfd4203b809b5f8fd2d95c19e5ae20885e4267438b6cbb53092ca38b72`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde7cc319fca5642d4497c754f869eb3d64646665e4420ca38390c4b5702c47e`  
		Last Modified: Wed, 21 Oct 2026 21:13:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2162e0f208dbccba8d515767e4f7f3a481f919dcfd970cc10d50c4545f832ab5`  
		Last Modified: Wed, 21 Oct 2026 21:13:34 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85667dc2174b750a1ef2a4d403585b386fc5d1a4f330afb94bf35921b915fba`  
		Last Modified: Wed, 21 Oct 2026 21:13:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1103acd8768b0bf5b720c2d8b2b14b5886a4eb3ed98bf41a8740462a7d35ff5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 KB (641142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dc4ef7ed081143b28be5a4039ed322ae38240fef4d7746c1916fa3122eea36`

```dockerfile
```

-	Layers:
	-	`sha256:f5d803d1adb25d43319ca134cfd061fd835dc285d46c799a9c7fe06c8340864b`  
		Last Modified: Wed, 21 Oct 2026 21:13:32 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0968f5f778ee1971bb8dbbe8937f44bd3e5ca1f8163fa91f4c44781d5975dc29`  
		Last Modified: Wed, 21 Oct 2026 21:13:32 GMT  
		Size: 43.7 KB (43684 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:42149bf0ff1a04542e7cb444f78200347a2ee2cb5bcfed02decee00af8bd9033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111794026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6181a2794964713499ac3e3ca76bdd0ca1ff3efb0d707799890f92b97a335145`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:22:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:22:52 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:22:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:22:52 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:22:52 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:22:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:22:52 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 21:22:52 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 21:22:52 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 21:22:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:25:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:25:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:25:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:25:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:25:54 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:25:54 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:25:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b8ce3e255595df3cd71bac405dc941d9f4c92c74498dd51f2f0fde32883fcb`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80349b9bf6bfe102ec49d9bbdd5ccab503d7d32db644f6aeb3a711fce6a844e2`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 864.5 KB (864506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97962e1814bcaafa307b1c55663e381659bd5a05c596f67b25e5ed4b667d7539`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6799d4c3cf3cec950cf177e7823ce63325a251cf8553e411d7c678e1ce91784`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a726efbbdf02e1eab5c8d121abd5c1b9840edcc60511adb060e2be7538f694b2`  
		Last Modified: Wed, 21 Oct 2026 21:26:16 GMT  
		Size: 107.4 MB (107353818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d2b97fc3f43afbe5a63d7dcac4faae267b178917fe14abdbacb47a5199b992`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5225853833e171b3508682a5d3d758d749db8abe7ff370a53e285f418acfdb58`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed3280ae3803889cdb1045c8383d5b29dfff6d72bc32cb651211b639d1c2808`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa85895c09caca760156597a5113b7a2a7a3231e677fb567cde2edeec9e60b15`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fa8b099ed8c0b4d196719ccadfcd5e6e289af4fb0b060be4d1419d011e5c53`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a0ce425a5d9640bf563c1b2ba4bdd3a46e94f4cc18b2f8fe79ef4e46c4bc4061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 KB (43636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1702a7aea79d917dd448f6881ca5b135b04cb7a6667aa4e7403943a12cb0ac5c`

```dockerfile
```

-	Layers:
	-	`sha256:d77e69973ae7efd25c338e9cf71e79ca0378d3212466f2ba8ba864f3778aad8f`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 43.6 KB (43636 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:08e4af621f19ec4342fb14ba2a06116e518e89580e2185950c75fb07db38a425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105510736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab5b155df827be83f9343c64c63095fb0ec1fbf202b24af4d34deec502231bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:17:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:17:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:17:15 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:17:15 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:17:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:17:16 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 21:17:16 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 21:17:16 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 21:17:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:20:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:20:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:20:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:14 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:20:14 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:20:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87280e2ca5e17522980704b04bda05dc9f7cfde5439a106ee0685cb7bfbc70fe`  
		Last Modified: Wed, 21 Oct 2026 21:20:27 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bbb546a4312f0a22ca0fd0fea08db869fff1f0b517de02ac1fb0fe16851484`  
		Last Modified: Wed, 21 Oct 2026 21:20:29 GMT  
		Size: 864.5 KB (864513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a8e4c8bfafdad171530677f941be0e980e9e0c7d06656fb368c532b22ea80a`  
		Last Modified: Wed, 21 Oct 2026 21:20:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2facfc726b06da6d510a35d81aa85f98ef0e4e33de68911632b63ad74383413`  
		Last Modified: Wed, 21 Oct 2026 21:20:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f422314b339e97d6d7ee22818c4e5e2ef5edcf8e6604458d77e4dd966aef8863`  
		Last Modified: Wed, 21 Oct 2026 21:20:31 GMT  
		Size: 101.4 MB (101361668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39c3eba1e99ef5b4018cd9c27ea80d102c62b726f45cd4c6032481c0ef8bf5e`  
		Last Modified: Wed, 21 Oct 2026 21:20:29 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07004465ba5bcb0c52d78463b55eb4e3477b816ab65708fbe099c459e031578`  
		Last Modified: Wed, 21 Oct 2026 21:20:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6bd3baf4b5afb1151aca17e153c84b3986264ea262d3eff29eaf7087bfba50`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100d966333ed174ed38966a0b6d54fb13617b1f223c06399a84dfd18ad4fdeb8`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26376c838e0e030c184e63d334ab680ca1fd958d53b29e00bd231183ffaa71af`  
		Last Modified: Wed, 21 Oct 2026 21:20:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:670f89bc8ee77fec7f78b91d5e341aec75b68eeb3bc1460975e7e7e8df2a37ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.7 KB (640680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a5029c0758654f6427365a36ab3bcbda7e8303d197f9d8b7e9b61edd8d2a2c`

```dockerfile
```

-	Layers:
	-	`sha256:88b9a8ae57fc500c954ed7798751aa2542ef86c4827ebcc5656924530c2c8049`  
		Last Modified: Wed, 21 Oct 2026 21:20:28 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d7d0bf178af22b85071e862b771a7746897dc8a6b3401cf887404b073b5cc5d`  
		Last Modified: Wed, 21 Oct 2026 21:20:27 GMT  
		Size: 43.9 KB (43852 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8b9bfe10cefcb2305d61106162fd185f1b6da0d4cf34924fb8a362957ff8f90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113402762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d7637e57d4a246854e0c62921c1409bb4e03adeb966542bc37fbe9b496e5b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:23 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:31:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:31:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:31:26 GMT
ENV PG_MAJOR=16
# Thu, 17 Sep 2026 21:31:26 GMT
ENV PG_VERSION=16.15
# Thu, 17 Sep 2026 21:31:26 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 17 Sep 2026 21:31:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:33:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 17 Sep 2026 21:33:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 17 Sep 2026 21:33:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:33:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:33:41 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:33:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:33:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae9e3f2dedf00beef11234b6ff0f95b3c77b21faae51740b84e38ea5f44971e`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360225e4051bda7626abd3917d266614dc9dbdce48671db3974eaa1d3dbe152e`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 853.4 KB (853412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051bfe3016ba5ef4536b7a3d9898f95bf8ffa550429b640032d767c99bbbefd0`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf430bb0bfe863f45892c59cf71c1dac448f088a30e8c594d70b620e7ce278ed`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77d69964895a9f7d1d819cf96d67c291390b489d959b0b3a00ee2bddb8876d9`  
		Last Modified: Thu, 17 Sep 2026 21:34:00 GMT  
		Size: 108.3 MB (108345772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c977d106e2cc868b90161904c951162712d335c350859749e13a7289b13a0c0`  
		Last Modified: Thu, 17 Sep 2026 21:33:57 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1b969620179f197502449d18be925f003355ef91dfe61efe87dd4d1546a2b2`  
		Last Modified: Thu, 17 Sep 2026 21:33:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d65226173a82a486c4db352e89b014b31f4425de375e1ee0b6ca195b25e8ea`  
		Last Modified: Thu, 17 Sep 2026 21:33:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b3fbebc4836e76b8ecd68931e6c3919cfc011b696496eb84454811d7284799`  
		Last Modified: Thu, 17 Sep 2026 21:33:59 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36184cbc8b139b1862df60f8a2c850fe1f451d039151419e7f466fd88e66c88`  
		Last Modified: Thu, 17 Sep 2026 21:33:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:ac63e7d468fa99b3cefb019e5a94d9265748e78e7c184f8e35137689a4c9fdb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.7 KB (640724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ae6808da6b7be151a1e8f11cfd6a028c7d80b3d32cd79a015e1ba82ad101d7`

```dockerfile
```

-	Layers:
	-	`sha256:70a705c5e8c8c56ca3b0bd35be5e7f0ce607117078364242a0cd1a73d8ea2a77`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3956c8ea2baf735434d7207e5bc4f9a4dfaf61af9c9926bab178f02b514b1da3`  
		Last Modified: Thu, 17 Sep 2026 21:33:56 GMT  
		Size: 43.9 KB (43884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:91bd3b3b6ab2272cfaab3a3779ddf38ca4c005efd6b98586a8cdfcda96617291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122227892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bd80677d1a7eaf8c6c50162e48e35ba479abe619a13c6747406eba3c4f4a8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 21:10:51 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 21:10:51 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 21:10:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:13:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:13:31 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:13:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:13:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:31 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:13:31 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:13:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1152e48ac0cff43f75f0bdccbd12d68b5991a2ae30d4fd44729151d0daf31922`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a057c133daec97dfba1ac29b307bab355e2315042da8303bf6f3bd98eff806`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 868.0 KB (868018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3723ae0d2c2e765b0dee1568edb0a3c37e3a97ac925102726924189861454a`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d100c849e94c50d9a0ad9320a4fa29d57f24053441f5e25d9a8a65f36644d2bd`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353141a7dc667bacbd179df744fc794b59f7cb23ec00860673b4543cf5651e1`  
		Last Modified: Wed, 21 Oct 2026 21:13:52 GMT  
		Size: 117.7 MB (117665052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cee47d176554af84dab4e721088f5329569e556c8044daa292e1ffc2b885b21`  
		Last Modified: Wed, 21 Oct 2026 21:13:49 GMT  
		Size: 9.7 KB (9672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8c17eeeb773d53a9516ce05918a1a11a17109ef023b496ffd585ff29eefdb`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc700509791877d5814be73840d4aa7c9b0fefa6bc377b8905eb2fa180478cf`  
		Last Modified: Wed, 21 Oct 2026 21:13:49 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6714cbae1295f5d675394001add7cc4945485e268df9b6b74dce1076fd822f1`  
		Last Modified: Wed, 21 Oct 2026 21:13:50 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307a2fc78e285bd9a90a3656fe3c96f320e13c15201ea4691f71b3c5cdd9b8b7`  
		Last Modified: Wed, 21 Oct 2026 21:13:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c2c744fbe2d6445eafd44bd7d08dbb0005a552eec22704cc5368645b3a198437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 KB (641089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c9b152a587cb4883c5e03b6f9f09e6d697722854e799bdbb54274b7e65f69c`

```dockerfile
```

-	Layers:
	-	`sha256:48388d7225b1277b49358e90ce566c8242cf578b46ad5c0116a00bbed4a36221`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a669dedb551666eb13cfdccda0cc0b856b38404cba24966086a5d6ccd8ac5abe`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 43.6 KB (43646 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:17b29a4975c46a7d9025c3d5746971873a459ca9c8454919225cefd263cbb220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118256877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e827a4009e9d9fec2e2be5b4f612f7836ab631698dead748fdd5cb9fcd4009b5`
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
# Thu, 17 Sep 2026 23:27:56 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 17 Sep 2026 23:27:56 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:27:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:27:56 GMT
ENV PG_MAJOR=16
# Thu, 17 Sep 2026 23:27:56 GMT
ENV PG_VERSION=16.15
# Thu, 17 Sep 2026 23:27:56 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 17 Sep 2026 23:27:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:31:11 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:31:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:31:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:31:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 17 Sep 2026 23:31:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 17 Sep 2026 23:31:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 17 Sep 2026 23:31:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:31:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:31:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:31:13 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:31:13 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:31:13 GMT
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
	-	`sha256:7119397129d65602492a29a4aee049581173cd9c36c0753e1564e666a935ecd2`  
		Last Modified: Thu, 17 Sep 2026 23:31:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63e1e66095831aabb05c7fbabcc4eb74158602f5b16d691dc1d1d0c513126b3`  
		Last Modified: Thu, 17 Sep 2026 23:31:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6aad126fe65bb01f9a660d13b0a3bf2648a0177d3e196af0f3c7114939db7b`  
		Last Modified: Thu, 17 Sep 2026 23:31:47 GMT  
		Size: 113.6 MB (113565876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f8c7fa6ec0f2377dac9a8a9a53bf60f894055c2b2d0a76d3f045ea1ae6127f`  
		Last Modified: Thu, 17 Sep 2026 23:31:44 GMT  
		Size: 9.7 KB (9677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1646450ad479101924568fa14439f89c33a2ef2332a203a41486a8cb3c98d60`  
		Last Modified: Thu, 17 Sep 2026 23:31:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32bad8a85a7ca2ab93fa53ea860476124fce53022aba00ee6e2a628f6e33e34`  
		Last Modified: Thu, 17 Sep 2026 23:31:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca19176b8cb36c9e6df50ddbdfd852ed4b343a769bab731a2dcb06baaeaff81`  
		Last Modified: Thu, 17 Sep 2026 23:31:45 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d69dff54da3788b3b83e7ad30a15f838ee803f0bde8a2c5a4cd84d07146b469`  
		Last Modified: Thu, 17 Sep 2026 23:31:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7d3437535602e8a9ea653c4628b161da14628bb4c133110843673c17b2ce1c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.9 KB (638899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343b8e075782e770d9e6abe92473a3829633c954ce57ed121a1e62ebc4b6870d`

```dockerfile
```

-	Layers:
	-	`sha256:2b8ddf6b3747a3399f54bfecdf258b123f4180a239d02e879784cb79c678f4dc`  
		Last Modified: Thu, 17 Sep 2026 23:31:44 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59b1941683617a766e14a2920f9fc09d12dca898e4aabbc3fe6b7e39cecd2444`  
		Last Modified: Thu, 17 Sep 2026 23:31:44 GMT  
		Size: 43.7 KB (43732 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:e4b97fb0d8242048f22864b7441cff2e509b9c6944cc2e93898f736a60d19d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117658582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f89345910cf730c6403fd3e2ec8dc96d8ba1671d370500bb96583b3074064b`
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
# Mon, 21 Sep 2026 02:24:00 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Mon, 21 Sep 2026 02:24:00 GMT
ENV LANG=en_US.utf8
# Mon, 21 Sep 2026 02:24:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 21 Sep 2026 02:24:01 GMT
ENV PG_MAJOR=16
# Mon, 21 Sep 2026 02:24:01 GMT
ENV PG_VERSION=16.15
# Mon, 21 Sep 2026 02:24:01 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Mon, 21 Sep 2026 02:24:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 21 Sep 2026 03:17:13 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 21 Sep 2026 03:17:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 21 Sep 2026 03:17:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 21 Sep 2026 03:17:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 21 Sep 2026 03:17:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 21 Sep 2026 03:17:15 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 21 Sep 2026 03:17:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 03:17:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 21 Sep 2026 03:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 03:17:15 GMT
STOPSIGNAL SIGINT
# Mon, 21 Sep 2026 03:17:15 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 21 Sep 2026 03:17:15 GMT
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
	-	`sha256:de7ab81aedc068337950126271cb62073884e63195f5bd1b1710c699805c0b6b`  
		Last Modified: Mon, 21 Sep 2026 03:20:14 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6080ddcd033487368b11996e39600f519978d51860208d44af9e9bb71eb37f01`  
		Last Modified: Mon, 21 Sep 2026 03:20:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ba07316ece4a1c99293f93c7c8031fc51cca8e9cfbee20e1328a7627a5384e`  
		Last Modified: Mon, 21 Sep 2026 03:20:31 GMT  
		Size: 113.2 MB (113218424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252b9a04ed39d7c2b05901bdb944058f3261f8c6b689311661a81cb62d8622cd`  
		Last Modified: Mon, 21 Sep 2026 03:20:14 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e125e71e94d373b22cdad5da70b69935ef7dc8e34b4c9e311c2a3ab3276f842`  
		Last Modified: Mon, 21 Sep 2026 03:20:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1612a9a39a3c39b73d7f34b0667277b6e06be67b6dc5c4f28faca5580cc96c70`  
		Last Modified: Mon, 21 Sep 2026 03:20:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6e9f0ac2092a6eaaead52a0b951c752b515a44e7f4b64ec6bbb0554701204c`  
		Last Modified: Mon, 21 Sep 2026 03:20:16 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863ca8aa64ac7b33dbd2924a6496bce4df32fe69e7cf45be7512bbb4ecd13173`  
		Last Modified: Mon, 21 Sep 2026 03:20:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:f293328ba587addc3d16c43bade66033be25a6993c9f23707111fffe2b65b6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.6 KB (640556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e0150f00815cad52d7a0accd32fef16d07833f7321b9a250075bbebc632554`

```dockerfile
```

-	Layers:
	-	`sha256:c79392ca5716154edde32f73ba3fbc8ad4a78b73e6e065a2ccf6718b05dc7003`  
		Last Modified: Mon, 21 Sep 2026 03:20:15 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dfa51d5a2f0032b5d9488677c345a050ebe924e7deed5f86a3667a71eb0ec37`  
		Last Modified: Mon, 21 Sep 2026 03:20:14 GMT  
		Size: 43.7 KB (43731 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:d46a9b84d90ff91525a4a0138335272d2f3c3bf3d124abe4713bd3cd7d0a21d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122054142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ca87b9af8e851814af0b522647917ccee6e5fb661298d0f1b34e5015c3e5eb`
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
# Wed, 21 Oct 2026 21:24:27 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:24:27 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:24:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:24:27 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 21:24:27 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 21:24:27 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 21:24:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:27:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:27:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:27:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:27:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:27:40 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:27:40 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:27:40 GMT
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
	-	`sha256:86b9f2485a331417cf391f0ddb02f02d20f7d7270e7cca59baf5b58724c0166b`  
		Last Modified: Wed, 21 Oct 2026 21:28:04 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8df044615ab61f878112dc2612d1e5289b5c781105e9debe823c09f3c2821d5`  
		Last Modified: Wed, 21 Oct 2026 21:28:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ae69f055445277b37c901a967d4c5858c8d402c0817d917c900e2bafa0506f`  
		Last Modified: Wed, 21 Oct 2026 21:28:06 GMT  
		Size: 117.4 MB (117445283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5996b2d48923b63a148074810d194cffb2ccb36da2b5811fd222f3c32cc1b4b`  
		Last Modified: Wed, 21 Oct 2026 21:28:04 GMT  
		Size: 9.7 KB (9672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f29a4872c41441e7eefa5f67a987716becd2545f32164fb2785ec77e13a3058`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8630c0245e133fab2b66e12c83173d50241ab58cfc2639433c3e08ba00abeaa0`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b3187a8ee8a8be9f5a90daddbd59e16be799362a65aaf7fed93a694960743`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ee3a7acd3f911386dcdb40532f132739bb1db946c5d32b4b2edc8e5e6343ee`  
		Last Modified: Wed, 21 Oct 2026 21:28:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:83d9426c05c41e1ccb9d829c1876d69f8eab462b051be72cba356c479add5417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.5 KB (640491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad17999844afe67fc2314de5460afb2aa439de047e221e112e941406aa20d3e9`

```dockerfile
```

-	Layers:
	-	`sha256:57789dffb2052ff718603e0e42238081b4e4a3ab6d36e39e31169f591d6cecc4`  
		Last Modified: Wed, 21 Oct 2026 21:28:04 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d681149682700ea5f3989e88831c5fb67f54cee9c2cbc5d581734dfe2aff1db`  
		Last Modified: Wed, 21 Oct 2026 21:28:04 GMT  
		Size: 43.7 KB (43684 bytes)  
		MIME: application/vnd.in-toto+json
