## `postgres:alpine3.23`

```console
$ docker pull postgres@sha256:31dd18c532daa2717154343d46f760e00d34ce8d40065708e4a06aa6daf4736d
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

### `postgres:alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:32be37cf0977c63f5a676cfde2979ccdf599e3b0e12fb8d24ed7d9eaa208b1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119574588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0a4346f5672083cc4404dc236b2e1d5a64af9dc8370086ed015c30b65b8aa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 19:06:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 19:06:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:06:58 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:06:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:06:58 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 19:06:58 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 19:06:58 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 19:06:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 19:09:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 19:09:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 19:09:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 19:09:18 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 19:09:18 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 19:09:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:09:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 19:09:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:09:18 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 19:09:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 19:09:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6f3f6b5e816b908baa8aa3fb0cd4eb01b0cbf7af19ecc581fcad2413996680`  
		Last Modified: Thu, 05 Nov 2026 19:09:34 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7461c9228d08a9599972f1022af6fe9a53af6a061c7134b604d174a782d9673c`  
		Last Modified: Thu, 05 Nov 2026 19:09:34 GMT  
		Size: 900.0 KB (900012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c404861fef9e7b932eb3d4b9b5374d45abb0315f63051886f5122046131919`  
		Last Modified: Thu, 05 Nov 2026 19:09:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4515a2a6463cd2ffe99bb36ab752cbe4d66e97feba470716708021e3bed15c`  
		Last Modified: Thu, 05 Nov 2026 19:09:37 GMT  
		Size: 114.8 MB (114795471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222ae843c3a1b13efb6ca912c7acdc9f4bf919dff6281e776dea4276021eb4e4`  
		Last Modified: Thu, 05 Nov 2026 19:09:35 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a448312a5222c38d9ff09f3e850c0ceb7a13ffce985b56fec5447a12b57b27f`  
		Last Modified: Thu, 05 Nov 2026 19:09:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22af6ab8568d17f962e617494e823a9972fbf81ba22ab961c383da8d7b43e48`  
		Last Modified: Thu, 05 Nov 2026 19:09:35 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c8463e0cc3a1c15f28b28fb2e50cd4efe359bbeb9eb743f1a1b60571a2fd91`  
		Last Modified: Thu, 05 Nov 2026 19:09:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e7d3c7092a94f9c28ea2a246da19587509c66aeaca9c5fa3d71982694d23d766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.5 KB (656508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6fb169c5a550bebbafe162aafd7b3c6aadeda24a82f2de36da45bf4ebf3516`

```dockerfile
```

-	Layers:
	-	`sha256:62f01ff67d36e5e6254c109f0a2d4af7f587a248901b7dc4060016b863606d5a`  
		Last Modified: Thu, 05 Nov 2026 19:09:34 GMT  
		Size: 616.4 KB (616382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f148e5c0481c781ab7be19cb255890b55cbcd06482b4bd94b9fe7fc1ddb8df`  
		Last Modified: Thu, 05 Nov 2026 19:09:34 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:fd075e8cbd25a6ad424799048ad85b1369469435d8256393cfe7d426f1644af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115748353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cbf55e80f74d5339f4b471ddb6d69dfb5b0cdaa9c3c86e06877630a7f08507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:39:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:39:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:39:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:39:51 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:39:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:39:51 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 18:39:51 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 18:39:51 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 18:39:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:42:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:42:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:42:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:42:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 18:42:42 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:42:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:42:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:42:42 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:42:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:42:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ef633cfac0211aad2d7d55d01e1d6dc03f0997618c5b021de903fc032a71c2`  
		Last Modified: Thu, 05 Nov 2026 18:42:55 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b54fd8742b3f8fcb1daae44c7379e54d2b4be9926c71bb6e75e3a7d0a80fe154`  
		Last Modified: Thu, 05 Nov 2026 18:42:55 GMT  
		Size: 864.5 KB (864515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb6f0371806bff8f96ae897b42dc1d47d2fc00e323d1ee7a358b08834cd7dd8`  
		Last Modified: Thu, 05 Nov 2026 18:42:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00bffc46c7d98cbdb90d3f84c72b539d9dff7ef363c71f5c23c930925158481`  
		Last Modified: Thu, 05 Nov 2026 18:42:58 GMT  
		Size: 111.3 MB (111299075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6da458284b478ced31b0faac28a19fb59ba1db21532365d765d1561251fbb3`  
		Last Modified: Thu, 05 Nov 2026 18:42:56 GMT  
		Size: 19.0 KB (19006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfad37e218a3509baa679a1e0ed923c1a9c1318182f97706690979ab7d88ed85`  
		Last Modified: Thu, 05 Nov 2026 18:42:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6448aabdebd23a99cf5a0baf1b290092c5dec95f50ee1e4b9a48eb9db37128cb`  
		Last Modified: Thu, 05 Nov 2026 18:42:56 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45c0fa8e8b753339118b4321a8df333f6e15408c613f4ee98e001d1a03f4118`  
		Last Modified: Thu, 05 Nov 2026 18:42:57 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d8a6b94cd241fbea43ed19f432d19f54c571c0c242aafbc43b5443bbeb2e6092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 KB (40061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e485752a8c16ec090029127cae9409c279ee028fb35a055cb2478e3f51ca16`

```dockerfile
```

-	Layers:
	-	`sha256:c794fa0d53600c84acf654720bd4f03ac99840f851e877c8d25d009bea79699c`  
		Last Modified: Thu, 05 Nov 2026 18:42:55 GMT  
		Size: 40.1 KB (40061 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:63a5891a7c4be6c52f0690e42978b46f422e2b61e43d890095d3ed5f8e39308b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109308478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ffcda3a5f118d6a1d095d76e87ad10aacd59ff3d1e07630f08835aa6362153`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:39:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:39:23 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:39:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:39:23 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:39:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:39:23 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 18:39:23 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 18:39:23 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 18:39:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:42:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:42:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:42:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:42:13 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 18:42:13 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:42:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:42:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:42:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:42:13 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:42:13 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:42:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fbf07abaf9ff0f9c5f93f2a5abf8bb1341b06fa2157345e6d82e8baa13860a2`  
		Last Modified: Thu, 05 Nov 2026 18:42:27 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b982c3f93350b07a178042dfaa90bf975a7a1362be99662afbfc45b40daa2bde`  
		Last Modified: Thu, 05 Nov 2026 18:42:27 GMT  
		Size: 864.5 KB (864526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36d762662a4007fb870b28de79835519b2b8a90159b26ac744e1e56ba141b4a`  
		Last Modified: Thu, 05 Nov 2026 18:42:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7905e6e5819294b7f812ea7d4fae86c3ef124b5b61ead2256f93b677d99684`  
		Last Modified: Thu, 05 Nov 2026 18:42:30 GMT  
		Size: 105.2 MB (105150606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791e7bfda68e136f8068d68e78f8c8195c68b2ac94451c2693158ac35ab1fc32`  
		Last Modified: Thu, 05 Nov 2026 18:42:28 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05751fb21c7a05caba07cea135860fe0db21f4f9a578f4de194850fa4e1dfe48`  
		Last Modified: Thu, 05 Nov 2026 18:42:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c182c3f07ce164a3dfc4ea5278dfaffe174597dc74b2c17b2b878eccfd3075e8`  
		Last Modified: Thu, 05 Nov 2026 18:42:28 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f719648d338e45f2c7889d731afb72294a627e0f7bd27c6ba9a8e13efd288ea3`  
		Last Modified: Thu, 05 Nov 2026 18:42:29 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a7fa1e84720b154cd412aa6866a1a1c86a01cecef15347310920a44daeee7166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.0 KB (656036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146a30ae735ed6df753476dbff87fe4e0b40a0463c268cbc867611973fee5a90`

```dockerfile
```

-	Layers:
	-	`sha256:98c65cd2f7f9cc79d36977c11f12fcb671bd6d475aea8f3fadd0fdcb75cd0531`  
		Last Modified: Thu, 05 Nov 2026 18:42:27 GMT  
		Size: 615.8 KB (615760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15e64e5877ebbd1b72ae221bb72c3d7243536a865ba9e16ae6c898e332dd03e`  
		Last Modified: Thu, 05 Nov 2026 18:42:27 GMT  
		Size: 40.3 KB (40276 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1b83f1b8e387a38f78be5174832fd529487f6ebfa9ce0b268365b8e8400a5602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117404418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d679826eba3bc693c83c5273143ab42cf7f02248b50a2c89513b59c4b4c6811b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:01:21 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 19:01:24 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 19:01:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:01:24 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:01:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:01:24 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 19:01:24 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 19:01:24 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 19:01:24 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 19:03:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 19:03:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 19:03:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 19:03:51 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 19:03:51 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 19:03:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:03:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 19:03:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:03:51 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 19:03:51 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 19:03:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c41e5530b25dfc499b2f859f1b45b07547fbdd5a6cf97af843f46f1c354803a`  
		Last Modified: Thu, 05 Nov 2026 19:04:06 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1689e99e72770f8f97b75357226071c5600f2183a7835e629f37c09c125a09e`  
		Last Modified: Thu, 05 Nov 2026 19:04:06 GMT  
		Size: 852.1 KB (852056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af29c92bbc67af624f4f1f37b9e41a5193ffa5a3db1146a12c334e741888c53`  
		Last Modified: Thu, 05 Nov 2026 19:04:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d64ed244529dd46f1de534692a96f2745f760eeddd2cacf5c5f9cb65a4081c`  
		Last Modified: Thu, 05 Nov 2026 19:04:09 GMT  
		Size: 112.3 MB (112335622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8af0ec7116102a4ee22cefc6bbad4300f2341a1e82e8679c165545504256d1`  
		Last Modified: Thu, 05 Nov 2026 19:04:08 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec72329b6b5de45d42162eea3a05a4120b8fb5a9c4f4c1fc6c50f2cd0cd2ca9b`  
		Last Modified: Thu, 05 Nov 2026 19:04:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495a283286880bf876232102efd5b3469c1d5f775c6ec34b15875da7d61b8bf1`  
		Last Modified: Thu, 05 Nov 2026 19:04:08 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfc107854b21aba40d1baca1e69c40a9e32a9882a0cfcad0e95e8b97c0dbfe2`  
		Last Modified: Thu, 05 Nov 2026 19:04:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b3238afee8d8075b12dab49164cc3a0d0dbd36d8dfda54fb88d681eca062a6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0368d4c3353bee55da0ab540ad4a6ebeaa3a8678a337457535086d6ee0015dd6`

```dockerfile
```

-	Layers:
	-	`sha256:a5123641f8e5a7378957f79a1c250fb7a5935e255a7c2231d3900a1024ad28b1`  
		Last Modified: Thu, 05 Nov 2026 19:04:06 GMT  
		Size: 615.8 KB (615776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b8d19270c6bb0cc0a115311ae60cd65582bb3e73182a9b1cb53072cc9bc51e`  
		Last Modified: Thu, 05 Nov 2026 19:04:07 GMT  
		Size: 40.3 KB (40308 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:479a9374e769855ea072120f2f3aca7af94f95d8ad724741b954adda45fc0632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126385591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab35aa5d5de258a4f7bb37d1b5dd503b2cfad862ffb2d9b07b8446c0a70b11d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:26:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:26:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:26:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 18:26:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:29:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:29:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:29:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:29:16 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 18:29:16 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:29:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:29:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:29:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:29:16 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:29:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:29:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292cc98219b4362c4f086786b29059b5751cf2ff5706aaa047cd55a4307c9e8c`  
		Last Modified: Thu, 05 Nov 2026 18:29:32 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe6260c3eeebfcd1e7763f91de51dce804c49c6b1dade26b359de73e350139d`  
		Last Modified: Thu, 05 Nov 2026 18:29:32 GMT  
		Size: 868.0 KB (868039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6881d76070cdf2b5194484218f33913bad2863e612b7582c1199cd40d5d60210`  
		Last Modified: Thu, 05 Nov 2026 18:29:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795720432937b82d85dfea797d7a261030d6b4532403592606a9d0401135432c`  
		Last Modified: Thu, 05 Nov 2026 18:29:35 GMT  
		Size: 121.8 MB (121812454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96b6bef66ff03394ce7f809c4e5f8da13aa3648fbf636a27d4c59decabeb9ac`  
		Last Modified: Thu, 05 Nov 2026 18:29:33 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c755078fca0664144a6e81515cb97205a66f7db72ab65d6ed9997bdada8a8e3`  
		Last Modified: Thu, 05 Nov 2026 18:29:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24ed741e3307aabfa7253c85f6e20055bafd86cdeb8b357b935e83e6580dcd3`  
		Last Modified: Thu, 05 Nov 2026 18:29:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a95f457b2fafc0e29ea8f1a893972e53ab9cd502492740df378c49f70b5c5f`  
		Last Modified: Thu, 05 Nov 2026 18:29:34 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4e709f20ada80e7b4f43f4ca07eb476ce59dab44c7d24866323fb468d92c2000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.4 KB (656449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ce911d19c9e773ba9e72386e48863a2cf71ab34191100307b3864681e7a3d`

```dockerfile
```

-	Layers:
	-	`sha256:832d24f5ef080817f70a1cbb01acb47acbafd27efb8cbc0341b8b2d049e8b9b6`  
		Last Modified: Thu, 05 Nov 2026 18:29:32 GMT  
		Size: 616.4 KB (616362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38afa80bda02ceeb3a690c4955e69af803a234dde768488a1fae9b011f64f3e1`  
		Last Modified: Thu, 05 Nov 2026 18:29:32 GMT  
		Size: 40.1 KB (40087 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:2fb571277776b9d6c37c2c48f462c63db18485d5ff691ebfc64e809660835031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122536385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d25b04a5d3ce22b9d3151e493ab72a1d09fcaf9162bdcffe379ce88b9e5c8c`
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
ENV PG_MAJOR=18
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_VERSION=18.6
# Thu, 22 Oct 2026 12:49:47 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 22 Oct 2026 12:49:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:04:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:04:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:04:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:04:20 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 22 Oct 2026 13:04:20 GMT
VOLUME [/var/lib/postgresql]
# Thu, 22 Oct 2026 13:04:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:04:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:04:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:04:23 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:04:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:04:23 GMT
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
	-	`sha256:f977bf983998c862eb7c2d11fda064c22a84c48ef76f7beccfd16ba9462aded9`  
		Last Modified: Thu, 22 Oct 2026 13:05:08 GMT  
		Size: 117.8 MB (117834274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a935f8af5da107e5a082dc96f80c77be88dcc94ffb328ec828c286e16e020cc5`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 19.0 KB (19013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77046c47b15b1efc1854d7e304050ce2aab8e51509286fa384e42b9f9d82735`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717a3e7cd6731e0797b05d84b2a935cc2cffc7f7a6150451961498d57263fc87`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6632fd02d4a714516cd788b07c760dbd68381f9d5a53f0cac264a5ef43d8c9be`  
		Last Modified: Thu, 22 Oct 2026 13:05:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6bc468effc9ba91f689a9ba026d0d78777cf386fa322b11ba034612ac8512cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.3 KB (654272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d557ce477b2d58e040ab892ef13dcb8c58a6ff4ba92a64b6bbc4154c94f7a3`

```dockerfile
```

-	Layers:
	-	`sha256:69cd8d4f002a98ea90b51fe87fbd6738f5915f0fe65d78d96773f0571393c2e0`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 614.1 KB (614097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3497c8f24c9def9e418a637f5d7ce84c44a1980cfb68c8df6768cec958d9c98e`  
		Last Modified: Thu, 22 Oct 2026 13:05:05 GMT  
		Size: 40.2 KB (40175 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:0d92e54d31841779a4954d1d0072c59957025ca9c20ae105f322414366aeb372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122033455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d46d89d96614c0a14a0ad5c275e38076c0c0716264bb713975efdf303418010`
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
ENV PG_MAJOR=18
# Sun, 25 Oct 2026 23:45:04 GMT
ENV PG_VERSION=18.6
# Sun, 25 Oct 2026 23:45:04 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Sun, 25 Oct 2026 23:45:04 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 26 Oct 2026 02:39:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 26 Oct 2026 02:39:49 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 26 Oct 2026 02:39:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 26 Oct 2026 02:39:49 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Mon, 26 Oct 2026 02:39:49 GMT
VOLUME [/var/lib/postgresql]
# Mon, 26 Oct 2026 02:39:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 02:39:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 26 Oct 2026 02:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 02:39:50 GMT
STOPSIGNAL SIGINT
# Mon, 26 Oct 2026 02:39:50 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 26 Oct 2026 02:39:50 GMT
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
	-	`sha256:fc47466729abdec8c7accbfc0f2112f2aaed4cae9c5d60087e2307e128b65015`  
		Last Modified: Mon, 26 Oct 2026 02:43:25 GMT  
		Size: 117.6 MB (117582606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92187d0a22a381062ea0bb527b43e952916fd42bf8d51105b2bfb057c7142b7`  
		Last Modified: Mon, 26 Oct 2026 02:43:07 GMT  
		Size: 19.0 KB (19013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99aa9af87561c058b633d551ddebd191b72e04e3eec0a1e5fb86ab97bdc2733`  
		Last Modified: Mon, 26 Oct 2026 02:43:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc1f27c0ec19873e6c3bd49c904a680d98acb0620bbf7963eee79e6fe2d2a08`  
		Last Modified: Mon, 26 Oct 2026 02:43:07 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6cb80c3c68dff1ef55736e23a11e454d09d70501a6266bbef536b0d0f90f7f3`  
		Last Modified: Mon, 26 Oct 2026 02:43:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:381e6422372c69598fb1e581847bdd07815b91174fca4570ba15d5e632dd1f4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a397f14017555be407fce2665a068e561f896d2f428a78fd3ba66043ca1749eb`

```dockerfile
```

-	Layers:
	-	`sha256:e847eec609381a43496e4d8c3d0819afe096c363d559094d7bcb27d93c22b4e4`  
		Last Modified: Mon, 26 Oct 2026 02:43:07 GMT  
		Size: 615.8 KB (615755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b886f5afd026027d0f21531603ff1c086c137f7085ff9c9f7655061769f76566`  
		Last Modified: Mon, 26 Oct 2026 02:43:07 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:d33d29a870a98d6af9288082386355d4fb127ff036853d06e85785e781875ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126165563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e47b00591a242c5f3c6433d03e37f469d91ce982a4e4e3e628e0af9e603be2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:56:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:56:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_VERSION=18.6
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 05 Nov 2026 18:56:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:59:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:59:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:59:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:59:40 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 05 Nov 2026 18:59:40 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:59:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:59:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:59:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:59:42 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:59:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:59:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23392f00b42ded9769f724a44617cba4f1fc3627256d4f9963958ab2b957f045`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d772e6aa8962e2e52ca1e1b45dfa9444c8eda769027973f1976557c204a518`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 874.2 KB (874226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cc501d30e5371cc3683d955500c83da4b3a7694cafbb1433dfc0fa9fcb735c`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8376e9045897e9a6ec0fabf5036e9cbe807483df74b2220345d55c3e1839a75c`  
		Last Modified: Thu, 05 Nov 2026 19:00:22 GMT  
		Size: 121.5 MB (121546472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d30b41875b20396cc19262de4d19c41360048935a718d12df7e0b15c052b07`  
		Last Modified: Thu, 05 Nov 2026 19:00:19 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8daa6b287b6ee5cebce8078198a2d9ef3914309d4fd94bae341a0d7806edb027`  
		Last Modified: Thu, 05 Nov 2026 19:00:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cecbbd08b24991c71f7d74b898fa4605365f9cb1d2be7b75bdff60e67cfb1e2`  
		Last Modified: Thu, 05 Nov 2026 19:00:20 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d47f9267b9254754a301195afb8b040f26e198bd4ae0ef5c01b3fcc96a181d46`  
		Last Modified: Thu, 05 Nov 2026 19:00:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:ad8c06bf4f7085b7b3241af45753278f3e8df1b239d7535f6e743436b17031f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f30b41d541f0971eefac37788addc243c1f1b704203dfd62f69f7e2effa858a`

```dockerfile
```

-	Layers:
	-	`sha256:70fc46a4b009ffcff3a1f788a929240c1eca00489ebc8d12241e39f033a7973e`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 615.7 KB (615731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d5791b9b6433e24c5c65f4833b5b6cc6d01595d8833927b0835d0f53f5c877d`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json
