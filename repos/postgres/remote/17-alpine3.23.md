## `postgres:17-alpine3.23`

```console
$ docker pull postgres@sha256:2ad58d61b036d41f2613302e8c0fee03f6fe51e94d68087327ac45d1cebd4b5e
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
$ docker pull postgres@sha256:2c42c21a8909d1b656ac93348db2862b6bad38091a9b0d3d1485479465802013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116708394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb01dbab2f21a30c1188f6b05319df39b786a5845a5541299ed0dc3ed5bc69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:47 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:47 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:47 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:10:47 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:10:47 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:10:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:13:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:13:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:12 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:13:12 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:13:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813906b6fd4fb67d258c1f45b76e0b4fe3d4cc36519aa866a79fd007089f0e8d`  
		Last Modified: Wed, 21 Oct 2026 21:13:28 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bbbeca64598ddf69ef40991a7d53e85de9f1ac64b817e5c126cbef34f7be3`  
		Last Modified: Wed, 21 Oct 2026 21:13:28 GMT  
		Size: 900.0 KB (899994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590328d80c7692dee67480dca851e12fe7ed822d31d53b28c72d3ec703f005da`  
		Last Modified: Wed, 21 Oct 2026 21:13:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ee8e23829de3ada73302c8ee807ec5389c8f6f17440272c6630f1220f39fd4`  
		Last Modified: Wed, 21 Oct 2026 21:13:31 GMT  
		Size: 111.9 MB (111938492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e56e91e5da1addf12331e226acc3e2a45e8ca406a72dfcd363d65cff3de132`  
		Last Modified: Wed, 21 Oct 2026 21:13:29 GMT  
		Size: 10.0 KB (10003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e730896cded42473ac4d245d967de9d261966bbdf2807a7db1b487c5cd6077`  
		Last Modified: Wed, 21 Oct 2026 21:13:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fcb43aac7a5ce7bf59cf81682de320bad31f8624821a22bc84666e69e417cf`  
		Last Modified: Wed, 21 Oct 2026 21:13:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8e2ef79fdb6e1e8713f1504c4e56d85ba43956c39487dd92b3b07f315a5e4a`  
		Last Modified: Wed, 21 Oct 2026 21:13:31 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c988d6c442ed517541f9ced851cc1d49519ae125ba9c61cf89f0c236f5784d37`  
		Last Modified: Wed, 21 Oct 2026 21:13:31 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:9e8f2d9b3b0794f97bd93e5b65349473cb7fdb4d447fb73307363a60f8e388da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dbafb8c4cca1d60676463423c83b8ba662166d85dc5566e1cc5ec595ce73e26`

```dockerfile
```

-	Layers:
	-	`sha256:898c552492a21c43c1c491d32c7cd49fec465000a6500787454c8acf6d4e4e47`  
		Last Modified: Wed, 21 Oct 2026 21:13:28 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3a447b2edccbae98fbff8cad3bbe96bec99432d22abf8eed76a74a1a33fce7a`  
		Last Modified: Wed, 21 Oct 2026 21:13:28 GMT  
		Size: 41.1 KB (41070 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:f8fdd8f2b8c10ae0131d38c7d7ecf9ffce815a692dab9e8d9029f9bcb5871cbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112889923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7c38c32155da23e4aa18bf9302d905b9cde02a15155412aabf4570e35510bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:22:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:22:44 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:22:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:22:44 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:22:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:22:44 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:22:44 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:22:44 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:22:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:25:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:25:54 GMT
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
	-	`sha256:f0b998ad954df4be7f24cd435d97e662899bbac3a938b622d5b3d1e46b913dbd`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf14429f879bf006beeaaef85c9be87c656b9c614b1d889e94e1f9d7776e4c8`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 864.5 KB (864515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d54a1130a0ebdb2efbd8048bee9f60a8e6dba3f32edfdb8e16ab5760d5366e`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b88b010617f95d9e8e42906397934b93cc0966fd3ca7a39349762b016cf030f`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 108.4 MB (108449540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0feccdf8f3f99b6e134fcebdb5a872b427718e9f39dcbbef59aa9f76f8214e3f`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 10.0 KB (10001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969c6c165cd47f420f3843fc331e0c47e6790b860904d13a3c89185ba99efd0c`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed3280ae3803889cdb1045c8383d5b29dfff6d72bc32cb651211b639d1c2808`  
		Last Modified: Wed, 21 Oct 2026 21:26:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3586d5a07bfa676ba3a3b9869b1df3401defc09ca694f9820b6abb3205baf5b7`  
		Last Modified: Wed, 21 Oct 2026 21:26:09 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c53af9ed65e5be50f9a39000c2f2fe61a60e9fb343a3a2120e266c0d36697b`  
		Last Modified: Wed, 21 Oct 2026 21:26:08 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5a0ebdcef917c3b9cc7698d366359fdef3e1ea70cf392654763c753513173554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b32a649677d0c1dddcf2faf187bce52b2e779ac27d4a307d1f4f63e918df6`

```dockerfile
```

-	Layers:
	-	`sha256:1d43396d69237537265aebe39eb5f74c8351d6f1369333c4ae720bc305bb4811`  
		Last Modified: Wed, 21 Oct 2026 21:26:06 GMT  
		Size: 41.0 KB (41010 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:abb7466b51c72923da20893d41973115a85c8a9e471addc19ab95b7a970ca418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106570745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e06df3a75f03c4670750bf65206b77abd80ce35607ed9d1a10a246587de379`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:16:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:16:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:16:53 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:16:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:16:53 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:16:53 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:16:53 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:16:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:20:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:20:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:20:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:20:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:20:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:20:06 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:20:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:20:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:20:06 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:20:06 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:20:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e2f7b2b27a0ace7b652d267eff0d32df55cf02a87f337ff93b18d6487e04ff`  
		Last Modified: Wed, 21 Oct 2026 21:20:19 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa31966c88d895fa9540fb255a98c4165a9f4635238dd7ea972cfbc778503c5`  
		Last Modified: Wed, 21 Oct 2026 21:20:19 GMT  
		Size: 864.5 KB (864515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e11d3b984e10a76a80d781f8eb59e977100d85834660c55a69e4e537da81d9`  
		Last Modified: Wed, 21 Oct 2026 21:20:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac74ac4aba4bb885a4d6273f9c8373dce70b66547bb5bba82c103fb7247a5b7a`  
		Last Modified: Wed, 21 Oct 2026 21:20:21 GMT  
		Size: 102.4 MB (102421513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d531bd3c33a6dc648380eec9babfd213e416bb074c58b47e02284d2d6f07e65`  
		Last Modified: Wed, 21 Oct 2026 21:20:20 GMT  
		Size: 10.0 KB (10000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1269d282bb831a866d12e61e8662f3b6a3ca322779230b34738faf42e92666`  
		Last Modified: Wed, 21 Oct 2026 21:20:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2b0a594e368f091de626d62779b9f5af844592f6d8ff97e6abdea823878782`  
		Last Modified: Wed, 21 Oct 2026 21:20:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74634999b1fa6821fac531d89e9f1da6f5481d4fc507997e9804ae8ede9149b4`  
		Last Modified: Wed, 21 Oct 2026 21:20:21 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03896eaefc45403f4ff49b1dc10550d0278e88e261f1190ab5dba507fc3ec2cd`  
		Last Modified: Wed, 21 Oct 2026 21:20:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a703bd2444e496e04708f8f5de9671d09566356c2eaa1a0c1763103eb33dabae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.1 KB (638053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0fdbf70f193ccf9d684b7915924e6acae5493043d619bf77b58667c138319fb`

```dockerfile
```

-	Layers:
	-	`sha256:aad9649b4ce425d32d27b3fe6aed4c234e42f3aca85202deb8f88f55b7cbbeca`  
		Last Modified: Wed, 21 Oct 2026 21:20:19 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0a1f5fb5ac944eb5df068737bdc6b40e8fdd26127d8631c71a9fe117ccb3ca4`  
		Last Modified: Wed, 21 Oct 2026 21:20:19 GMT  
		Size: 41.2 KB (41225 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:0891c13526bf0a7438b5bd402f20be784b8ed9d89513f99751a456057540bee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114528811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a222dbdebc3877877e959233191134385c98ea02cfb60f3753cc18f17f023b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:05:05 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:05:09 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:05:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:05:09 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:05:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:05:09 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:05:09 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:05:09 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:05:09 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:07:33 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:07:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:07:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:07:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:07:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:07:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:07:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:07:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:07:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:07:34 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:07:34 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e974d3ce6421ea542bd012225940bc223e5f5c225ecca7a823923b0581d3b2`  
		Last Modified: Wed, 21 Oct 2026 21:07:49 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b370009239efeec13aaa6844ac24224d4cb72f9374b30ef360ec07b110c13b22`  
		Last Modified: Wed, 21 Oct 2026 21:07:49 GMT  
		Size: 852.0 KB (852037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da8789c1ffcbf8aba68069baff416ad1a41a89a8e4ed585aae6516099fa024`  
		Last Modified: Wed, 21 Oct 2026 21:07:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d449aa28c52cd5aeed6a87a6677a1dafdeae0c7cc70214203ee5553e9344800e`  
		Last Modified: Wed, 21 Oct 2026 21:07:52 GMT  
		Size: 109.5 MB (109469604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d563c185841c14f681f84938c7b642342fca6d5af967f1496e991654bef8d55d`  
		Last Modified: Wed, 21 Oct 2026 21:07:51 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ebfb3d049645ecc208d3537d52f5cd3c2bbfce0c25d7dabe6dcdce26b9eaf71`  
		Last Modified: Wed, 21 Oct 2026 21:07:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c934d102875eeac31fd5dfe63d74b03baf7fd4fbea51c784d2c598f39d5b325`  
		Last Modified: Wed, 21 Oct 2026 21:07:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f66f9a7b04ed583feeff073071ea13d478b39fbbdd295f7771f0fd116aa5cf`  
		Last Modified: Wed, 21 Oct 2026 21:07:52 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ce84f63dd6defbb81afdd9fdd11ad44714f8be9538c44d5275335270c8bd89`  
		Last Modified: Wed, 21 Oct 2026 21:07:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6a83e4582ae98b291528ecd286994657fb4181350e5dda013bfbfb080e100450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.1 KB (638090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c5995dd818b4b9e0da35f7498668b87372783373b26b419f1b89c56f234ae6`

```dockerfile
```

-	Layers:
	-	`sha256:cc867b4b6d662b69510621848abaeb9ac356507256391624655c9e888e0d7e83`  
		Last Modified: Wed, 21 Oct 2026 21:07:50 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2759a1a17167e4f0ccd2ffdeaeebaf93e0dc98f97dab0d02dffb8f134d2a621`  
		Last Modified: Wed, 21 Oct 2026 21:07:49 GMT  
		Size: 41.2 KB (41250 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:f8b2c58def425e3f4306fa1aa12b5a97e2777894b90f6099abed092ed86573c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123406312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce3af3a3266956ed84818fafc257b36b6c713f900deed3c8a70942b40c14ab1`
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
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:10:45 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:10:45 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:10:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:13:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:13:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:13:30 GMT
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
	-	`sha256:2088b140d474cec9f51e366421ac9f1388b192a06548dab4a03d9a456572ff95`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd96af9e6a8d28e01b513ac729a13d6938590688b08c02d5d1a89503610e0b2`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 868.0 KB (868012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcff9a4f1d12300986c7080f0fbc6531693863bf5363a0040d743bdb0e25bad5`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9078e6f270170f8dac134dd867aa9a295e760494f8e5205817673342651269`  
		Last Modified: Wed, 21 Oct 2026 21:13:50 GMT  
		Size: 118.8 MB (118843325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bd26fd187f3f225ff63d4dfe495e86e41bccdc6b1c8f6b375f376e33916f03`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8c17eeeb773d53a9516ce05918a1a11a17109ef023b496ffd585ff29eefdb`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca634a63ab2f39078441f733055f5ed0efbd69fb26747d4c0819c375c38e6785`  
		Last Modified: Wed, 21 Oct 2026 21:13:48 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e0211b8700d0d84ddacbdf9588fb61df3c52039cff1eaa6c6ae8416fa243d2`  
		Last Modified: Wed, 21 Oct 2026 21:13:49 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307a2fc78e285bd9a90a3656fe3c96f320e13c15201ea4691f71b3c5cdd9b8b7`  
		Last Modified: Wed, 21 Oct 2026 21:13:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b64bf672d5b083c89def0e9fc51390d44bb6f88bfd1cab1ead071d4ce2f38ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf50f570ca032e9b03f6c36a24b0d29164cbb8ef268d0caaa39e59911845f70`

```dockerfile
```

-	Layers:
	-	`sha256:da6025a92334a641e9acf241fad335fb9132527669348dfa6f0ea392f4895077`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:904be69808f6007195274737d83b354e0a9d08068216b77ae96febf585a6753a`  
		Last Modified: Wed, 21 Oct 2026 21:13:47 GMT  
		Size: 41.0 KB (41029 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:4a2d2c2f31c7fc8ea68b1015cf03911eae88451a5450a663545475492036c22a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119460974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4157a5ca77c911d4688c56d33d031e39a8b62c13bff8af6826c76a02d184a658`
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
ENV PG_MAJOR=17
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_VERSION=17.11
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 17 Sep 2026 23:14:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:27:07 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:27:07 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:27:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:27:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 17 Sep 2026 23:27:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 17 Sep 2026 23:27:08 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 17 Sep 2026 23:27:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:27:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:27:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:27:08 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:27:08 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:27:08 GMT
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
	-	`sha256:12f34e96b6e864bceaef21354f30624c72022eb1dcea274e4017913d55a213f9`  
		Last Modified: Thu, 17 Sep 2026 23:27:42 GMT  
		Size: 114.8 MB (114769824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1949fedb2a8e7ec14b8a3b17886945b6141c563b2214c574a4d1813ea7bd9bb1`  
		Last Modified: Thu, 17 Sep 2026 23:27:39 GMT  
		Size: 10.0 KB (10002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d338152d86e28f446807469d1d82c897ad8b3ee4e4eebee8608b5628e2a0a266`  
		Last Modified: Thu, 17 Sep 2026 23:27:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3f9d34f8231098a2eefa4b43601d665eb4efcb70af4cd2a498e954dd31e39b`  
		Last Modified: Thu, 17 Sep 2026 23:27:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88457bfe25056086fbf71e71455c57a3340bf5e4109661e91dc00cc8c182f9d`  
		Last Modified: Thu, 17 Sep 2026 23:27:40 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63985a61f1d9d5ab88fefb952c64b208437ee88948c83503d3a87eef8d79ce2`  
		Last Modified: Thu, 17 Sep 2026 23:27:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6cb7a7c65db757d53d02e280d28c0e6d265b2cb42e82b09f783a2cedbfba41d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.3 KB (636283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c3ef38601007219e021fff31a7f36db51a172254ba776cf24d6788372aa297`

```dockerfile
```

-	Layers:
	-	`sha256:1c541b9e1ffd31f98baedfc52deabae6477164cfefeaa7adae5e8db2300658d2`  
		Last Modified: Thu, 17 Sep 2026 23:27:39 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef05822e6cdbd8cdd050dd739a2d4a603b348cba65c95c75e9c0eb9131d85cea`  
		Last Modified: Thu, 17 Sep 2026 23:27:39 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:00918b109fff648372a671de94ae7c44e16e0822ff2a20d1392254c63db78c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118918913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a76e78f4b33a03350323c12ac3e615f2f4cfddcab1ef0cd782c9273daa62c2`
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
ENV PG_MAJOR=17
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_VERSION=17.11
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Sun, 20 Sep 2026 20:31:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 21 Sep 2026 01:22:33 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 21 Sep 2026 01:22:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 21 Sep 2026 01:22:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 21 Sep 2026 01:22:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 21 Sep 2026 01:22:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 21 Sep 2026 01:22:34 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 21 Sep 2026 01:22:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 01:22:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 21 Sep 2026 01:22:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 01:22:35 GMT
STOPSIGNAL SIGINT
# Mon, 21 Sep 2026 01:22:35 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 21 Sep 2026 01:22:35 GMT
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
	-	`sha256:21a80313df2b700982771b550906d3d8efd4943b07aa37f89db0aa38fa926179`  
		Last Modified: Mon, 21 Sep 2026 01:25:56 GMT  
		Size: 114.5 MB (114478609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cf63f5a7a436132a66cdaf759faf811f4bd9ee66b9460155b4293e8684aad0`  
		Last Modified: Mon, 21 Sep 2026 01:25:38 GMT  
		Size: 10.0 KB (10004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2614094dc51d67022160c0b21b18f3f88b218225b8cb8b12649668c91d474dfc`  
		Last Modified: Mon, 21 Sep 2026 01:25:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8a8470f2d86317b84e3be23136c40d6a40b3ef6ac333e045456b22c2d0ff6a`  
		Last Modified: Mon, 21 Sep 2026 01:25:38 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3552eb0a030c64af8c39b9a0d083055113f2a0baf4ba59ec0b4c3111073f90`  
		Last Modified: Mon, 21 Sep 2026 01:25:40 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655ac911d3c73cbcbd0d9d19ca4fc23f98453e81bf5a627e0512f615ef47d74e`  
		Last Modified: Mon, 21 Sep 2026 01:25:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:ebf0082c133fd03628bc9ae1499f4b57ec34da2043924991d8a1c268723f2c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf0d825251e4e76d40c8451c1d8748a2ef818066450f1527f352f9c4ca62a62`

```dockerfile
```

-	Layers:
	-	`sha256:b8ee11ef3671b51676eb434091578c4e94ae38fbf6404a97c52a1863cb0254b1`  
		Last Modified: Mon, 21 Sep 2026 01:25:38 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44d9944f0e833da0ccc3feacc502881ec522e9ba79e90fb83deaac0efb40ae78`  
		Last Modified: Mon, 21 Sep 2026 01:25:38 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:21a8fac9fb8176920b00d626cc9a1711b3ebc8d04be880c86d267588d5ab0c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123220352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522279edb9a669a6cd64ae05882cb2804291f39fadf1fa201bcac0f8e0747782`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:32 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:20:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:20:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:20:35 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:20:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:20:35 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 21:20:35 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 21:20:35 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 21:20:35 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:26:21 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:26:21 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:26:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:26:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:26:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:26:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:26:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:26:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:26:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:26:22 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:26:22 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:26:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c950a25b78997e86d5b309c637cdddccfeb5d98a343b24b813c3fcd6ef1a6ce6`  
		Last Modified: Wed, 21 Oct 2026 21:24:19 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd4c1edeb4d0228176bf3bfb345bbee5f3af911d694a978042ac01deb24a5b0`  
		Last Modified: Wed, 21 Oct 2026 21:24:19 GMT  
		Size: 874.2 KB (874209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c12d034380ee2f9899cb4902535da078b5387160156890033cd88166be63b7`  
		Last Modified: Wed, 21 Oct 2026 21:24:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb059f91c67710cb24a4941441998bbf279dd091dab3d2e58c6d7f41916c0234`  
		Last Modified: Wed, 21 Oct 2026 21:26:50 GMT  
		Size: 118.6 MB (118611346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58256a6854d4fc42d844c99eed2920b4482316b096950e8184f084aa6ced3619`  
		Last Modified: Wed, 21 Oct 2026 21:26:48 GMT  
		Size: 10.0 KB (9998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2341e0428c5ae052db798199696ff8c15c4f2cde3eb700a872344cd3d270e3`  
		Last Modified: Wed, 21 Oct 2026 21:26:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d259b5d099114f53588bfb8bfaa63c9a9fa62a3525d26691eb42cd41f4ad7f12`  
		Last Modified: Wed, 21 Oct 2026 21:26:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6632dcd879ab545c16722a743e285d281e8019ab292b3f6251553a5bb59e8ac7`  
		Last Modified: Wed, 21 Oct 2026 21:26:48 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c97efaa32c2dbfc05aa35eb4163907a6bd5a491bb72e85b4237f00322cef0a`  
		Last Modified: Wed, 21 Oct 2026 21:26:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:01def19bbe6cd683ad519b2fd00dc135c81cc475d2f73c4df6021c15cdf24f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dd9a61731a65f1c6f3d84537316ef3e295911bf65f0d1f8de676b1cbf945a2`

```dockerfile
```

-	Layers:
	-	`sha256:add965a4bb2f9404c422f74d38dfef733ae64a50fece0fd08905ab53b55c62e6`  
		Last Modified: Wed, 21 Oct 2026 21:26:47 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:038f7acafcaf829cb8561a395dc1e7c7871e810eb690a6057399f864e8c98404`  
		Last Modified: Wed, 21 Oct 2026 21:26:47 GMT  
		Size: 41.1 KB (41065 bytes)  
		MIME: application/vnd.in-toto+json
