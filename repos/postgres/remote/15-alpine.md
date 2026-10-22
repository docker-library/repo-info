## `postgres:15-alpine`

```console
$ docker pull postgres@sha256:d2c2ced0372e855e4c257a9e9b5725f403847c01cfb64facbf2b21dbdadb2d74
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
$ docker pull postgres@sha256:1d4031d6ed0a9b774b365f99a3c16127217eb19f699d8d43fc43b732748601ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115241178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c9497cfc4d1b1ff9f969868b48e2479bc99663c115857dd787cca4a8741753`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:10 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:55:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:55:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:55:13 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 22:55:13 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:55:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:55:13 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 22:55:13 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 22:55:13 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 22:55:13 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:57:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:57:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:57:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:57:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 22:57:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 22:57:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 22:57:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:57:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:27 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:57:27 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:57:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d925611889991daca45e3af72ab546629b7e41d1afbb195da95f458dcefbd12e`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2426486fff43cf00f27cc5582a7e71f7f8d27d4844d79c562c6420572c14143d`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 900.0 KB (900003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796aa2ea6e82d17f50189d34b5f82adc2922605994bf5741551e0d9c36555208`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e6c0b40dc5e9dd500a85ee2587e073126d1074096d774009e49defed7b45fb`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45adcefc576bd2ae336e196aa41cafaf76fcf8caed5fecbf7af29ffe6ee96d3`  
		Last Modified: Wed, 21 Oct 2026 22:57:48 GMT  
		Size: 110.5 MB (110470742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e01b824d667b7213ae5466915f8d173573ff930b54acc58c5c83fc690d0ef07`  
		Last Modified: Wed, 21 Oct 2026 22:57:46 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c2ad449ad4282daea9ec096994ef9a1f9b363099347e1d7cb209d15331d5cd`  
		Last Modified: Wed, 21 Oct 2026 22:57:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d71d442068807b0e8a4ca93524e1672aadb7edbb355851f38fec8a78e4d77af`  
		Last Modified: Wed, 21 Oct 2026 22:57:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6544c05d46c03fed4837afd465e5f3f4c739d2b721489d90863f58421b77a058`  
		Last Modified: Wed, 21 Oct 2026 22:57:47 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7066f1965fb9c8fc42cb59d062bb65747b943b1be182431a7fb733e21ff4acb5`  
		Last Modified: Wed, 21 Oct 2026 22:57:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:1a376d61ad3ed536b358555268ada9ce7e38e2772b15b6cac32ba2051fac75c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef881174219a149b51ba862dbfd4b16ac0457940455a609db9fee475c7f5f9c2`

```dockerfile
```

-	Layers:
	-	`sha256:261d5ad13fdf4f5c37e30fad4c408fb9b51a849f1be94fbfa2013165f5ac3af1`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f44671fd39e83a64ab66f9639ee3aa1689ef2da28b901f5f554d392d2adf6103`  
		Last Modified: Wed, 21 Oct 2026 22:57:45 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c8fc33d14c3829e20e147e9a39d0bb271bab315e23d05707406a138a1efeeaed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111528600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0502383b33a807c13f0932be8d186b39b9d0179e759ccb8a0629f9489426b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:27:10 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:27:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:27:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:27:13 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:27:13 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:27:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:27:13 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 23:27:13 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 23:27:13 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 23:27:13 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:30:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:30:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:30:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:30:06 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:30:06 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:30:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45670def981ea28b203f030e7116efa47def558a166b387243ea8aa66309e9e9`  
		Last Modified: Wed, 21 Oct 2026 23:30:18 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f7a5590ca697e3f4f922727fbffa597bd0dca826109c364658c52492d0941`  
		Last Modified: Wed, 21 Oct 2026 23:30:18 GMT  
		Size: 864.5 KB (864501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d290bd6eddc503e3571950df30e1a19e9a8ec00ba19f8cfd49d6fbef67c7874f`  
		Last Modified: Wed, 21 Oct 2026 23:30:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05a7d33a3ab7cf87603db5216ad31c04092f434de213667ca1446a043dacbe1`  
		Last Modified: Wed, 21 Oct 2026 23:30:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae2ffd14e1c66b9b07ba2a0e3035a5d16429b323a4cc4cec3f4457a291b20a`  
		Last Modified: Wed, 21 Oct 2026 23:30:22 GMT  
		Size: 107.1 MB (107088465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fadc6cfd4d773692518515fc72650f6593dabceecc768979ffb2ab9cb328faf`  
		Last Modified: Wed, 21 Oct 2026 23:30:19 GMT  
		Size: 9.5 KB (9496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7841b3e2c381c1489497185562b593b3ae66e6040a681faf0a77abc168ea79a1`  
		Last Modified: Wed, 21 Oct 2026 23:30:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08246d5b914bbc4a21942bac6f358677cf521827a0406b40a82aded2f416a69`  
		Last Modified: Wed, 21 Oct 2026 23:30:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94cf242b2c20a3b65153fdc4535374f32c57ceb265e1e16bf7277fd16c2d2c1a`  
		Last Modified: Wed, 21 Oct 2026 23:30:21 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ab0aea603a6ba42597a04f4446e221d8dae28dc2c2a80e757ccaa928b3cff8`  
		Last Modified: Wed, 21 Oct 2026 23:30:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:87c1fb2e376abc54d9238a9e41ea9b321938a85080e411ae8169d7f2f187a963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 KB (44359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4730994f0750b7ee10a4f41254a77666044171c89b865f495d08c6b277580d4`

```dockerfile
```

-	Layers:
	-	`sha256:0a1d754554739b27df9fd44e961aeb6d040ed730d7ae1ea41dc5a572b6e91193`  
		Last Modified: Wed, 21 Oct 2026 23:30:18 GMT  
		Size: 44.4 KB (44359 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:45f5e7dae923f147f7ab73884bcec4251bbcceacbed7a809a2a783bee249faae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105258751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dd7e718c4c0f9964bc6dc0a09acbf8374132d61618ee4a4693e39b65f370cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:29:43 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:29:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:29:43 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:29:43 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:29:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:29:43 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 23:29:43 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 23:29:43 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 23:29:43 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:32:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:32:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:32:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:32:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:32:30 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:32:30 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:32:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a3efb2ec20f67d66270cf46083b6f6d5f76cd90c9f5216bf55853bc0bf5a90`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c460a355ed96a94eacd4a61d9aee53c6a579c0db7d976cf85a63a057aeaaa24a`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 864.5 KB (864510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694f267f29220dd614fef4c6aeb77033d9df3f2124073e96810677d0e636c514`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d198bb6500865514e0c67602c88e461d3e9d4d226c082d87f6a6ecee6721d29`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f922db0b933dfc8285ae034e5ebcecb8c299132f46ecad3be37095d75f1b5ae`  
		Last Modified: Wed, 21 Oct 2026 23:32:57 GMT  
		Size: 101.1 MB (101110236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19603a0a821bf2e5add987c79e6862d8ccb9fa63b61d0af59a7d05661ac3b0c7`  
		Last Modified: Wed, 21 Oct 2026 23:32:45 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54646fa2abfeaefe3e55d84f4fb02ab1659601726673159495e92dbc4290c2e`  
		Last Modified: Wed, 21 Oct 2026 23:32:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ecb4e545e1a28169e004d09567517318023399d1db510cc6c44e9b9567ac35`  
		Last Modified: Wed, 21 Oct 2026 23:32:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b03561d72b8e3fc6a4a63f4d6429074468336253e9561b85439dc4b99c38069`  
		Last Modified: Wed, 21 Oct 2026 23:32:47 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfae41aeceba99b8f275705156cfdf0803c67db56020f7b7ac82ed6723724633`  
		Last Modified: Wed, 21 Oct 2026 23:32:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:05c169259cc5c21b30eda2bd2e3305c407bf4424f95cb64ad8f119dd1b4e1e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (642002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794a4eef40d06baee2001dc130efabf6fa75bf301fc04814e3df30aaa33b3526`

```dockerfile
```

-	Layers:
	-	`sha256:d906a609aa022277ef462bd85e9853cd6a38ab1c2037c21af9e7cdef611308dc`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96e5e04b7baddfd292c1dee578e922ba874860a45833a33f2b2a0e75e33b697`  
		Last Modified: Wed, 21 Oct 2026 23:32:43 GMT  
		Size: 44.6 KB (44574 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:188e422ad801eaf156d9b9e276064d931553a81f4281a18db98752178dbc061d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113069299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97593450ca452bcb2df8308c10f6a7770aac951ab40144d77e4cf9ea2702a86e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:05 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:17:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:17:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:17:08 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:17:08 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:17:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:17:08 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 23:17:08 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 23:17:08 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 23:17:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:19:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:19:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:18 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:18 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f5a413c8b2a5fe96f995037f8a1cfb880f4a1d485e60b6b3ee2064abf81ac3`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66ea26a177c43bb1335e1d7bfb5408b825d0743344e4fb077c393672dfeff8b`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 852.0 KB (852046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6a0ed1ca26af29d7c2ddfb5c7b414a6e40ed8ea6420c75af3d19fc538867a1`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5682f6ef14a4c69e7c7a8b2559eaca7378cf16d4ca79852d7a986129df1f9286`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6859ff75be1bca94fc60b13b231909f149a2d8b76d065bbe216c40f201c78d89`  
		Last Modified: Wed, 21 Oct 2026 23:19:38 GMT  
		Size: 108.0 MB (108009430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b41502fec1a708b21c1a8088ab2fa13378a8e0703edbd91976392f36adf0da6`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b991b88e79ce7406f6d621610f0154b0ea188fefa7e80509ab2ed3c0bd685b`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0206a141c2454dd75c54b118e890f229e31a8f1d35b96bac4afe9ddffe9cc1de`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931a12d1ac1c99c1d7acece3cbad186bfd9aaa6327d83171984e9dd10c106f25`  
		Last Modified: Wed, 21 Oct 2026 23:19:36 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a250724c1be976821155c88158e0a87c385d21ba0b59a2c2b79cf0b2a15af5ec`  
		Last Modified: Wed, 21 Oct 2026 23:19:36 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:a1f9ed29b8bb3fe795bba3af8e5249c2bdf51e89f6d5dd490b95f49cc2bddaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.1 KB (642062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c9e63c315490c2d727f7e96d4c6bf06cdc05baf25bd13cb82ea28dda5c9445`

```dockerfile
```

-	Layers:
	-	`sha256:62e904c316a12f00c5fb298a6d7b6f86bd0890dedec71321497b8c38f3d7bced`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a03c97fe1e0df9f7ead3a759d1cbd3898bd763b572bb65665c453ea5bd607f`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 44.6 KB (44614 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d828d472b237a782ce22988c4db3e511059825ef63c8d3beb7afe3a2ae24a25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121934464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20deb96474a494bfa64efff8ad7a51e0517a7a9c118cd2acb4e03f03132ed76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:13 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:18:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:18:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:18:15 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:18:15 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:18:15 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 23:18:15 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 23:18:15 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 23:18:15 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:20:43 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:20:43 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:20:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:20:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:20:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:20:43 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:20:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:44 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:20:44 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:20:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63ab376a62a84455b75f1b830326569288b19b795bb8b3fa421364d7368acfb`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e77b110b502e8bccdd7bd501ed6d006986ac8b9fd67675785630ed48bd21a54`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 868.0 KB (868012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dd4e2d05482685f3678efb16cec5a16e7a9edbb6b98c2bf17548402993adf4`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140ab3a28ac2b33d609cb29d06de56e6912cc70f0efd2b8439181e1049003513`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad61c992377bcfaf90c1ffc3be2a4d2b9a1ddec90d69ef434e5a158c0303cbf`  
		Last Modified: Wed, 21 Oct 2026 23:21:05 GMT  
		Size: 117.4 MB (117370121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655295f521439bc8c6b21ed3fc23265cf059bfb549ffea47f676f85f45a44b6a`  
		Last Modified: Wed, 21 Oct 2026 23:21:02 GMT  
		Size: 9.5 KB (9489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ffec17c602aefbdbb95fddca23e7f49e09bda88fe4adcaed78aab2e2121f9f`  
		Last Modified: Wed, 21 Oct 2026 23:21:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54b2b8ff476c6265b1ff6cebf43ee53a5df6a11fbf027b3d2ed03419b144e8f`  
		Last Modified: Wed, 21 Oct 2026 23:21:02 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ac11b2df240f621dc26044a52014523960adb69152755349aac1a9d2c74afa`  
		Last Modified: Wed, 21 Oct 2026 23:21:03 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f1a83e7487194b138edab582bcd3a5c497667726eb1e3b20f1ac4025173be7`  
		Last Modified: Wed, 21 Oct 2026 23:21:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:86a68f1e7b6c1108c6e8537e03bae5ae8022c2571e3267a52c2d09aad6b7469d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57061001fb6580338a706965a4608600140be650eef938df74f2f51fad74ac4b`

```dockerfile
```

-	Layers:
	-	`sha256:5593d27091d5e6d696ce67cf02ba15f39a62b170769cc1f7972cfd133fbab01f`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab78fc1038189da89fe4bdbbecc4576472cb32b720ec607e5fd370af2666c9ec`  
		Last Modified: Wed, 21 Oct 2026 23:21:00 GMT  
		Size: 44.3 KB (44342 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:37bdaf9cf9a45f2d8edc1e59b96eeff7eb4e716c5d96aefd5a98a131093932a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117906185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065d0f5927ad4657aeb37fe01fdb4a8de52eb78d8e026d41ddea667e5d6d49a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:13:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:13:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:13:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:27:03 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 17 Sep 2026 23:27:03 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:27:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:27:03 GMT
ENV PG_MAJOR=15
# Thu, 17 Sep 2026 23:27:03 GMT
ENV PG_VERSION=15.19
# Thu, 17 Sep 2026 23:27:03 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 17 Sep 2026 23:27:03 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:34:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:34:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:34:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:34:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 17 Sep 2026 23:34:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 17 Sep 2026 23:34:46 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 17 Sep 2026 23:34:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:34:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:34:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:34:47 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:34:47 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:34:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598921e4e005583e7a6cb711133752474a367af1db89bff92b32c9aecb33e488`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e08bc4edcb2784f2b2895f1aa6e80ad405c7b6dd5d509ad933749e3d5e533`  
		Last Modified: Thu, 17 Sep 2026 23:17:58 GMT  
		Size: 858.7 KB (858697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7323d645d11e89e668709dd9d35d0ccd0ad4d8987c6ca11151a11b7ac7f58dd`  
		Last Modified: Thu, 17 Sep 2026 23:30:55 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c225ad06cbcb69830adfd15f65b07d12fbf5cd52965f880094ee262adb71a6a5`  
		Last Modified: Thu, 17 Sep 2026 23:30:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753cce49a94c079e430e1181ce923ddf97db2f6e1fd5ef01bd8bf63704109801`  
		Last Modified: Thu, 17 Sep 2026 23:35:21 GMT  
		Size: 113.2 MB (113212670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049c30d1031381da3147430e17e6b3938d7192d5ffc5e6a93d160ff7c7ed9f2a`  
		Last Modified: Thu, 17 Sep 2026 23:35:18 GMT  
		Size: 9.5 KB (9493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae0dc602902a71f0eab77761cccb084ed745972d381e6a0a596b640c1a24fce`  
		Last Modified: Thu, 17 Sep 2026 23:35:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8504e354ac0bc21a876b3c3b984da05d5aadbd5f4be581fd36af551e74de5617`  
		Last Modified: Thu, 17 Sep 2026 23:35:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4259844335d287091d9a79b97e8e5efaa75fc574f8b732056cb0656657fafa47`  
		Last Modified: Thu, 17 Sep 2026 23:35:20 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39794f6b08557a2bb7caa424bcd690700eddf4cd10668a782d0651c39a483ca6`  
		Last Modified: Thu, 17 Sep 2026 23:35:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:0e4d7b91dcbedf0e9ad5b2c716d60dba159133d8f5e590cdf587d074815fdcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 KB (640213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d797cf2e6c77e2fb9b1d7d6702b936a08f422c83fbd7198373e4251595d88ea`

```dockerfile
```

-	Layers:
	-	`sha256:d52165ee5156a3b037c7d4427848faec8f5abbb250079630836dbe459408edae`  
		Last Modified: Thu, 17 Sep 2026 23:35:18 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc39b9cd59e79c85f54fbc4f1602056995f437cab04a94b9ec5b059e4ff074ac`  
		Last Modified: Thu, 17 Sep 2026 23:35:18 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:560f0fd01893a4ac390cb4eff9e2a1ec3170fa6099c1d944c6f74e0051f587f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117230833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b4fc84e00d31958a5d7dceab51e18166899e00fca06362e232552f7f378d50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 19:32:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 19:32:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 01:26:35 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Mon, 21 Sep 2026 01:26:35 GMT
ENV LANG=en_US.utf8
# Mon, 21 Sep 2026 01:26:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 21 Sep 2026 01:26:36 GMT
ENV PG_MAJOR=15
# Mon, 21 Sep 2026 01:26:36 GMT
ENV PG_VERSION=15.19
# Mon, 21 Sep 2026 01:26:36 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Mon, 21 Sep 2026 01:26:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 21 Sep 2026 04:12:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 21 Sep 2026 04:12:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 21 Sep 2026 04:12:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 21 Sep 2026 04:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 21 Sep 2026 04:12:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 21 Sep 2026 04:12:52 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 21 Sep 2026 04:12:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 04:12:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 21 Sep 2026 04:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 04:12:53 GMT
STOPSIGNAL SIGINT
# Mon, 21 Sep 2026 04:12:53 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 21 Sep 2026 04:12:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e8f6cc689b5a966301671334e29cbee0f06b74064549ee24393aec57187b2`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec9352b57bff085fb0a8f2fcff7e1c43c56221519b792aa6ea943bdea75820a`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 846.3 KB (846279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94be842adc01444bee3175141244a5c33a78cd0d79cee5f102943f33db555a3f`  
		Last Modified: Mon, 21 Sep 2026 02:23:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd15fc65b5a34e244bb6c337fb8d13af8bb0f5e66522d50c298db97daf3f6d9`  
		Last Modified: Mon, 21 Sep 2026 02:23:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccadb98088ee9d5200010ec4afe562ce4fc17a0124f695ac2253e1b925059c0`  
		Last Modified: Mon, 21 Sep 2026 04:16:09 GMT  
		Size: 112.8 MB (112791823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b9a060462688b0424ebd5840693103c4fe616d265f28ed07fb86f27bb2b6fe`  
		Last Modified: Mon, 21 Sep 2026 04:15:51 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a6dbaea15fb162045c7bafbd12e8412ea8ac9135063c599ea6bf8ec307d9c6`  
		Last Modified: Mon, 21 Sep 2026 04:15:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d62db47ab242df9c0d0d1e8effd7f35c9fb974270e0dbbaec9b0e6444d0e80`  
		Last Modified: Mon, 21 Sep 2026 04:15:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed55e29b95ed07e11b10d4df39cd869b4d0c0c793552ffc486eadee9f7fd11e`  
		Last Modified: Mon, 21 Sep 2026 04:15:53 GMT  
		Size: 6.1 KB (6115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b1ae7197087893c68a9fc3631ffde9d081bff7af1efee38267b90186ff1076`  
		Last Modified: Mon, 21 Sep 2026 04:15:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:424748c33838395d3fc250e8ed1a36bd240358fa42a8a4c61336171d0a778be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a677e2e211a0664775dc6bf0cf451d40baa4e2bb361ec0dafc0ad37e2cbd204`

```dockerfile
```

-	Layers:
	-	`sha256:510bcf003cf43dc16a527049a6543c5db3926181aa0f9d6cb24f9dc57b0d7aa1`  
		Last Modified: Mon, 21 Sep 2026 04:15:51 GMT  
		Size: 597.4 KB (597421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a454a20f50d412f2fc419e66ff3f8571e9e117dcd520dae4a1fbb45228b91541`  
		Last Modified: Mon, 21 Sep 2026 04:15:51 GMT  
		Size: 44.4 KB (44449 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:a6a2debce56e93b8a0ee27e78124aeade3d6981743b89265b9e63917a815155c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121742290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2293e620e2e6da95631a4bd04736e7393fa52257446005dec17dec77eab382dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:33:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:33:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:33:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:35:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 23:35:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:40:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:40:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:40:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:40:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:40:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:40:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:18 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:40:18 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:40:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b436f5b6f518b6e82c16a02d39c18707e7edb16769fe7e4e229512ef879939f`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3ed657ed02cabb7d0004fb34f9ea8a7c700c079ecad245a57e0a9716fde5db`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 874.2 KB (874208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b347a62eae9238b46b4dce01c98961a49227437861236c68d2c456698d89a0a5`  
		Last Modified: Wed, 21 Oct 2026 23:39:13 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaf30dd217dad8e8990d04eaf2ebc841b47aa9f6d6e6602cd82e151352d6e24`  
		Last Modified: Wed, 21 Oct 2026 23:39:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8faae45381d750943adc4ca1d82ee6a1a3c503243c0f3e16037c3c8abcc6c0`  
		Last Modified: Wed, 21 Oct 2026 23:40:42 GMT  
		Size: 117.1 MB (117131028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222902f90786d8b4e3788c23a6950a032481642489361b7abdeab179ef09f407`  
		Last Modified: Wed, 21 Oct 2026 23:40:40 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3537403d634e6a19624dfa7487c628b37e26758f1620f0d5834c10c4987317eb`  
		Last Modified: Wed, 21 Oct 2026 23:40:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fbf49afc42fcc844b8d55ea2bede7f29787b0f71e4bd83a32645c417c57e4d`  
		Last Modified: Wed, 21 Oct 2026 23:40:40 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd33904b95e7b0a2ff3b155a16b7e461ac3bd958ad86b5b738a8a228b2f1c17b`  
		Last Modified: Wed, 21 Oct 2026 23:40:40 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5501c86d5c8571eda1681c94fdda92eacbb2d48002a264942ef02d904e819614`  
		Last Modified: Wed, 21 Oct 2026 23:40:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:a7bec0afc9c3031acb4c31e4f590b43d567fb529f5d62ab8572e6f3f76a16a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.8 KB (641781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b6d0724490aa5aaa8597bab444293acd1ff1f4bd6efde754830932272c5f1`

```dockerfile
```

-	Layers:
	-	`sha256:ab0551ba688c2b1f12c325e719bf84b25fffb559e6768ab39ea43dd2e27aca05`  
		Last Modified: Wed, 21 Oct 2026 23:40:39 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd821fccf1f1502a4fd18b9e3c5374fbac9f0022a483cd25062bd19f9305b07`  
		Last Modified: Wed, 21 Oct 2026 23:40:39 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json
