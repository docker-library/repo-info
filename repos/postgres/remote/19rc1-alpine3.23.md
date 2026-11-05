## `postgres:19rc1-alpine3.23`

```console
$ docker pull postgres@sha256:6a12abfea01a57c36492e5c13f3bcdf1bdf940faac5b0c9a6a5dbf6dbfe1d6e5
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

### `postgres:19rc1-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:9ba1203aa78f913c9e9da87b9c7c0a3231ddbdd29fa8ddd3e648d075b2369e77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120639415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1fce7ab66576ac0068ae7db999fb00cb25baa99eed5a2f5dab7d80d6c0e9ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:07 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 19:06:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 19:06:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:06:10 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:06:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:06:10 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 19:06:10 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 19:06:10 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 19:06:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 19:08:21 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 19:08:21 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 19:08:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 19:08:21 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 19:08:21 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 19:08:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:08:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 19:08:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:08:21 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 19:08:21 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 19:08:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbb8e3352e8a6a5af99b568f6f3b6ac3ddcdc6d8259aee891568c94c2bd777a`  
		Last Modified: Thu, 05 Nov 2026 19:08:37 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627e52911e8d08030e2ec8eedf9e98605041bf6606e3bcdf81d817302c8266e9`  
		Last Modified: Thu, 05 Nov 2026 19:08:37 GMT  
		Size: 900.0 KB (900026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcab213c9512ae47dfa76db744a156d1f21b279dfbac0fe95ab92854c22fcc32`  
		Last Modified: Thu, 05 Nov 2026 19:08:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c52fede76fae83498a73c8d1d0212040df9d1f6f32cdcc466e3759ab82989d5`  
		Last Modified: Thu, 05 Nov 2026 19:08:39 GMT  
		Size: 115.9 MB (115858104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657e5b904ea846c128887bb5eeee52d62d68e6bd299eda4133ee0b0196324299`  
		Last Modified: Thu, 05 Nov 2026 19:08:38 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71662f6b8d0a197cac35126aa074ea5e790ed3116ba7b76bd9426c2353578438`  
		Last Modified: Thu, 05 Nov 2026 19:08:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6351e956c4f2ef516975a1050357900a6606d1f22c4f699f9ca9cf42173b5d`  
		Last Modified: Thu, 05 Nov 2026 19:08:38 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb558693032463d6a2dd8a8bee30ef3f7d737ec0d699c26f8100becaff46a649`  
		Last Modified: Thu, 05 Nov 2026 19:08:39 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:40e0e4d0db315f3c50f3bb680d2e18b546dbf9f0ad88346954b3a6c47be977c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96811d68c6fae4261ebe9a38f46ba373c35fe0c3b560a50cce0c85c0cf659a2`

```dockerfile
```

-	Layers:
	-	`sha256:846f8b1f1c45aea92a5bca3722fc8fcac1944d0851f7f6c45b973beb5046c86d`  
		Last Modified: Thu, 05 Nov 2026 19:08:37 GMT  
		Size: 615.8 KB (615760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1e1a1d6728c4603faed4821452eb9905c8074817343bcbd28ed88d87834e41e`  
		Last Modified: Thu, 05 Nov 2026 19:08:37 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:f52203757d42ebc6cc243dcdbbe5f9570a0c28f55b088411f3170febc832700b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116833568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dc64b16841413ca39ac0bee147c4764bdcdcd8a805594666db4df0877392d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:39:23 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:39:26 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:39:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:39:26 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:39:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:39:26 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:39:26 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:39:26 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:39:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:42:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:42:22 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:42:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:42:22 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:42:22 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:42:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:42:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:42:23 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:42:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:42:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e827468045bfbcc17423cbe3e23db971863fdf71cfc1321157288bd595618f8d`  
		Last Modified: Thu, 05 Nov 2026 18:42:35 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2cfe3479737f8f119d7d98df697f0a91e76d6e6b9b99539f621a65e3a040fd`  
		Last Modified: Thu, 05 Nov 2026 18:42:35 GMT  
		Size: 864.5 KB (864513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274d499351ca5537107863a0c7329deb95eff322b690c3cf350ae898a9ed5679`  
		Last Modified: Thu, 05 Nov 2026 18:42:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601aceb50373eef395adb2fd167a122c6a342c494a9898d645699a95ec6e9803`  
		Last Modified: Thu, 05 Nov 2026 18:42:38 GMT  
		Size: 112.4 MB (112382107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a184647f32a75af07ece267f5cffc0f88b40c5125a5b367ddf5f8a83e117a624`  
		Last Modified: Thu, 05 Nov 2026 18:42:36 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aecf45870bb4fd9eb8217df18be8ac65b9940ca33c19fe14626ea809854dc705`  
		Last Modified: Thu, 05 Nov 2026 18:42:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa676bf84b13c93a1d2cb1b412da65e7e0dc46e51060f4fda9d908ec086330e1`  
		Last Modified: Thu, 05 Nov 2026 18:42:37 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4d8bd7b8bcae8f1f4b84d9249ca85312de336bd6111150ca87fd836ca87363`  
		Last Modified: Thu, 05 Nov 2026 18:42:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1fb048942c81b37a33819ce4396744b11496e3015323638028be6273782b1834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05af19debc80a143b0f9d745c13aeb165b5edbc28ca31d1a3c720779204f3724`

```dockerfile
```

-	Layers:
	-	`sha256:04e5604c963f21952c04e0f692634e0ca35e110b7556ab39a6e3a8194845243b`  
		Last Modified: Thu, 05 Nov 2026 18:42:35 GMT  
		Size: 39.4 KB (39425 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a0915a1960d9f201e0f5fca347ccf792a913a7727c17e09e0007fb52e48ef3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110361293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f953a4f5c94961ccd41bce96f95e6c467781c251aef5e0f43c482eb3ef9e7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:36:54 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:36:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:36:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:36:58 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:36:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:36:58 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:36:58 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:36:58 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:36:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:39:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:39:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:39:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:39:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:39:52 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:39:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:39:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:39:52 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:39:52 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:39:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d00e014e2a4218d888ea749d4a8469844d49b3b208a755aebd50968270d709d`  
		Last Modified: Thu, 05 Nov 2026 18:40:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea265a210dd1c56fbfbad24f61d825f36b48b1add0ac57c54707e61b72d41282`  
		Last Modified: Thu, 05 Nov 2026 18:40:07 GMT  
		Size: 864.5 KB (864527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbacae4aaa01aacdcc5c2ba210e93ea51433e14679cc6346a5722fa8025c5985`  
		Last Modified: Thu, 05 Nov 2026 18:40:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b05718b5f77f2798042ffb9afc6a31820808f15eafb6db2a48828c3792dcc3`  
		Last Modified: Thu, 05 Nov 2026 18:40:10 GMT  
		Size: 106.2 MB (106201244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b33e65b59d0a203c0f86c92c12814d0e0fff611d138393077a8b559d2afd64`  
		Last Modified: Thu, 05 Nov 2026 18:40:08 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d30a436eade56f139f28907c47271aebf843d471861126fccd4b4c8780ce41`  
		Last Modified: Thu, 05 Nov 2026 18:40:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1b913d5dede8b86232cdeb4ade4216d085c223e5267748594f1577639a5f1c`  
		Last Modified: Thu, 05 Nov 2026 18:40:08 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbc23cd8b91f307e774547b7913c6608728c9bcf67b1c1d03740120c5d82076`  
		Last Modified: Thu, 05 Nov 2026 18:40:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d76f705715d4d2ef9524dabece87cc81b942e83649bedb4b92bae8ccc7aeff9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a1b5076440353e17f1b0af3ef4bf66c0736eef00a533a58481dbd6f5ed2714`

```dockerfile
```

-	Layers:
	-	`sha256:63e62d2874cbebf369f4e56874dbd25f1fae3d2a675f4752a5dcd7f666459ab5`  
		Last Modified: Thu, 05 Nov 2026 18:40:07 GMT  
		Size: 615.1 KB (615122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f40e1b95ed431dcbb7a63ddac4839b9d35dad6f7f84632b769e96d167f77a8b`  
		Last Modified: Thu, 05 Nov 2026 18:40:07 GMT  
		Size: 39.6 KB (39640 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7a8f8573e431847d45089077dfe3245a1f76abd04ac3497114cc80c6a1b1442b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118402794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0213998a55b3484e38059e00d23bab0d473f22e3857c840401d02a78bfd2cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:01:08 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 19:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 19:01:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:01:10 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:01:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:01:11 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 19:01:11 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 19:01:11 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 19:01:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 19:03:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 19:03:38 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 19:03:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 19:03:38 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 19:03:38 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 19:03:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:03:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 19:03:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:03:38 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 19:03:38 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 19:03:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd848c0f621be95e65f3e780c9950a1f253a67040c6919b6d01740cbd3e7021b`  
		Last Modified: Thu, 05 Nov 2026 19:03:54 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4d9b2169c40f08464e0bdd6d0bf9702714669a40db69155592a0dcc6a57d25`  
		Last Modified: Thu, 05 Nov 2026 19:03:54 GMT  
		Size: 852.1 KB (852051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bccf90aa2dd82e9da8f24653e40c283a098ecf23c5fdf19cc6e4cc1abd4855d2`  
		Last Modified: Thu, 05 Nov 2026 19:03:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c22b0261ee42cb88e64334d1f8f8b636a1f2f2b9388a5aefb7b5805fbcf3d13`  
		Last Modified: Thu, 05 Nov 2026 19:03:57 GMT  
		Size: 113.3 MB (113331824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1df5abbab21c4539231efdb215cead8cf3dd08b2bea03fd0f2f510b4b2734e`  
		Last Modified: Thu, 05 Nov 2026 19:03:55 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa2678af4a2ea1820ef0d8d17601656f0c64e99581aa399c8050eba2acd2bc6`  
		Last Modified: Thu, 05 Nov 2026 19:03:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a760ecd01c10e174b553c12c0dc4b803aad30906a87cbc383f764d9785c517be`  
		Last Modified: Thu, 05 Nov 2026 19:03:55 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2e5693665f476848eb6e8e7816573dc5743a924635ab6a3c5fcbd6dee9aa5a`  
		Last Modified: Thu, 05 Nov 2026 19:03:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c658c7c9d89e6304d695fa13b2eebbdef7752d150db1cfae13475c1d9ca20cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587b1f86c2833fb50e1023c1df59292d187204c89bb50a2d16c3f3e9a9d9fd7a`

```dockerfile
```

-	Layers:
	-	`sha256:0659832823d347acf1f1c9528b0f32419c5eef69c9a0920a394a21747b7614bf`  
		Last Modified: Thu, 05 Nov 2026 19:03:54 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:880c0d0de2bd508277330758419be9ee54c1aa4526f84836d33f2ce62613610d`  
		Last Modified: Thu, 05 Nov 2026 19:03:54 GMT  
		Size: 39.7 KB (39664 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:bc9a0a706b656f4245e096459520aa2bd69c6114e16e88bd78db8497865d8423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127547220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1d9c4fada76fc9279d46c2a47fdc6ec308f3d6f7c780a34634b794e45b0eaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:25:31 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:25:34 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:25:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:25:34 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:25:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:25:34 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:25:34 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:25:34 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:25:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:28:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:28:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:28:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:28:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:28:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:28:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:28:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:28:41 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:28:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:28:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03849c63d67414e3254f49d03b8cdcef7cc9b8ec5616e78e7590b610d6b3a5e9`  
		Last Modified: Thu, 05 Nov 2026 18:28:59 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d263202de2b23e4fbd9584ce871e0d4c2d44fcb666bd93122312d4be32fb05`  
		Last Modified: Thu, 05 Nov 2026 18:28:59 GMT  
		Size: 868.0 KB (868034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1b10a457d4602422095003e23bd260a402d99097c3b4c8b129584a43ba9060`  
		Last Modified: Thu, 05 Nov 2026 18:28:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b0eb1d8af17160fa39f7f4513a8236e9c30640062f0042226c4cf3934bbf3a`  
		Last Modified: Thu, 05 Nov 2026 18:29:02 GMT  
		Size: 123.0 MB (122971913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2543101a09609a43b5bf97ff4ef819cd5d98ceddc895d2fe63b17b6b389baa05`  
		Last Modified: Thu, 05 Nov 2026 18:29:00 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed666e6df35894450ed2624fe4c117256348365d848a7a135aaf2ca6edf96113`  
		Last Modified: Thu, 05 Nov 2026 18:29:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3b79cb63d8abbbc42bb752b99fe32e11c946072946b250f07bcf50bca4b324`  
		Last Modified: Thu, 05 Nov 2026 18:29:01 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce911f3f7a5f74778a1d645d36338b66818da5bf04e20032d1f9cdd5b3e49ffc`  
		Last Modified: Thu, 05 Nov 2026 18:29:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b382d7290d65fffde20c1daa177f5f419296fd56680f71f7721cd0d098532d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb15b1da0107820c2dbb434f751ce4f6025be254b4c9614c18c9504d7ee5c31f`

```dockerfile
```

-	Layers:
	-	`sha256:ef32fa10cc3c9f49fa9adf3e9dfc81a66767ecadd6a79eff251358187c7b9747`  
		Last Modified: Thu, 05 Nov 2026 18:28:59 GMT  
		Size: 615.8 KB (615750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc54385abec4401066258f18a24f2b2b1891d7aa9b8db5888604f9093424ef8f`  
		Last Modified: Thu, 05 Nov 2026 18:28:59 GMT  
		Size: 39.5 KB (39476 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:1b03186e13f854c9dc5d1a8f0d778bbe666fee5e7dc4bb0850928c24ff8c6c71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123667063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ab623f62359368bd41ab02c0b7fa8dbcbef146f474a796961c046fc0c6195d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 12:49:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 22 Oct 2026 12:49:46 GMT
ENV GOSU_VERSION=1.19
# Thu, 22 Oct 2026 12:49:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 22 Oct 2026 12:49:46 GMT
ENV LANG=en_US.utf8
# Thu, 22 Oct 2026 12:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_MAJOR=19
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_VERSION=19rc1
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 22 Oct 2026 12:49:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 12:57:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 12:57:55 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 12:57:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 12:57:56 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 22 Oct 2026 12:57:56 GMT
VOLUME [/var/lib/postgresql]
# Thu, 22 Oct 2026 12:57:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 12:57:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 12:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 12:57:58 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 12:57:58 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 12:57:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29016c1b0c37476485c6723fd1c22e3f326493672403f562f01b5a78a8f816fa`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8b483870d9789ff989a9dcde8a3893be2f44050551868e03326dc77d67191e`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 857.2 KB (857209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df43335170c3bafbc380a5400c3d9cf0296f0eb7d90a8dc21beb5976cd018f7f`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40a17f8d6d2dff57782305c4b25388ea629aecfe9e3ae215eb4fb535bdd744d`  
		Last Modified: Thu, 22 Oct 2026 12:58:46 GMT  
		Size: 119.0 MB (118962759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dc31be132de534e2e61e9c46edfc94a4b25c19f11ced38694883dccf8126c3`  
		Last Modified: Thu, 22 Oct 2026 12:58:44 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4add2a6f578524258b382d9c4b8c62b5b646f358f89225c85d27c9f45fb09e5e`  
		Last Modified: Thu, 22 Oct 2026 12:58:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f04c09905f2892653dddd4fc3c96031ef67e34c5ec33c4a7380a32a1d4f1f4`  
		Last Modified: Thu, 22 Oct 2026 12:58:44 GMT  
		Size: 6.1 KB (6114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a6adb75cef86b46b506d2bb15d562a54f561bc2074a746cc9f74b27f9c47c`  
		Last Modified: Thu, 22 Oct 2026 12:58:45 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:093cc141af596e933e87faaf6da2e38351498852d18566c0365322a2795d78ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1aceadf935821d3058183e54bb5dd1df1edfa137a17a418d743748b55facdee`

```dockerfile
```

-	Layers:
	-	`sha256:9187fa7e041a97a347ae517d2f568101f428e15725a78898328265e410f77f07`  
		Last Modified: Thu, 22 Oct 2026 12:58:42 GMT  
		Size: 613.5 KB (613463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e804f4875551865706867435f2aaaf3766345546f4bf106a946194e61ce8b554`  
		Last Modified: Thu, 22 Oct 2026 12:58:42 GMT  
		Size: 39.5 KB (39543 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:9afc0a6190a6ae99cf39b277a12aff0b869e3290409c183c4ac4181aa9cf2749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123272139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a8a3e8b6f8246411c9f6bea0f8eb16413952096a2510c5f8c60b5ece97a649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sun, 25 Oct 2026 23:44:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 25 Oct 2026 23:45:04 GMT
ENV GOSU_VERSION=1.19
# Sun, 25 Oct 2026 23:45:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 25 Oct 2026 23:45:04 GMT
ENV LANG=en_US.utf8
# Sun, 25 Oct 2026 23:45:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 25 Oct 2026 23:45:04 GMT
ENV PG_MAJOR=19
# Sun, 25 Oct 2026 23:45:04 GMT
ENV PG_VERSION=19rc1
# Sun, 25 Oct 2026 23:45:04 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Sun, 25 Oct 2026 23:45:04 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 26 Oct 2026 00:40:04 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 26 Oct 2026 00:40:04 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 26 Oct 2026 00:40:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 26 Oct 2026 00:40:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 26 Oct 2026 00:40:05 GMT
VOLUME [/var/lib/postgresql]
# Mon, 26 Oct 2026 00:40:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 00:40:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 26 Oct 2026 00:40:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 00:40:05 GMT
STOPSIGNAL SIGINT
# Mon, 26 Oct 2026 00:40:05 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 26 Oct 2026 00:40:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdf3bb30336e9099930e9c06bafc263dbcd40ea9bf0a5e1a08cd19e0ed3dc21`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e3038e9a84d63a662f38e4cbf10530f85f4ada662aba3b30cbe1f2733e0481`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 844.7 KB (844712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e32cede9058ba6da2bc66f956420563251742b0de5e273d77f8a2e62c80ccfe`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b5834d2c284ddb2197bff06fec4e2ae9677ca8522782972aa278f993d7fcec`  
		Last Modified: Mon, 26 Oct 2026 00:43:42 GMT  
		Size: 118.8 MB (118819102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2128df50112258669e2cbff4eaab8a8dbf0e278d9d930be2ca0bc83138aef3`  
		Last Modified: Mon, 26 Oct 2026 00:43:25 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d8a5a2f27e92c03a64d174fe9cc1ac27a93ac9be8603f4b66bb9c51dfcdc08`  
		Last Modified: Mon, 26 Oct 2026 00:43:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624524bbd7efcc82a42dd005be435dae484086c263b0d63845598fc7a9d00b06`  
		Last Modified: Mon, 26 Oct 2026 00:43:26 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ded4af4e2c7ac9e3d7f9978665a20a555127bd0b265e2576e7333f8ea53bce1`  
		Last Modified: Mon, 26 Oct 2026 00:43:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c96ae4e5f5882e26cce3a79680a6ef644606c9cf3c9173cb4435ebc233d74443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50d8876c6ef5b4adf5faf1f6335b90473839d933d10acdfe8e64684351febd1`

```dockerfile
```

-	Layers:
	-	`sha256:c7d2735a0e88415c58c22d91deda1c02d5e325bc45f7a1649cdfea536ca26525`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 615.1 KB (615121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e850580d2647ce0c52e7646281cec802b4cb69ac133d846ee4e229f9d8f93192`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 39.5 KB (39544 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:5d9b47abb1e14ac861d6aab6f2ba2cf9a69e893a11f8ca3020ed68e2d05ff039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127173470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14665341be1cb6fc3c28ddea5564a3116055dbe3d3eb92679cb40cd13fb363c`
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
# Thu, 05 Nov 2026 18:52:24 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:52:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:52:24 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:52:24 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:52:24 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:52:24 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:57:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:57:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:57:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:57:18 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:57:18 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:57:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:57:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:57:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:57:18 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:57:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:57:18 GMT
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
	-	`sha256:e632892da865711f5454b557915af33d6f334d3ad3b8f044221002a30bbad681`  
		Last Modified: Thu, 05 Nov 2026 18:57:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab68b0a7cc1efba5a0003cbe6a8ac41211e9ce94f2deca7897992282d685e86e`  
		Last Modified: Thu, 05 Nov 2026 18:57:57 GMT  
		Size: 122.6 MB (122552188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36208902aefbaaddb00abe6a15e192dbd74286f0470d164a265661583680f347`  
		Last Modified: Thu, 05 Nov 2026 18:57:55 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9050ed3932b3c7fdb7742579754019ff3b5517ec5466987b6d7c024cf3cee09f`  
		Last Modified: Thu, 05 Nov 2026 18:57:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbbae6983ee51a584d9f939d97725c0f9c9ddb566a6a4952e350a30a9b489c65`  
		Last Modified: Thu, 05 Nov 2026 18:57:55 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b8e9186d8a54a34e7cf9914b18697c1bd713bbb38e87679f147be3ee14c3bf`  
		Last Modified: Thu, 05 Nov 2026 18:57:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:fa93051cebec4984b45dc541e875c63b0ebb5a060498a3d818843f6c344d5485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14d585f9e297f6feac453a7294d465791ccd78e5ce8b71a05f13af8858140c1`

```dockerfile
```

-	Layers:
	-	`sha256:8c9c8c35621d8134c035f9e8e243318e0db1a3571a079ea866d048c7c1ef2e2e`  
		Last Modified: Thu, 05 Nov 2026 18:57:54 GMT  
		Size: 615.1 KB (615109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed09c336755aec741d8da7c3e1a88f9876e7445adfc8300d76cfc84b07b16f2`  
		Last Modified: Thu, 05 Nov 2026 18:57:54 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json
