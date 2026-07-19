## `postgres:19beta2-alpine3.23`

```console
$ docker pull postgres@sha256:0dbc2f9290e7d0a794783aff4618e0ef7591d6fcb58ed2745ba32860d8b78951
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

### `postgres:19beta2-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:b584e8398de1afbe098f72fdcedddbd28ba08693711d1597d4fcb57eab5f82d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120787194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d2c78d0794d718f387407fa2f36d349eb02d40019ce872c940a9b1128cf3e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:17 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:20 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:20 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:20 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:20 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:20 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:20 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:51 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:51 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:51 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d5b525b743da80247966ec9a3ddae6cd0322c22c5b4114d009e0b1461635c1`  
		Last Modified: Thu, 16 Jul 2026 22:08:07 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb625cbc15c334ec6744efed8b4f723be7acdfd81a9a44699c6e599ca613a2f`  
		Last Modified: Thu, 16 Jul 2026 22:08:08 GMT  
		Size: 900.3 KB (900265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c6210ac33e7efddce0bcfb505d176d126793b25f88a25bf1e6521c03b697fb`  
		Last Modified: Thu, 16 Jul 2026 22:08:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ef6d9793a5cad0b8ece09f24bdff7265286c94beee86d1a3de31713ecb58fe`  
		Last Modified: Thu, 16 Jul 2026 22:08:10 GMT  
		Size: 116.0 MB (116013980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f0b05d6c10406687c49f4cf009a8bbf78260e2ba8ea811e1ce2c709cf2c9b6`  
		Last Modified: Thu, 16 Jul 2026 22:08:09 GMT  
		Size: 21.0 KB (21015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a0ea41918ad11de18eeb9239e83b170f3167dc763406b558c8b26ebe804d83`  
		Last Modified: Thu, 16 Jul 2026 22:08:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4d37d88f151a90d3ac10b100f4de22d8aab7a6caa648ec6ddf72b9c6eafdae`  
		Last Modified: Thu, 16 Jul 2026 22:08:09 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc9abdc8b4b658ebfa3befa2739792cd782876b296e2ce3d6f79e2a3180a42a`  
		Last Modified: Thu, 16 Jul 2026 22:08:10 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:f75168b4d5308c0102976766b3882b62fdb1a7a1a536be84e6df2b5dfe8b5676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43d47489bbb815a29d1c2eb62a927083882a35d01a51c097daa23bbc6e59095`

```dockerfile
```

-	Layers:
	-	`sha256:abb304cb31b9e09d355c502164d9b05d80422c8b950f300c2a8a297608b229d4`  
		Last Modified: Thu, 16 Jul 2026 22:08:07 GMT  
		Size: 615.8 KB (615768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c6dba796b2ade44ec96e1fb4f7071506cef34911e9cfcdee2cc0df82fc27126`  
		Last Modified: Thu, 16 Jul 2026 22:08:08 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6e95af8657360256244ec012c1e7d21475deeeeaf6e2275614a3153dd014d6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117000160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab194bc6878cc28757904485a757af9d41004f6cfae91319876cd6c1ef5f723e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:40 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:08:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:08:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:08:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:08:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:08:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:08:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:08:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:08:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:08:41 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:08:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:08:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5b14f2c1ff7456d347b3c6891f23b9f6cb0935f4ac1e5692d453f1de1668c7`  
		Last Modified: Thu, 16 Jul 2026 22:08:55 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe608905cf23be8daa1b5c95e3b0426115a2d7338081ad82da664228b477173b`  
		Last Modified: Thu, 16 Jul 2026 22:08:55 GMT  
		Size: 864.6 KB (864629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ddfaa07cd1265cc1efe2d58c94653bade965c5ef23bf4db24cf195b8dda8aa`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895269d2222723342995eed8cce0b251be0354ac82a833ae839d65a25d32e483`  
		Last Modified: Thu, 16 Jul 2026 22:08:58 GMT  
		Size: 112.6 MB (112554420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4940f5f247483dc5c76c82c7906da16b8112a06bb345b679d1663bff771978`  
		Last Modified: Thu, 16 Jul 2026 22:08:56 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a13a8a72aed879f2e81d6e0380887e280870b53247a6516376e84bdfd60d68`  
		Last Modified: Thu, 16 Jul 2026 22:08:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11274e0011e96087fc25ffe14ea2c8b4aef694ede2f3d0e9a5ac4028903a7018`  
		Last Modified: Thu, 16 Jul 2026 22:08:56 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a7bb9236731e7a5d0b25eb1a26e9b2e15b79c100556971aa6e307f61f1bd5a`  
		Last Modified: Thu, 16 Jul 2026 22:08:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e2291bdd3a8fc9ce3cb85932560e0e0bd4dba31c30b7c656f3da3b3569ce36f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbe339a59017604617a314c46992822fdcff98d38cde7d5b0cd0c494baadee7`

```dockerfile
```

-	Layers:
	-	`sha256:b6b6784f1d8371659bdfb2b8b4dcddc99fd52e4f7e62e6bd3cd241424e0ddd51`  
		Last Modified: Thu, 16 Jul 2026 22:08:55 GMT  
		Size: 39.4 KB (39441 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:58948dcb42d19cecc2861373225e04c57e9f5357ceb240aeb123d56a6d7cbe47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110524568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d7ec2bb6eae32da8fca37eb7340869c26e55cb83e7c0292c67673da0cba473`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:40 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:40 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:08:31 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:08:31 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:08:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:08:31 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:08:31 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:08:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:08:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:08:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:08:31 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:08:31 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:08:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04580af94dc920a67e621d5b1b31dff13442101fb0d0fc9bbf07fa108605fc09`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c80c923f3d4a0d8a08d79a5bfb8d4c7609428d251e92fa35c1e1e38f6f482c`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 864.6 KB (864640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ddfaa07cd1265cc1efe2d58c94653bade965c5ef23bf4db24cf195b8dda8aa`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7d192d26a1b362190e1893b06cf8267fdefaaa29e7f5951d2e66400c1d7404`  
		Last Modified: Thu, 16 Jul 2026 22:08:48 GMT  
		Size: 106.4 MB (106369545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0edd48365da0bcb31cdbbeb75887e0a22646faa593fe4946dd3cc338e341fb`  
		Last Modified: Thu, 16 Jul 2026 22:08:46 GMT  
		Size: 21.0 KB (21015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5929984beb661e47c9e8c01c23e2c292b8818d04e4def3e6f05d03215b3bd5a1`  
		Last Modified: Thu, 16 Jul 2026 22:08:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcc5f78847b4d055e357ea6411fbca8e00166c6107e3af29b3184f6bf094e3a`  
		Last Modified: Thu, 16 Jul 2026 22:08:47 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab06a0c3cd987f3b23c96dacb195fbcf44ec6aa162cf826fd5153c1671a1daa`  
		Last Modified: Thu, 16 Jul 2026 22:08:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a8fe1c402f20cc22e1f47b50d12c7253dc17d941626657a901c8385420251d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53b53ab8b1ac913c7c38a043386e8963c089e888e72903a4a39ff8092a3f24e`

```dockerfile
```

-	Layers:
	-	`sha256:0aacafaf4b81791195dd4f3f9a26171bac0a033a8e0d309b147b0725d124eabc`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c2c5b4b375757e7a4e011b3a3721a104d42e19109ad3c3ba952fe02f831d02b`  
		Last Modified: Thu, 16 Jul 2026 22:08:45 GMT  
		Size: 39.7 KB (39656 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2d5ec70419e6cfda407734fbe9b90960f20993fa51db20d6f3abc09b1eef4563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118563352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258f1a213af1c12bb894e4707b07d5ea6fe7b1b303729e2b20b2aad0899db5b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:07 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:10 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:10 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:10 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:35 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:35 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:35 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f0dbe2ed761807b50b049e55c81a021875df171d54ddbe36d508e15495d4a3`  
		Last Modified: Thu, 16 Jul 2026 22:07:51 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf3f6acab3ed6f07a608e872e99f2f0fe9f64aabc936ca20151b6daade0d700`  
		Last Modified: Thu, 16 Jul 2026 22:07:51 GMT  
		Size: 852.3 KB (852280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d391b4d3423b8dba9c4d2cfd31aff603dc3090846950a37e19dc0fdd2cf8b9aa`  
		Last Modified: Thu, 16 Jul 2026 22:07:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90960452ea304ee528ab5b59422cc74e943e9843b4d3ec5db184b608df62cfd`  
		Last Modified: Thu, 16 Jul 2026 22:07:54 GMT  
		Size: 113.5 MB (113500695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da313ab82b3061a6f69d59da5e5f38a2e15cca46ae2b6bc41f08e121e1cc2e09`  
		Last Modified: Thu, 16 Jul 2026 22:07:52 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15d0f1099702caf431402233ce66fd6a607a70dac98a7c866106040123a9764`  
		Last Modified: Thu, 16 Jul 2026 22:07:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffa63c0f4e014b29db30585efd727b85536e74609962f7ced39a6ff596fd933`  
		Last Modified: Thu, 16 Jul 2026 22:07:52 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc4813221fe467600fe7cd061d45f848b9c8c5f69c6afa5943d6f69e00e828a`  
		Last Modified: Thu, 16 Jul 2026 22:07:53 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:820e11cba2edc788a7db33fb67e42ebff407a4bd2923056807242822b9dcc585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec8bda95d9b427680b38997ff3f4b33366584f61ab4a7d5182d2260771bb5e2`

```dockerfile
```

-	Layers:
	-	`sha256:b61a0b7162f9de59f3c28f079d46ed15551433a44b883160db7d84959b36f506`  
		Last Modified: Thu, 16 Jul 2026 22:07:51 GMT  
		Size: 615.1 KB (615138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c6813f4e7bb50b4dad553400dc3660a770eda34c86c0b044df334765f485bcf`  
		Last Modified: Thu, 16 Jul 2026 22:07:51 GMT  
		Size: 39.7 KB (39679 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:d5bc35aa8e55a7bd1e8043e5383c41a9519ec5840fe2d6d36349d0cd22f11057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127711730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4284ec55f6989e4f1163601b34456933618145ccbf4502c87755143aad40985a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:05:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:05:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:05:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:05:34 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:05:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:08:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:08:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:08:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:08:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:08:05 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:08:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:08:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:08:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:08:05 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:08:05 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:08:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304893f825565de3ec21cbcf11713ea8942f94949cac3a9e7b29dc7bb36378fe`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0e5f697e60f84f6b469307e3ec833b77cd8ac7d2d7c3c3e0293b2a6880213f`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 868.4 KB (868441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c992ad85c9a6c511f6020bc2c6ebac165f909c8d305d3b466df05b6a8e4693`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d177996116e9a72534ca01d894bfc61f8a24e2a8adf8d47d914f9727fb6452f`  
		Last Modified: Thu, 16 Jul 2026 22:08:24 GMT  
		Size: 123.1 MB (123146770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066a6655a091820a2aeeb5a49861b2c7279cb03a7dfc0a86ac9f404f39c20705`  
		Last Modified: Thu, 16 Jul 2026 22:08:22 GMT  
		Size: 21.0 KB (21017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8267a04709140b43fb0a2e874e00e244a812c36cc720849f9b9efd0581c4614`  
		Last Modified: Thu, 16 Jul 2026 22:08:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa16a0c125a5694cc9d0e68d713dc0746d90546326cde52628a90a15ed8be33`  
		Last Modified: Thu, 16 Jul 2026 22:08:23 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf810dece4c2b8c69095b60739443ca82ab5358d86abf7ddef26a95352f4f6bc`  
		Last Modified: Thu, 16 Jul 2026 22:08:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:17836acfb64a88b69ffa01f920ae4b3630f94fa663429aaac07d7dce600dcdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd1fc59926afdce2b48f0b03de85e821417c0dfee95ed8852a3a8b2fdbac28`

```dockerfile
```

-	Layers:
	-	`sha256:3067bc94c3f88538fd4d2eafd8900a8f956baaccee18ba6eeadb395b04219ec4`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 615.8 KB (615758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c9fd6d34b6c945a173b6872ada3be335f1ca93d806b479f5e1611f9c6aec071`  
		Last Modified: Thu, 16 Jul 2026 22:08:21 GMT  
		Size: 39.5 KB (39491 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:ee63e4cd812d763cd65e78674b3bb18a4db0db25dfe6d9065b1565981b356b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123840723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7b08361ba825a8d4132ecba77430a12f26a2b3e85141a40009b8d5bcf706ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:06:53 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:06:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:06:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:06:58 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:06:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:06:58 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:06:58 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:06:58 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:06:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:11:04 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:11:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:11:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:11:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:11:05 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:11:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:11:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:11:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:11:06 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:11:06 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:11:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c09b74ab8c2b3466b7132e921a2b2eab9d4bc7b8a8363aa1b07510fcefd5f31`  
		Last Modified: Thu, 16 Jul 2026 22:11:44 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5226af9c04231b9c55d31687de942c29d7c868452986b78945fae9c62bd48c58`  
		Last Modified: Thu, 16 Jul 2026 22:11:44 GMT  
		Size: 857.5 KB (857494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902c3464e6dc96c052eb27cf9d8ce6f09ca5a37e3dba0d70c92611d17fe13938`  
		Last Modified: Thu, 16 Jul 2026 22:11:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08fac2aa49ed29abf45702fb43daaaaa723ebf4b40e670344d48fb80ec31cec0`  
		Last Modified: Thu, 16 Jul 2026 22:11:47 GMT  
		Size: 119.1 MB (119142403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78b0816417c6327e3ee9ea30ff302d85bf8a298668b5497c71391649ff7e103`  
		Last Modified: Thu, 16 Jul 2026 22:11:45 GMT  
		Size: 21.0 KB (21014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de68de54d65530302521f06d309c71b8889443f9a5d51034b18e046d61c191ae`  
		Last Modified: Thu, 16 Jul 2026 22:11:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3593697dbd17f8923b3381bd4257f96d6b4847ca44dfd28b2a961f1fbc1bf1e`  
		Last Modified: Thu, 16 Jul 2026 22:11:46 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d4479780646c8f25eba580c874f382019ccd8e125ef875f16e8f0cf10c48bb`  
		Last Modified: Thu, 16 Jul 2026 22:11:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:610677e2e6e7da095eb22ef96f47400f926450116ffca30cb609a9c7b5e3d720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4529b78b9d773438c91e6afac4b4e528b603aa80af6a6e7d82cb7f5dd6bfbb7b`

```dockerfile
```

-	Layers:
	-	`sha256:b2ade2b02a50684d9025ed5f502d0ba6069c2a09ee7c986f55e368e76d4360ec`  
		Last Modified: Thu, 16 Jul 2026 22:11:44 GMT  
		Size: 613.5 KB (613471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96b9b68e13fd306b2a6dec8493a1f9fb2c2663337471c8d95b083103a7b6c78`  
		Last Modified: Thu, 16 Jul 2026 22:11:44 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:aacbb0d55c09c3a86b4c959cdc3116d335a3685a90b8ba7ef3d5c5ba933ba529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123452963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c855ee966e8cb01faaaebc1b1567c7615328ecb45bd0223b8394640243a88f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 05:20:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 08 Jul 2026 05:20:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 05:20:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_MAJOR=19
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_VERSION=19beta2
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Wed, 08 Jul 2026 05:20:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 19 Jul 2026 18:56:04 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 19 Jul 2026 18:56:04 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 19 Jul 2026 18:56:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 19 Jul 2026 18:56:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sun, 19 Jul 2026 18:56:05 GMT
VOLUME [/var/lib/postgresql]
# Sun, 19 Jul 2026 18:56:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 19 Jul 2026 18:56:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 19 Jul 2026 18:56:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 19 Jul 2026 18:56:05 GMT
STOPSIGNAL SIGINT
# Sun, 19 Jul 2026 18:56:05 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 19 Jul 2026 18:56:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8191b828233ba8639db62821d2db8c1562b57a5c6c23fabfeffec03560110036`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8628f2c88a8c9905b1c841adcb69903a2afa02c132eb5809c84813331e377c4`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 845.0 KB (844954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4100a1c7f9c6d3060ced3407c1bc8a9bb6b9599a3cd15220112a68a2dec04f1b`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fb1e4df2d437ad9115497753c69a8f702ea3de9d0231b77dd1303ed63c3c77c`  
		Last Modified: Sun, 19 Jul 2026 18:59:24 GMT  
		Size: 119.0 MB (119006241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359a2c9823e7dd881714d6c5eaccfc6ac2488ad18f1a3eaeda3f219cc3df9d8f`  
		Last Modified: Sun, 19 Jul 2026 18:59:06 GMT  
		Size: 21.0 KB (21020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23230685bf68883cff7640ebd7d251a2a958aa236ebfb9ad825af7ff4740b02a`  
		Last Modified: Sun, 19 Jul 2026 18:59:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3170ef7a831ce36a2a78b48e375ff92e63d91cd097dcabfec47dc2fa269c936d`  
		Last Modified: Sun, 19 Jul 2026 18:59:06 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730992038a7adb32b884219f981b8df77071acf310b5765428a318ad1ade9b3`  
		Last Modified: Sun, 19 Jul 2026 18:59:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:3b2a6cbbe407572a52f76a52c3d8906f9f310c795518f9d4eb78fe6d4a8beae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4a96cab7fb108eac71756d11d51463cf3e20afaedff188fe10960fb4e96c44`

```dockerfile
```

-	Layers:
	-	`sha256:364f8783d49ab8fb2581da9bec58c239733026b7e9e259b5b567d4c22592037f`  
		Last Modified: Sun, 19 Jul 2026 18:59:06 GMT  
		Size: 615.1 KB (615129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b94f29ce95c17e8db6cfa8e741c99020dc39f87def64782d8fae89b148e46cb3`  
		Last Modified: Sun, 19 Jul 2026 18:59:06 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta2-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:4c9102e2d03790065febde04fdb6599093f16525df2358de31cda8b022088132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127353854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2242944b2e818a32b449cd0c79e1991e8480aa34c533ae661f954ecdde171bf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 16 Jul 2026 22:03:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 22:03:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV LANG=en_US.utf8
# Thu, 16 Jul 2026 22:03:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_MAJOR=19
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_VERSION=19beta2
# Thu, 16 Jul 2026 22:03:56 GMT
ENV PG_SHA256=f1fb4373f4b0f4db896964f3e5b01658ff0acebd595da7558436ccf0d63b82b2
# Thu, 16 Jul 2026 22:03:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 16 Jul 2026 22:07:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 16 Jul 2026 22:07:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 16 Jul 2026 22:07:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 16 Jul 2026 22:07:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 16 Jul 2026 22:07:12 GMT
VOLUME [/var/lib/postgresql]
# Thu, 16 Jul 2026 22:07:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 22:07:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 16 Jul 2026 22:07:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 22:07:12 GMT
STOPSIGNAL SIGINT
# Thu, 16 Jul 2026 22:07:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 16 Jul 2026 22:07:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7380497d1850671f9d3ba69792150c51ad522ba2a65e01177780cb487d02c8d2`  
		Last Modified: Thu, 16 Jul 2026 22:07:38 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0f93d426b29a39715fecd6a7dff7ba2c28393c736d35bcf6bebc3d6ec99c89`  
		Last Modified: Thu, 16 Jul 2026 22:07:39 GMT  
		Size: 874.5 KB (874496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465e4a76106dbb79c81141c3178f62131d2d0fc194e262805acfedac8d754287`  
		Last Modified: Thu, 16 Jul 2026 22:07:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac38395f65682bf01283d013706e56e9ab819f8dff9958d960458b9d5d7dd9e`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 122.7 MB (122743583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0699ec6c2fa183cefe21ff4fd0ee6943703aec1a9e5cf5b3fc86cd589c5139`  
		Last Modified: Thu, 16 Jul 2026 22:07:39 GMT  
		Size: 21.0 KB (21015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a08882ea38b582eb9f7e034d672f529ce978898252d18e291d81b6a3c1a43f5`  
		Last Modified: Thu, 16 Jul 2026 22:07:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9639588c712e0a13d2b5c50ccfd2e53ce533292231cee0b4c1d19ba082e9f9`  
		Last Modified: Thu, 16 Jul 2026 22:07:40 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86940dde25bb12c576625be651b656dc2b55e655f1195f3f0d2e2bce756f151f`  
		Last Modified: Thu, 16 Jul 2026 22:07:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:354e9bf6ba013e3213acc6e8d809fbfc69e585e96c1a387a21f22cab95babe57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9d3e9d703216cb194027876098d8a74e181607407305c7a8e16deb56832727`

```dockerfile
```

-	Layers:
	-	`sha256:4ed75c858733a7da4e3434ee55f5dae309d11827f8bd2b73d4b74c548acaf00e`  
		Last Modified: Thu, 16 Jul 2026 22:07:39 GMT  
		Size: 615.1 KB (615117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8afb10238c72567f14da7002c9ce9c3ade683248eb47c99c57d84d178900b79`  
		Last Modified: Thu, 16 Jul 2026 22:07:38 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json
