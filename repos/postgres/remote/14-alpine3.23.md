## `postgres:14-alpine3.23`

```console
$ docker pull postgres@sha256:64a2addec1f61edb755777b3d10a82b65660c66732197a296ad19a23804749c0
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

### `postgres:14-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:20e390e2e981c22eb7c5839afa06ed1182469548569135f7f50752ab6e3bb111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114332015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70f2a11139d4bb17edcf5744098096e0bbaa114f6bcd3ef4178bf21bc8d1105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:58:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:58:45 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:58:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:58:45 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:58:45 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:58:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:58:45 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:58:45 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 20:58:45 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 20:58:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:00:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:00:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:00:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:00:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:00:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:00:42 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:00:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:00:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:00:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:00:43 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:00:43 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:00:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18b4bf3b6e85a6777f03e0d4f5babf62fbff3f965776df85af24b11729df731`  
		Last Modified: Thu, 12 Nov 2026 21:00:58 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba714fc3e502f04dda1caca86171446f495e41f0795320e911bb5ad48336c16`  
		Last Modified: Thu, 12 Nov 2026 21:00:59 GMT  
		Size: 900.0 KB (900019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65cb4f2d716f36bc0356d5b8fc78504ec9ba79bcf708ce2091a2c12b55a90f1`  
		Last Modified: Thu, 12 Nov 2026 21:00:59 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b6e3582523436bbf627bd91622be31ab35e89e910428f2ae92a352a9228e29`  
		Last Modified: Thu, 12 Nov 2026 21:00:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc85eb1f01fbfd9702ef8b155c9917345ede47a59f872f646b6452599f2a15c`  
		Last Modified: Thu, 12 Nov 2026 21:01:02 GMT  
		Size: 109.6 MB (109562324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45eeb8f7eb585fc26dffa1ad0ee928a667db71e02214b8eaca08975c5788fc09`  
		Last Modified: Thu, 12 Nov 2026 21:01:01 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044fa60fe186a052f1d952b40b6144e83d47f1c6043c273246f9159b72b2d54a`  
		Last Modified: Thu, 12 Nov 2026 21:01:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae1e8d6f4eedb9948c3b9d6d2c2ae0dacd67b6afdfbb7348378c29bc7da6988`  
		Last Modified: Thu, 12 Nov 2026 21:01:02 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2885a611e5f3d360e3a669a919fe91a805794ff284e36faba579ef9077291c1b`  
		Last Modified: Thu, 12 Nov 2026 21:01:03 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afae566c510f83be3bd390b58000dc88e1b35b5ae7abba86f692e8cde754ca7`  
		Last Modified: Thu, 12 Nov 2026 21:01:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b5035485df20cd32395dbd6c15d4b6f8a718201068e90a31b2ac3abfa2ad6b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.9 KB (640901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab629f2f67c1d55c3a9c76c96bb234ca2cf27437f3d646a5f6e88234ad53ae3`

```dockerfile
```

-	Layers:
	-	`sha256:517ef589a7c97c5496f9256a00ccff4ddd4c974d60e434544678ff3c68146144`  
		Last Modified: Thu, 12 Nov 2026 21:00:59 GMT  
		Size: 597.5 KB (597452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8215e511f8ac1a6dc27b8228db318266b25264dd1d76ce0e21e5647d9fccfe97`  
		Last Modified: Thu, 12 Nov 2026 21:00:59 GMT  
		Size: 43.4 KB (43449 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6feb67667fadc8b2c632ca4d3e43055588ceafad04b1e58c942c6d58d47932b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110634559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a65e7338cad8513b8c2decf8db4b29327d0b443185979cd1851ac85a7f979e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:11:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:11:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:11:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:11:50 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:11:50 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:11:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:11:51 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:11:51 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 21:11:51 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 21:11:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:14:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:14:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:14:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:14:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:14:41 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:14:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:14:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9049735f56e5cb4a8063e3a2646016a7ad34007251be9472ca747c8839c1969c`  
		Last Modified: Thu, 12 Nov 2026 21:14:53 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e897aa1d0ad0ef3f52c911144b6681c5938db37240a828e6d60caa9205a04069`  
		Last Modified: Thu, 12 Nov 2026 21:14:53 GMT  
		Size: 864.5 KB (864514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84973985311e97cefb05c367d889de5c35699cb816a415a5e9312324d915fa09`  
		Last Modified: Thu, 12 Nov 2026 21:14:53 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4623e0d42bc5737dfb5b4403db504045cc705f67ae63c89c6d49df6c23478ee`  
		Last Modified: Thu, 12 Nov 2026 21:14:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38543349d7c51dbf4087f98bcd60eaf5e7a6b96c68bf1b1a255fb76e97f42fd2`  
		Last Modified: Thu, 12 Nov 2026 21:14:57 GMT  
		Size: 106.2 MB (106194718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39566df4c04406f810ee7b0310b53a2727ab55c2bb1969befddb9cc335402175`  
		Last Modified: Thu, 12 Nov 2026 21:14:54 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d398d7788a549796e87cf9f8015393214e64ac90fdf75fc42d58d34bb68cf55`  
		Last Modified: Thu, 12 Nov 2026 21:14:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff715ed5a1a0c64b3c4687909b0d8605007f41d7a867aa1fc3fe38e3aef81895`  
		Last Modified: Thu, 12 Nov 2026 21:14:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a112ae56db60714d2c52cba1a5555903cda7ae8db0e15bbc5a559367d06d688`  
		Last Modified: Thu, 12 Nov 2026 21:14:56 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845e7fd40c2ef9f5ebfa465166ca39bce4ac6f5bdb54b7df40754d52d03c0ef9`  
		Last Modified: Thu, 12 Nov 2026 21:14:56 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a569b9ff1207f65afb852d443a85a27b2ef204b95a229e8d2e18e2a27d8de3f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 KB (43402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d52ef974041c2928757c69872aad9438fdf1a29e5e64910095bd104fdb4bbd`

```dockerfile
```

-	Layers:
	-	`sha256:1c2d2d758390b8c88091513036f20ea72e45037cb7bc82b5ea00774d5824f3e9`  
		Last Modified: Thu, 12 Nov 2026 21:14:53 GMT  
		Size: 43.4 KB (43402 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d8944c344070ee2682e5ac248d08e3732f8f0f574d009e185e5fc6f1e572069a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104361989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd627ac87ff73e9e033549830e432a75311cc509022017cf11cc820ecd6e4f9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:27 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:17:12 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:17:12 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:17:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:17:12 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:17:12 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 21:17:12 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 21:17:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:22:59 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:22:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:22:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:22:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:22:59 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:22:59 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:22:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b17df0c380972b9cc6ad6af75cfd711fabe9e0f6553e12dbbee02e68aa9875`  
		Last Modified: Thu, 12 Nov 2026 20:56:39 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cd36064c28012fcfb261a377947d9c0e260fb2567a33c0e0d998f75110604d`  
		Last Modified: Thu, 12 Nov 2026 20:56:39 GMT  
		Size: 864.5 KB (864524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e0a14519fb8646b5c4c8420241b64161975aa437642eaf9ec9bdf91bbb4c48`  
		Last Modified: Thu, 12 Nov 2026 21:20:10 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93627bc355b408ec2201e4fbb0eb1308c4760986558f2c01ac46a1602ba0c94f`  
		Last Modified: Thu, 12 Nov 2026 21:20:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417399b1ed9ed81cf37a95f2e6c4cd51160e0aec447eb5dd333920450483a13c`  
		Last Modified: Thu, 12 Nov 2026 21:23:15 GMT  
		Size: 100.2 MB (100213555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984c5857783d787896102e9907a3b8ffec39456d0f2fe1e0e6aefdd70c0ada0d`  
		Last Modified: Thu, 12 Nov 2026 21:23:12 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddb37eba9d5e276d296362045a589438f7a2318542cfcb77c6ccc8ff2b5c9a0`  
		Last Modified: Thu, 12 Nov 2026 21:23:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070f94a7da9375dc15df92b4ef9588a21909577238097dd2a9e0808b6429180a`  
		Last Modified: Thu, 12 Nov 2026 21:23:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f775f49878ed733c33a6e4fb4635e30c0717ee0253c78e2939b33528231eaaa6`  
		Last Modified: Thu, 12 Nov 2026 21:23:14 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2635e91af48c7a604c6e214d2c6ecccd325d38c7d25302aa3561a8dcdc432f70`  
		Last Modified: Thu, 12 Nov 2026 21:23:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5c85406826aec1a4e0ff6ecea7ebf8b8600d5dadf91d6747c24e1709315f9063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.4 KB (640439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a84375c0cf1ac03fa5369c7bc9e0587a86e49e809e9642f145aa5d5daa32cd0`

```dockerfile
```

-	Layers:
	-	`sha256:b5ef45f52e200cac6d7332f37cfc1b953a70ad2cbb090f0d55ce951a6c129d28`  
		Last Modified: Thu, 12 Nov 2026 21:23:12 GMT  
		Size: 596.8 KB (596822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a7ddfc72f1a008bff95c792e55a11958d1e906da5f4af04b9ed5723a6f5ce9d`  
		Last Modified: Thu, 12 Nov 2026 21:23:12 GMT  
		Size: 43.6 KB (43617 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d36f6f9e5a8ba82cf3761c0b62621ca5db99683746d01a96c47a22a500a68acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112165125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb9a179b6f0496069c41dd3b49f5726808d37a1c60034c6aa74e0dabd727a6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:54:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:54:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:57:42 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:57:42 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:57:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:57:42 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 20:57:42 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 20:57:42 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 20:57:42 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:59:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:47 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:47 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588b492e24fbb805c6a2162f1d5cb089b0356abec93c6491fe10d59acc205319`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298355d01253df4a4568358ff08c1a1fb9ceab75a28ac2d62f2936d8d79b840d`  
		Last Modified: Thu, 12 Nov 2026 20:57:33 GMT  
		Size: 852.1 KB (852054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed6c8a46debafb15548271fea995673bf5ee6d9fd61b56b5a11e370564b07fb`  
		Last Modified: Thu, 12 Nov 2026 21:00:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfd777f6c1ee39a36e985469b6bf688e0bf543ecaafde646e4a4bc894daf020`  
		Last Modified: Thu, 12 Nov 2026 21:00:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c696049ae6e45782e1e09e8cb60dd6a5886cbfd3e68ec46bdd514d39cdf4d648`  
		Last Modified: Thu, 12 Nov 2026 21:00:08 GMT  
		Size: 107.1 MB (107105755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a7ca1f0bee2774c242dada47e016b259a3930887c6ead656aeca9d6c44c63b`  
		Last Modified: Thu, 12 Nov 2026 21:00:01 GMT  
		Size: 9.2 KB (9240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ba282b442b34be063920d1e10dca2414c32ad7f9ece21149bf696a0e0a68bf`  
		Last Modified: Thu, 12 Nov 2026 21:00:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eebb090dc707808c54f7b8a960052881af229b6b9d96e9e548c4be273a715d2`  
		Last Modified: Thu, 12 Nov 2026 21:00:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901bba3e43b1acd27a707dde40dc4c35e99df077242a89a634b6532c215d274c`  
		Last Modified: Thu, 12 Nov 2026 21:00:03 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0bd830825b7215220c4eceebfb2665a7a860b56aa74786f9540fc871bbd166`  
		Last Modified: Thu, 12 Nov 2026 21:00:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:09180b74bcc07eaf4435e2f1b05721b86b5dbad7d9885e02f4e8244c6084d82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.5 KB (640483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7f9c5edbd439717c8e6e27d13dcee503fcc98b6d863bf9ead1af4bf832c686`

```dockerfile
```

-	Layers:
	-	`sha256:65837fcd49aa7181ad7685f4904cb9769eb16400f3833681e5b52519a431710c`  
		Last Modified: Thu, 12 Nov 2026 21:00:01 GMT  
		Size: 596.8 KB (596834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6c54a87d7f80de7b3796da5929d1229a1f62c447e993ec8094ad6f8626af7fd`  
		Last Modified: Thu, 12 Nov 2026 21:00:01 GMT  
		Size: 43.6 KB (43649 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:771868dfe5cfb531f10dd47a3a3a67930dd25d9465b7f124cd0a95aea4979172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121002565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7841194dcafd25636c30bce10fa7fcf32815ba91ff133b31bc3b6b4fe9ee0f96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:05:25 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:05:25 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:05:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:05:25 GMT
ENV PG_MAJOR=14
# Thu, 12 Nov 2026 21:05:25 GMT
ENV PG_VERSION=14.25
# Thu, 12 Nov 2026 21:05:25 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 12 Nov 2026 21:05:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:07:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:07:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:07:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:07:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:07:36 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:07:36 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:07:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2525a34656336d28d8b21c75f1a94b075958141db52e36ae45b241635990a6e5`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a149c7f1f2d8a18ff966adccd7aa94b919281b0cdfd78ce83ff90b92097ecffc`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 868.1 KB (868052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826fa2904b84199bc331a70d5384eaf45df14395a38705c4836132a7b8f669ab`  
		Last Modified: Thu, 12 Nov 2026 21:07:51 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08bf078cffad43de2e76cfe7ec2565d678c651669a5ec79dae3e80a470f951e`  
		Last Modified: Thu, 12 Nov 2026 21:07:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14fd0372a8f9922d5d4a5700f3209caeca884990c41573ae33bc6e38733d10f`  
		Last Modified: Thu, 12 Nov 2026 21:07:54 GMT  
		Size: 116.4 MB (116438853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9831b35d4d98b860307353f6d5adc0215b55e1d9f5cc6d717546788b4f0505b7`  
		Last Modified: Thu, 12 Nov 2026 21:07:51 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b23ed485e1611bdd6d59a76afdba9fca09ab9d0e28e69f2d161e067eb26f98`  
		Last Modified: Thu, 12 Nov 2026 21:07:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4448b6a70736b61371d55c89e0543567f4e95e34261dc65941a6f39b84f41b`  
		Last Modified: Thu, 12 Nov 2026 21:07:52 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17b6c413b527a86afab481ac3816f547bd9856006ccaed96257319d7f4f2004`  
		Last Modified: Thu, 12 Nov 2026 21:07:53 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b4998185f4393fbd5fddc2c22a4f99d4c3242ad01caaf68539c727cdef71af`  
		Last Modified: Thu, 12 Nov 2026 21:07:54 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:0676a67e5ce578c993211dffb67d4b3b682e40f6c742b6967f0ea4244211e9f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.8 KB (640848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:122cc9d4cf573ea6321c334df50415bbbd541130f1feb18ff623c721a4665146`

```dockerfile
```

-	Layers:
	-	`sha256:1295a940d4d275401494a43c6c51f83965fe06aa76a0c24c78d29055f7fa68ad`  
		Last Modified: Thu, 12 Nov 2026 21:07:51 GMT  
		Size: 597.4 KB (597437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb7c2c8065327c48c2f06e20d822bcafeb126e45cc568bc216889d56cc754766`  
		Last Modified: Thu, 12 Nov 2026 21:07:51 GMT  
		Size: 43.4 KB (43411 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:95fbb08a5d23c4b33b07394a64dae289a7be6a6d245df09915b094e27de7591e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116929144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe69f0894b5bffbd8c66545c4d9ecc99896d5e0dde39642023b65f82358edf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:53:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 22:53:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:53:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 23:08:41 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 23:08:41 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 23:08:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 23:08:42 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 23:08:42 GMT
ENV PG_VERSION=14.25
# Thu, 05 Nov 2026 23:08:42 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 05 Nov 2026 23:08:42 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 22:03:00 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 22:03:02 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 22:03:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 22:03:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 22:03:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 22:03:03 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 22:03:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 22:03:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 22:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 22:03:05 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 22:03:05 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 22:03:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071198e7a6c5bc35e8684057b10d5e2ab20dd5b6b0ba5724546a6330c1a09e5b`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb559504d9116e508da7fcc2c8bb6977ad36affaf739b312588aeacc98bef42e`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 857.2 KB (857217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5477c69c6085191e4d204a379b882b76d6c6cacde9c0d1074d2dee5de8840972`  
		Last Modified: Thu, 05 Nov 2026 23:13:22 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff532762a2dee953582a80bed7b0aaa7dfc40aeb8f58ce5deb55e99100a0f8b`  
		Last Modified: Thu, 05 Nov 2026 23:13:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e861a9e38590a7376e4f1b6c778aed051ba096250666b4699f64154f3c2db04a`  
		Last Modified: Thu, 12 Nov 2026 22:03:48 GMT  
		Size: 112.2 MB (112235818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c773ebd6c226d6b03bd75f1e30de056121fd653465df6ed3a689c4a600d6d21`  
		Last Modified: Thu, 12 Nov 2026 22:03:45 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704fdad7ba6fdb888bcbef199649295e73f8bb263db7710181bdc04434b85792`  
		Last Modified: Thu, 12 Nov 2026 22:03:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c66dd844a350cb673c57b31835f57c0a3182c11f6c6529861590de24f73128`  
		Last Modified: Thu, 12 Nov 2026 22:03:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bad20e1c4d91de5213720b7a251fff7b30cbc444500128bc51b7d6a070c209`  
		Last Modified: Thu, 12 Nov 2026 22:03:46 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bb7020aa050bfef62167c69945e0d9638148e749cf25af6f3c35941a6670a6`  
		Last Modified: Thu, 12 Nov 2026 22:03:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:0de7dbfac3e3986b63468b809225929130b7bd4fe1b7498eacf7ef21a18f5e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 KB (638658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953a2799c3b06ce1c8f3d53f5dc8f115bd93bbf07e68e3f92949b9d2ee5329cf`

```dockerfile
```

-	Layers:
	-	`sha256:2e094ee92c4c17b00e6cabf95982b1945c3683b2fbbccdd0bab90f60c5774f93`  
		Last Modified: Thu, 12 Nov 2026 22:03:45 GMT  
		Size: 595.2 KB (595161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be45570437a177fc9ac82941072b49282c53fa66f98016ef798fa4fdde18120b`  
		Last Modified: Thu, 12 Nov 2026 22:03:45 GMT  
		Size: 43.5 KB (43497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:94cb9378efe35d3c1763161d27b8d8698affbf253b7c7ca420840c2ed4064c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116077086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9971d300a9acb9b3ba497ca67e5ebdb29352f4f4e609cea001dd59d19ebbf4fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 08:23:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 11 Nov 2026 08:23:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 08:23:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 13:31:41 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 11 Nov 2026 13:31:41 GMT
ENV LANG=en_US.utf8
# Wed, 11 Nov 2026 13:31:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 13:31:41 GMT
ENV PG_MAJOR=14
# Wed, 11 Nov 2026 13:31:41 GMT
ENV PG_VERSION=14.24
# Wed, 11 Nov 2026 13:31:41 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Wed, 11 Nov 2026 13:31:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 11 Nov 2026 18:19:27 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 11 Nov 2026 18:19:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 11 Nov 2026 18:19:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 11 Nov 2026 18:19:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Nov 2026 18:19:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 11 Nov 2026 18:19:28 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Nov 2026 18:19:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 18:19:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 11 Nov 2026 18:19:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 18:19:29 GMT
STOPSIGNAL SIGINT
# Wed, 11 Nov 2026 18:19:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 11 Nov 2026 18:19:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2749923b9e8ed5f827f94ca4f0b0f0870f61011a9ae745b3916ded7e85852`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f948ca450048c06e160bf303171f98b9946df3f241215111e600f9cb1f87632c`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 844.7 KB (844720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5657d05ba206178419cf7d2c40ea4568ad3c056c9ca79a653c7ecc4435b3308`  
		Last Modified: Wed, 11 Nov 2026 14:30:04 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbff0a043ba5703de9d0c6cc3347d5ebe501cfd4c8888bf19af2b2994e063be7`  
		Last Modified: Wed, 11 Nov 2026 14:30:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f0169da7bb45740de7e367b9ea1128f645901da7ca5e5bca7708de24294a42`  
		Last Modified: Wed, 11 Nov 2026 18:22:53 GMT  
		Size: 111.6 MB (111635132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925addd7fcd28325957e956b0eee616d68b0746f7104ab343f86131ce7cd43f5`  
		Last Modified: Wed, 11 Nov 2026 18:22:37 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9996b78c2e8c070360f89530d1081caed12ebcb4963967973454668f0b6a223e`  
		Last Modified: Wed, 11 Nov 2026 18:22:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210d0ac7b866f2539eacbf83411fb26aaa5f367ecf03cd8ab1cfcf3698b48c23`  
		Last Modified: Wed, 11 Nov 2026 18:22:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e62bbd50b5d81efa31ad6694e54c154af966acfdf88cbc86e8b008451c7cab`  
		Last Modified: Wed, 11 Nov 2026 18:22:38 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50814897b7c2a501a2af6d5d1b80af04504aaf4fa8a31803914c97401d95ec01`  
		Last Modified: Wed, 11 Nov 2026 18:22:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4899a78be79d745a36ea0f4d62a420a1632ace1717e2716746513e2480a52e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbbaf469d7190acaaa692eb786e3644ee7d3b0fdcda78703e912503bf0e0f9d`

```dockerfile
```

-	Layers:
	-	`sha256:06fd1c2dbce7c4d71bdff9f8ca3894ffe636ed4394353b0fc95aa174618fa950`  
		Last Modified: Wed, 11 Nov 2026 18:22:37 GMT  
		Size: 596.8 KB (596819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e63c48190c45cddb2fe148d3ee816e67f77f892d9ec8947ec37e74b0865681`  
		Last Modified: Wed, 11 Nov 2026 18:22:37 GMT  
		Size: 43.5 KB (43497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:adfa806381ba538e9b97e33344d157a5339427f9791415267f0906165fc2cd9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120833165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3a2dc246af7bd0d83d0bad04be34237fbce2ffac6a7445ecf8ac7e812b24da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:21 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:52:24 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:52:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:04:16 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 19:04:16 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:04:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_VERSION=14.25
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_SHA256=09af980eb3a5d0a8ad7a34b95031b1988bbcd430c87700a62d6234c0ed97ae4c
# Thu, 05 Nov 2026 19:04:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:26:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:26:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:26:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:26:41 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:26:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:26:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a3ef9b2b9a9147190efb3c76d12da6dc558d2b4e8c4430074736fa9cc8eb7e`  
		Last Modified: Thu, 05 Nov 2026 18:57:54 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721459d837ab7b6966e33480a51dd32f036e267de21369aea155af709a134ae5`  
		Last Modified: Thu, 05 Nov 2026 18:57:54 GMT  
		Size: 874.2 KB (874236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f2d99df4424ba97aae0400863e6cfa98a82f3176e0b2738844fc8e84df8d8a`  
		Last Modified: Thu, 05 Nov 2026 19:09:23 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34439cf192edb83f2c9b3783d2f930d9f55fb2dfdc4913c72a03caad12a447d6`  
		Last Modified: Thu, 05 Nov 2026 19:09:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b282bfa3b4acfbe69be5dade19220de9f68cb818d61fc86c997f94b0e77e50cd`  
		Last Modified: Thu, 12 Nov 2026 21:27:10 GMT  
		Size: 116.2 MB (116223495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6645fc4249d586bfcd3753dafa54befc3d1d79d392b1efd6ec1e8154168af617`  
		Last Modified: Thu, 12 Nov 2026 21:27:08 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8420cb28f70fd5c2f5c911afc25b7ddff1e101be92b1217be1c5eaca1b2e96`  
		Last Modified: Thu, 12 Nov 2026 21:27:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18ba69b4c11605b18daa12e1deecd9b9190871d8428e609477a05c4afda6fd2`  
		Last Modified: Thu, 12 Nov 2026 21:27:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae811e39c8a9291ea901b457f5d7e99a628d6f1a70643b08f68dfdf39014140`  
		Last Modified: Thu, 12 Nov 2026 21:27:09 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c35e85a6f042681e19e0ae12ca2e7bc4721520e2d2be0f3f7eeaccbf4c194`  
		Last Modified: Thu, 12 Nov 2026 21:27:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:91e8236800699efbb46e174bdf95f7f9b0eafbd63f42d3e01ec2467bf4ac9e09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 KB (640249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65963020eac70cae74cd7778ce05d969590038a4845cef1a2d6b66e6b72afbc`

```dockerfile
```

-	Layers:
	-	`sha256:6de0f3710bf3fde9e5a008ba0d0568c0b320eac952da86b2e52c172042fa8e44`  
		Last Modified: Thu, 12 Nov 2026 21:27:08 GMT  
		Size: 596.8 KB (596801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5057ef1e4105a78005683d5985d0f80711743879820105d4a9edca9e4b79c17c`  
		Last Modified: Thu, 12 Nov 2026 21:27:08 GMT  
		Size: 43.4 KB (43448 bytes)  
		MIME: application/vnd.in-toto+json
