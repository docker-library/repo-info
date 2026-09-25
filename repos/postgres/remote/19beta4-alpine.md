## `postgres:19beta4-alpine`

```console
$ docker pull postgres@sha256:fc1f3e7a1b86bee408ccaea1666c263d1089cbbfd3f1dfb04dcdf85f46b8085a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `postgres:19beta4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d9b816b3c597c0c673918e3f488e0fa0f82ddf8c5481aa8912c9ea4802dd66ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121086283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d484eb7a8ae2cd37b3a1516eb553c40378f75a451a00dfae451e9771ac5f1da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:04:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:14 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:04:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:04:14 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:04:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:04:14 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:04:14 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:04:14 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:04:14 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:06:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:06:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:06:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:06:48 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:06:48 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:06:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:06:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:06:48 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:06:48 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:06:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52509d99504888ce5b43ab51a31acccaa3cd7caebdfac815c618502ca99595fa`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2afbe6d6ed31c68b3649a2a292e0b75dc3ded1110209bf1239adc9b9452fac`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 901.4 KB (901409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64fdd4f46d25b7cd0c5d0b1b9dac2b27541a793ab4a242dbee04b0b3e39f68e`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf97300fdedcd3414621a7c0cae6baea369ef5c605778368d96b18adf61bbfd1`  
		Last Modified: Thu, 24 Sep 2026 21:07:08 GMT  
		Size: 116.3 MB (116306433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17020d3cbe707fcf112774b2fdfd57e99f9fedd5c6813e535105629ba87e24bc`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 21.2 KB (21198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65335f9e9573f4a147717d18cd4a19a43f2c90dbf9b410617adf669c0ea70951`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d28b352677f550e57351924b622f6bebc883ae0a4db1399fbf3938d54db303`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec4a802a860f8b53936077c2883d676a0ad54faecbce5cd646a8900cb87c02a`  
		Last Modified: Thu, 24 Sep 2026 21:07:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:88e35c0b55b977a678b3b351a78963898393df08a278efaa7b7b4be2f319a685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0e3c388b21bb5db67af0e5d7ebe5b8c1daeafe1a70c0b049bcffa54c23016e`

```dockerfile
```

-	Layers:
	-	`sha256:645a22c8f2c35dfb779d55232bacecec5f09db55aaeb3f3d8155f81c87e5d61d`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 616.0 KB (616048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c029a9e72b22db0c81ddcc3ff40d4243f48662645e6db4aa2a1ecd1ae85f6704`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:7eead611cfe55d9f0270a71c06cd14e72a500b0a89c5a2e2e3e3cd6afd6ebd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117296028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef732380ddea2c5c5890c3c6f51240fc8f0d7bc7d206ad084110de129ae493d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:01:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:01:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:01:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:01:17 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:04:23 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:04:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:04:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:23 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:04:23 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:04:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:04:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:04:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:04:23 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:04:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:04:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa1dd93e17998dddb896290594db2163c61089ad37800820d1ba3bcd5dc42b2`  
		Last Modified: Thu, 24 Sep 2026 21:04:35 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4758a45a1e4dd185165fbb3b25cc4619766b3a27560695a45cee8ebc41b1753d`  
		Last Modified: Thu, 24 Sep 2026 21:04:36 GMT  
		Size: 865.0 KB (865038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b435eb04281cdc59b1ab916eb298506dbb9921bd5471590e914d97c6d3d5f662`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a006de98732436afc74872c0dac5cce66eed52d61130754b1c751db8802d97c7`  
		Last Modified: Thu, 24 Sep 2026 21:04:38 GMT  
		Size: 112.8 MB (112847175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ab29bccbd9e45366dcc7c0208424fc019f21154c5d777b5cf1c55b24477fb0`  
		Last Modified: Thu, 24 Sep 2026 21:04:36 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf883f9d07fa47885963091c1cb03372381a66b58d230e3c7ea644940b6efe`  
		Last Modified: Thu, 24 Sep 2026 21:04:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84ebb23995fdd2337a4a289f3aad234a7f49f66ae36e6421c86964447dd6d72`  
		Last Modified: Thu, 24 Sep 2026 21:04:37 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b561a04bac447e369ccb3177b3cefb3ddc2db622df3b2f30d94d80ac17f5b8c`  
		Last Modified: Thu, 24 Sep 2026 21:04:38 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:d0770870f397be74fe5f29c2eb93c133804265584e03a9cc494c3b73242a2040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 KB (39767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bd254b677acbfe89ec87ecb9da1a53b9df9cf0ee11ab42c7abdab4edb30a72`

```dockerfile
```

-	Layers:
	-	`sha256:182fa6d799f2d71325eaa680e000de769979274f1b4f7c105676d0aa355f623b`  
		Last Modified: Thu, 24 Sep 2026 21:04:35 GMT  
		Size: 39.8 KB (39767 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:cd3cdba7d10a3e7b88c3a8bd65b26f1258ba5acabe61ee65508245f81103b588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110826647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf237faf568b3ac7fc6194a2870ac1f7d4282d594193509cd1865891f771af8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:01:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:01:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:01:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:01:17 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:01:17 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:04:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:04:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:04:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:04:12 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:04:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:04:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:04:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:04:12 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:04:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:04:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c1f5cd338618e3d2bf6221044a30921388f6eafcd691c183fa8171f41f8416`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc16f679df3049189b2cba79f859f07affed8a709bbcc6bfe7e1c742a3d50a16`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 865.1 KB (865056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b435eb04281cdc59b1ab916eb298506dbb9921bd5471590e914d97c6d3d5f662`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca76ee3ccb8ed7f081ed8ae94c47bedd70a47435e4a07a3c175318db870da10`  
		Last Modified: Thu, 24 Sep 2026 21:04:29 GMT  
		Size: 106.7 MB (106667693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a494ca97c40a0035760de10807d476b686302af7856db07c5e37ff79028c83`  
		Last Modified: Thu, 24 Sep 2026 21:04:28 GMT  
		Size: 21.2 KB (21188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8833b671bfd542e577d1da95820e3c91e1d4766537451fd4986641b5c42b44cb`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e568036a66c2b6183293ba55edb3da960486537eb1a61812c56f18bb34ec3f7`  
		Last Modified: Thu, 24 Sep 2026 21:04:28 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51530b76451d260df5136f73dc699dea5a0dfafdd23cea26169e4fe0a1b9b39`  
		Last Modified: Thu, 24 Sep 2026 21:04:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:3f786da8a0d08e26db42fff2ddafbdd867882262f0a65a525bf3443f0e583747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6542b4e32c1b16b309048646bf43409dbb0ab2a2b097fca6c342e85d0574c80c`

```dockerfile
```

-	Layers:
	-	`sha256:0621f4779d42b9580901bc4e6fd08a9c9b2cf61743b4c3aa33de8028e9162906`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67c913b483eb9a122cc387147b3af1c99e9aa5b96bb97e20deb1c44ee43d9d96`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 40.0 KB (39982 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:c432a826ea734d0350e47b065c3bc6ccbdac99f8d4e48a96f342055f6708ebf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118872047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bea639a0c76c5d61db8069ff2704fe15c83801624080f9a68788f1a0b8241d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:03:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:03:23 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:03:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:03:23 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:03:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:03:23 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:03:23 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:03:23 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:03:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:05:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:05:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:05:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:05:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:05:52 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:05:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:05:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:05:52 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:05:52 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:05:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d8088e2807eb42164f9f3528550b8f5d99ee1c881d68d085c747c3a050d781`  
		Last Modified: Thu, 24 Sep 2026 21:06:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6549f0fdb29cce4dcf6a61204b013dc56f866cf94d1bea2d54841c024a9a5552`  
		Last Modified: Thu, 24 Sep 2026 21:06:08 GMT  
		Size: 853.4 KB (853408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9234874d835f615cf56ab71f0f54f6380e7b1ed1ba889c2670e4162a3cdff35a`  
		Last Modified: Thu, 24 Sep 2026 21:06:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79fb3e64425ce52ac9a7bea398a7209b96b667757b8da22e272c6807b4a35db7`  
		Last Modified: Thu, 24 Sep 2026 21:06:10 GMT  
		Size: 113.8 MB (113802279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c898b1b342184a9ccd4cf4079b7109d15437245bd11c336ddfc751c88cee06a`  
		Last Modified: Thu, 24 Sep 2026 21:06:09 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e946e378898500cb0b9c76d0cfde2f0db2e75c737c17a73640e7e416dcca30b8`  
		Last Modified: Thu, 24 Sep 2026 21:06:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cfc9d435aacf749d681f9d3877b560cc6f25aaa4ec4da93e1446995a7e6c8e`  
		Last Modified: Thu, 24 Sep 2026 21:06:09 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c382f24edc882c2e1b46fd7d26e01583d79c7a5bcafb189c169b42db7405b53c`  
		Last Modified: Thu, 24 Sep 2026 21:06:10 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:49618d26bdfa3d2497f445d06b5c5e6445af470e414e80cc0013f90cf890592b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01a721ba2cda2a663c6b54ae2b93fe42c0a77316d977173fa6499e6fb75af18`

```dockerfile
```

-	Layers:
	-	`sha256:bb3482bee616268b1077d34a73c1287572a414d58d8d9889e17cdd875ce91107`  
		Last Modified: Thu, 24 Sep 2026 21:06:08 GMT  
		Size: 615.4 KB (615430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1ebce679c80e65b388c8ec5f8d328806f006d2501d66022944d020d00c075f2`  
		Last Modified: Thu, 24 Sep 2026 21:06:07 GMT  
		Size: 40.0 KB (40010 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; 386

```console
$ docker pull postgres@sha256:5c3adf2f7b40e4f89bb617f1fd37b2a0ed783f1a3756dacfad2f77aec6b00aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128024725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6864f1c36db8af84671f576b96c0401552ad92fdc507b4ab933b357ba2f274e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:03:53 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:03:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:03:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:03:56 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:03:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:03:56 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:03:56 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:03:56 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:03:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:06:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:06:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:06:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:06:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:06:46 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:06:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:06:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:06:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:06:46 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:06:46 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:06:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ca34a3aabaee8f6527c8849a685f015d2cc6eada807f84dc0cb4c767c91804`  
		Last Modified: Thu, 24 Sep 2026 21:07:03 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43aacdc03c31fa004115a60c65bbb3435d940baf697dd035b5baf23474c17e8`  
		Last Modified: Thu, 24 Sep 2026 21:07:03 GMT  
		Size: 870.3 KB (870300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f70573e56cfea273361281815632880c4b307258b20f8a8f00428f7857306b7`  
		Last Modified: Thu, 24 Sep 2026 21:07:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7814f888f0568de1576b910e77a1b13b4f9f634846e442ee3a4bb02ac6d29e4c`  
		Last Modified: Thu, 24 Sep 2026 21:07:06 GMT  
		Size: 123.4 MB (123448939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b21a0a78989a863300dadb47ca0f721f4b4373ffa961ccdefb6c37037e15531`  
		Last Modified: Thu, 24 Sep 2026 21:07:04 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244def7e55576d26a524db499351ac8af13996bba5d935f80cd10b4f4598ca6a`  
		Last Modified: Thu, 24 Sep 2026 21:07:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf279b711b4ef64b1b33e52481c664851f8e04f8410f385d435e1311b98a174`  
		Last Modified: Thu, 24 Sep 2026 21:07:04 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8797d4aa561dda4f8453b6411c67cbfd7522b77fd94e892b99c9d560bd254359`  
		Last Modified: Thu, 24 Sep 2026 21:07:05 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:08d562841ef902ca8fbd4ab1d5ccfd7d38891259aa536d6d3860f7b961c481c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc8e132346b1a1f71e55272ddeea0eb283a8c414113d080f52b8d18e0c57033`

```dockerfile
```

-	Layers:
	-	`sha256:885328b638e345c2ba00efa335575d344ef5c5fafe912c2e1a393504ce15cd48`  
		Last Modified: Thu, 24 Sep 2026 21:07:03 GMT  
		Size: 616.0 KB (616033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df9f46b97397022f5e19d5e7ad8a0f8a7df879cf0e2802ee90f6cbf3ccba502f`  
		Last Modified: Thu, 24 Sep 2026 21:07:03 GMT  
		Size: 39.8 KB (39805 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:b365866b8ee82f0fd7591b7747f9ca32cb6aae4b137b2804c72f86d312dcbe91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124150332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84849cb5f94cf700c6d2949167012513c06e14e2f7c89cd60daa95a42590dfcd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:33:36 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:33:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:33:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:33:41 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:33:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:33:41 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:33:41 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:33:41 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:33:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:37:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:37:55 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:37:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:37:57 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:37:57 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:37:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:38:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:38:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:38:00 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:38:00 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:38:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607e5f8463bea57fa1530858a05e548c90aa5c3fbab6557f5f41d6890f3ff887`  
		Last Modified: Thu, 24 Sep 2026 21:38:39 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fa6a33c4e3943aedfbc9cebbfa4fa0d023f349fb3615c208e62c0628b08b52`  
		Last Modified: Thu, 24 Sep 2026 21:38:39 GMT  
		Size: 858.7 KB (858693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c651379331868db0f7515654e82105a7e5e4ad86f09c44955eee07c0084a2bf`  
		Last Modified: Thu, 24 Sep 2026 21:38:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd147ba865b5d919cabb813746290c7f59325bc5588e7805636ecfd1383eff3`  
		Last Modified: Thu, 24 Sep 2026 21:38:42 GMT  
		Size: 119.4 MB (119445460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6d09bd385f8d215e86d45b000e419c56c94fef09a09b685c8d4bae48575570`  
		Last Modified: Thu, 24 Sep 2026 21:38:40 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf20187a2177cc1a6979ea1810b8fe4e855565595dd25eee880db4c7577d4d6`  
		Last Modified: Thu, 24 Sep 2026 21:38:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0592e5f4775c9d5524160399894162e36d5e56ed31e83936fe8d30da9ff287ec`  
		Last Modified: Thu, 24 Sep 2026 21:38:40 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee2b97bd9d8c5e7630ce2d861f3cac82ed1a1ed3337112a67ba15d3a666f907`  
		Last Modified: Thu, 24 Sep 2026 21:38:41 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:181f0e1738367407cab11f1a50d05d142ddf2a662ea4916ab3f9c4c783de10a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b962c7d9d5a4658cdd6760a7c17fa70526bbc5af1443eb45c2c3f79a2bbea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4abe05d5888a08c2394f52256b258d8a0c673370e3feb2b5891ecb569fe4b18d`  
		Last Modified: Thu, 24 Sep 2026 21:38:39 GMT  
		Size: 613.8 KB (613757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b51ca764743b60d60dc1ae8bd61be792004a4b597c2044c0a130837c1b7890e9`  
		Last Modified: Thu, 24 Sep 2026 21:38:39 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:ef3973563a55a3c65c05ae4eb78853d5f2472009545f4cef4f248afd44486cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127640396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ce3aa645f8a4aa2432fb824c7baef5299fe7cd7079b558414cb77494795417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:01:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:02:02 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:02:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:02:02 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:02:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:02:05 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:02:05 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:02:05 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:02:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:07:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:07:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:07:07 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:07:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:07:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:07:07 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:07:07 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:07:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dc792127ceafda040991df9716f7fc34b61d6327840d1a6c26855856780064`  
		Last Modified: Thu, 24 Sep 2026 21:07:35 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c2347b19a8f115b0dd434c5d9ed3f4c1d430d2b63d68e854d29731c1506ed1`  
		Last Modified: Thu, 24 Sep 2026 21:07:35 GMT  
		Size: 875.7 KB (875730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02982ec255a17945f78cd4f7c4c205477014e82e21f8e16984521dadc3133fdb`  
		Last Modified: Thu, 24 Sep 2026 21:07:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc28d26325fd285b4ff641141668819adb842b74550ce6c9c2f09f089989b689`  
		Last Modified: Thu, 24 Sep 2026 21:07:37 GMT  
		Size: 123.0 MB (123020621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d0b5313a621f85904514063189565e7d9f72dbbcc8ba97def98278e58c0b38`  
		Last Modified: Thu, 24 Sep 2026 21:07:36 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c39da1a6b6cfbe8f29cbbe0e15f2c772f577a6aef4958475ea9733c74fc6799`  
		Last Modified: Thu, 24 Sep 2026 21:07:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280703a386fdcbaaa6e3afba6f2f43f56d11059e06d18840a3f0bade7472b97e`  
		Last Modified: Thu, 24 Sep 2026 21:07:36 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e32af338cdaa31731e3b8295201a5d313efa38325dcaf2ad301a39f799ef65a`  
		Last Modified: Thu, 24 Sep 2026 21:07:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:1b25d2aa6f3fb03f6b05e6e5b6fdcdeb9d57b62c1afa41b5734b3d856f68e903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40bdc4d9c103d0604890672bebb823e62f16568bdc3c66e734eba9907d2c2ad`

```dockerfile
```

-	Layers:
	-	`sha256:97a570591204906f90c334527c4492ea9e1c1fcfeed3bfae14e94c0db7b49ea8`  
		Last Modified: Thu, 24 Sep 2026 21:07:35 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af031a54506c3dab851ae22d219f14d65b1af2acf7869361027e740bffe262df`  
		Last Modified: Thu, 24 Sep 2026 21:07:35 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json
