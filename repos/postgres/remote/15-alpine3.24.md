## `postgres:15-alpine3.24`

```console
$ docker pull postgres@sha256:fe0737ba566a2c5b2a28f34433c0a423261900ec17b9bf7ad115e1aae7e57f1b
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

### `postgres:15-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:a2c20749c564b4eb73a77bfda626f8a3cde1bbfae020fb97c616a00cdc1a2181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115228114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad6289ca337b3ce76896f2e7e61480490152886c7828120371fb28e6b779e1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:23 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:17:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:17:06 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:17:06 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:17:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:19:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:19:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:19:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:19:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:19:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:19:06 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:19:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:19:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:19:07 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:19:07 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:19:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2521846a4c4bd01d30b1a40b026fa8270db896b28395cdfdba836380eff60a97`  
		Last Modified: Thu, 13 Aug 2026 19:16:56 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516ac23b2d22b781ca27f592501bcce3e0f5483c1ff113a4d795a08db4c4449b`  
		Last Modified: Thu, 13 Aug 2026 19:16:57 GMT  
		Size: 900.3 KB (900258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30adf595bd0ccc17398878aadc9eff07c9c8ce3e1748800725a0fa903a5f9f7`  
		Last Modified: Thu, 13 Aug 2026 19:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b616744b9ff525284b289eb55f827c928d590b404806d7f3f3d5afa2c6dbe2`  
		Last Modified: Thu, 13 Aug 2026 19:19:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbc0f97fe870a5c05d2194b19060b392a1857b15d838fa55845496abd675105`  
		Last Modified: Thu, 13 Aug 2026 19:19:24 GMT  
		Size: 110.5 MB (110464127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26065aa66f8da108c9f7926aa087351a87e2dab98093e62bcc21e361b73e4922`  
		Last Modified: Thu, 13 Aug 2026 19:19:21 GMT  
		Size: 9.5 KB (9487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4989bdaa0ad3493e09f598896a5ade304c55e07dd4ff3c826f392f734f914dfc`  
		Last Modified: Thu, 13 Aug 2026 19:19:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0141deae452e92ca7bcb2ffcfdd068094657329e09fbaf6d46abe6b16221cad0`  
		Last Modified: Thu, 13 Aug 2026 19:19:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7426913c5829613bad866a8ba66cd67dc81d04b7b57003e27cd1c65fb781160`  
		Last Modified: Thu, 13 Aug 2026 19:19:23 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236e3b4c2204c9796568278afeeda38ae7118613d20cb0d46257143c73b4800b`  
		Last Modified: Thu, 13 Aug 2026 19:19:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:dd8210b541c42956e453430b42943095d7c8138597a15880c395fcf5a3385306
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373ecfa6245a1d16e473ff36a938fe572ec9d8581eb44ed0ac08119803d5b749`

```dockerfile
```

-	Layers:
	-	`sha256:f9b271aad81344ab069b6597b60c1e88f3f4c66f81d66786a8d0612ad2911f1b`  
		Last Modified: Thu, 13 Aug 2026 19:19:22 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f67b1fb6e304b71b4fea4656715fff893c1051919435ab7fb532359239f0ae96`  
		Last Modified: Thu, 13 Aug 2026 19:19:21 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d7541417d199c37cf8ac6b4b696c5f148c2a39a0444f4d3e657354f5814334c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111519607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c163bbca58306d78816e781797e52eb64e0cda903dde920415c86585d7b96597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:31:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:31:25 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:31:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:31:25 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:31:25 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:31:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:31:25 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:31:25 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:31:25 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:31:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:34:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:34:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:34:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:34:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:34:16 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:34:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:34:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ed655cc0de52d21e6e547c8d70cae86b61ff299faa1cd4761c3afeefad39a9`  
		Last Modified: Thu, 13 Aug 2026 19:34:30 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1b35c5b3d83d969cf966ef8d38ee1e3590ed8a0a410a55f21277256762b7847`  
		Last Modified: Thu, 13 Aug 2026 19:34:30 GMT  
		Size: 864.6 KB (864616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30a1733fb7b446ab88923276e9fa91a1e4bca7dbb5b39308754e5ec44b93379`  
		Last Modified: Thu, 13 Aug 2026 19:34:30 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3770bb8ec151626104a2cc6d87295640b18d08f87ad2eb9f87fb939bf6a1b47`  
		Last Modified: Thu, 13 Aug 2026 19:34:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dfaddffde211168d80bd7dc787b0f223860a661a58313ae79630c7fd9b57133`  
		Last Modified: Thu, 13 Aug 2026 19:34:34 GMT  
		Size: 107.1 MB (107084201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395003e03f5eb540a46ae232fd5ca1e9f4dbecd37388067ec4c2f78fb020ee43`  
		Last Modified: Thu, 13 Aug 2026 19:34:31 GMT  
		Size: 9.5 KB (9491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb57586632ffe7f998ca9f54bec675c1f9b6bdd740e70f16edef8b468a21f55`  
		Last Modified: Thu, 13 Aug 2026 19:34:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafdae2b0e8c27316b8d90b993761ad2e38b5ecf3f6bee1257d7894599d07087`  
		Last Modified: Thu, 13 Aug 2026 19:34:31 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ba2572c880dc4b07aef92e729a24f4c4750ce7e5734436a1830a8da8deec7b`  
		Last Modified: Thu, 13 Aug 2026 19:34:32 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d41c4f1c7df031d4b74b5e148a4542bec0c17b94e0a021622fe591bebc3b17`  
		Last Modified: Thu, 13 Aug 2026 19:34:32 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:0223ec58c05b96f38e07f408b0e6b564289bb7e19ee9a9805e4ea6869dcd3f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 KB (44359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde43e99faa8e3895088c05a5e37c5efea813dcd0a38ddddf29b4023d12a0b6b`

```dockerfile
```

-	Layers:
	-	`sha256:a0b81711fd5a8582d83c26775fe0178e47c2adf25ef916e2e15a5801994b532b`  
		Last Modified: Thu, 13 Aug 2026 19:34:30 GMT  
		Size: 44.4 KB (44359 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8f484cb5a94aa42f516954edfa7c66dbbc303573527cc87c9d4bd780c94e239c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105251171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930be7f64771942816433abdbd9b95c6796e57aaeab6ad9db15702de07a963f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:15 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:36:39 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:36:39 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:36:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:36:39 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:36:39 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:36:39 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:36:39 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:39:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:39:22 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:39:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:39:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:39:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:39:22 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:39:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:39:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:39:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:39:23 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:39:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:39:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5078ae41d5111ed2beb0117ceeb40c3485d175668d958dfd7425027d4cd18a3`  
		Last Modified: Thu, 13 Aug 2026 19:17:20 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b918d700689b923998370718a8f9ac60b205258a9d5220df7c645880ea2e5a`  
		Last Modified: Thu, 13 Aug 2026 19:17:20 GMT  
		Size: 864.6 KB (864631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6f837ca4eecd622a7cc72847014b25b139f1cc32cbbe8e3ccdcda2024ccb4f`  
		Last Modified: Thu, 13 Aug 2026 19:39:36 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef1e85ff2df6e42a13f0c9b9190bd7788a401e6f6f7c49d9827b0fd368820b6`  
		Last Modified: Thu, 13 Aug 2026 19:39:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4269edff2ebefb7e234abad665b9e7c4ad481abcfdd0c1f6e42f3495661c410b`  
		Last Modified: Thu, 13 Aug 2026 19:39:39 GMT  
		Size: 101.1 MB (101108583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9cf7bff4b199618afff6288d7306c4f917c2435dc6f229744e15620a8581c6`  
		Last Modified: Thu, 13 Aug 2026 19:39:36 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894143d8a3aefeaca119b1537d53545db6c3d666623a9c9d320a48b39c64d10f`  
		Last Modified: Thu, 13 Aug 2026 19:39:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f933d36849329600065cd4e26c67630681288c74bc93710ac22758a4dd2ff31`  
		Last Modified: Thu, 13 Aug 2026 19:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c1a09a98ae8779b63b160a5431d139294ce82b39ce1fa28c2c66493725c7a5`  
		Last Modified: Thu, 13 Aug 2026 19:39:37 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7825c909c3159ca50223b271dc789c57bf87aefd197a66294b83b9ac6b1665c`  
		Last Modified: Thu, 13 Aug 2026 19:39:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:57dd46fb9bef50f00cb0fc0f54af5a170d01192b964ebed9e54fa2aa93316cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (642001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a105388e7ca23590981cde340023a7e3fa884895f2fb7eb9f24cd344b32a7b2`

```dockerfile
```

-	Layers:
	-	`sha256:7a50eb3c3a5aa4697ac59e555fe55a52c9e17fc16b3049d1f3463bd277132563`  
		Last Modified: Thu, 13 Aug 2026 19:39:36 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d147ae4788ef325e61702aecd277881ab6a2f34ce8ecc8a68e569f2bfd75285`  
		Last Modified: Thu, 13 Aug 2026 19:39:36 GMT  
		Size: 44.6 KB (44573 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8f1f9748236a87718c0e2a46ea1bad4f6caa52c7f5612ed57d0cf9d2fc314468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113057541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8478222652ed5ec9cd22a74417af86b61d7cf03bea9bb4d3193be315c16567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:17:33 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:35 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:17:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:17:35 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:17:35 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:17:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:17:35 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:17:35 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:17:35 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:17:35 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:19:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:19:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:19:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:19:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:19:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:19:45 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:19:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:19:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:19:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:19:46 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:19:46 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:19:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad89850f5179644afe72b76b2a600baa46233d71685c5dab2aaebdb2ff7f9c1f`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88bb93ed788dc488cc8dd200c817de69d25dff4a72dbf20f12009a017907d86`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 852.3 KB (852277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f3dcee14bbd7ba2e857b45df3bc4b97f35ff7994f8ba12a15e22f92a0247a4`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc0457b0afe69d8e4ffa8dfd779396e74949974285715c9ea077fc5d7b82d51`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a3a0148507dffc34af6698c7a6c8ff8e912d6705146cbb1ba38afb63ad42ac`  
		Last Modified: Thu, 13 Aug 2026 19:20:04 GMT  
		Size: 108.0 MB (108004888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51deb1c9c3e3558b543497b18332e9c33cd9934de3c79fba8126c8d0daae0a98`  
		Last Modified: Thu, 13 Aug 2026 19:20:02 GMT  
		Size: 9.5 KB (9489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e312518ccd4b58f3ba3edb4c641a7a03f15386711945613e8112301ab22e06`  
		Last Modified: Thu, 13 Aug 2026 19:20:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f9fe6733509d217e924f98feacc6c2eaa6dda5a9e42f5251494feac781ab93`  
		Last Modified: Thu, 13 Aug 2026 19:20:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe0373c40336ace38fc0e6f1ab5e2f1befc8985978bc5270ca48ab7831fa851`  
		Last Modified: Thu, 13 Aug 2026 19:20:03 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3191b58bb562d09159b60c0dd169523a605a5ee63bf1866fd26ffc0b76522c2f`  
		Last Modified: Thu, 13 Aug 2026 19:20:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:6dc85faac912a4b903b73362a3ba8f3d58ee19ba6a747094b644cbfe555e0099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.1 KB (642062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449dd8c507b39b02af535e1b54e698ed094a62d810921c7abb543130015a3033`

```dockerfile
```

-	Layers:
	-	`sha256:9887bf2f5e299c095501c4317cd7f7ca7552a07b7654b6458e1b7a34be523270`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:451287447a48d4c6f855a1b24532c488a71af8bc06911f1e9c262af2b133cd7c`  
		Last Modified: Thu, 13 Aug 2026 19:20:00 GMT  
		Size: 44.6 KB (44614 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:84f43042200e6feb307f42deb4cba37512f04c6398cf03b9fa5ba7ad03ab01b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121922459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02053293e4bb375f621599bb8c0504b0260a9a38e2d771f497eb7cd96d9beaa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:23:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:23:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:23:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:23:58 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:23:58 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:23:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:23:58 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:23:58 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:23:58 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:23:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:26:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:26:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:26:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:26:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:26:12 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:26:12 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:26:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e175dd47806c8263185a5b900751c31beef1df70bfbec8cf27b78a13d37c668`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9ebaaf2aa448a7b6a0f1cef6ba03630e22edb007d3d2e7f04e7e9ce4ecbedd`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 868.4 KB (868445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7d7ceae4e5c89fcb8a04da19ccef56e44ceec6424a8f65836215af6023bab5`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea636a8958938958f458fecf29b4000bb090647c9b880eb0bbf26b1ff89aa28b`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e543a448bbf05758da45216f8384340c89acfa81e6cdeaed03d7cd7d74873925`  
		Last Modified: Thu, 13 Aug 2026 19:26:31 GMT  
		Size: 117.4 MB (117366532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4d362162069cb2816ac03ee0c0308106e9f13b52da1b5ca04b2536303caa17`  
		Last Modified: Thu, 13 Aug 2026 19:26:29 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff5642b4b9308a796737c8aeb6dd08dd2e4b645068ad6958f18752d1c769fc2`  
		Last Modified: Thu, 13 Aug 2026 19:26:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1703aca8b1b1c393907a5818c35d842e1c4112740cf34e7bb1545857ca8e7426`  
		Last Modified: Thu, 13 Aug 2026 19:26:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255c95295adadc7bb8e974f3269f32aa8b9ccd83781f939158d288101be6629`  
		Last Modified: Thu, 13 Aug 2026 19:26:30 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942ea00150249794ded0c700ca7259056fe88ce5f76a6af21ca3836636110248`  
		Last Modified: Thu, 13 Aug 2026 19:26:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:c273e8f19665911136ff5e12107d45f26d95f3fef4c4e8ee992df49830fde948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5b4d572fcf42394a435e5dd796b40771dc61ec01929ea5b07d741fcce103b0`

```dockerfile
```

-	Layers:
	-	`sha256:3e34154e4ca2d963e4c0facf5efd1000c8a9ae522da6e8f18a34e6471176e40d`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8890f4b6f5e1d8cdc960becf95e1f6232bfa1aee6a62d3a5e3cd08915b1ae9a`  
		Last Modified: Thu, 13 Aug 2026 19:26:27 GMT  
		Size: 44.3 KB (44342 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:e8aa69687f46a659adfcda8116e0ffdb1b38b88d4ecbc901f887e40b9b2bc818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117894005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de966c722f8d4e10c3b49d2f1b42a4f643564420c910b0ae7e697d034952dd76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:35 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:35:54 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:35:54 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:35:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:35:55 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:35:55 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:35:55 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:35:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:46:55 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:46:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:46:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:46:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:46:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:46:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:46:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:46:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:46:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:46:59 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:46:59 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:46:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b482c3fff7c91e2f5ebdad609e3fb9c43868f7cb77f1a14f1679ddebc39904a3`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e722ecbdc76746406e040e3497b59d0c766ce0520381b11fef67528b800944a`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 857.4 KB (857448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752d272b4ee6093959503e320ee1caba270bdf6158f014f6feddc90dd21feac6`  
		Last Modified: Thu, 13 Aug 2026 19:40:38 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b8fd46ddf5871bf93967fb5e5fe713ff06f6559c1fdfb67df3f05eb2371a40`  
		Last Modified: Thu, 13 Aug 2026 19:40:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d29afbc6b0ab52f30548aadc431b5506b34cf339d8c9891b67072340258cbb`  
		Last Modified: Thu, 13 Aug 2026 19:47:37 GMT  
		Size: 113.2 MB (113205799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db74856094e3a21226ec6d33824a1418aafc1e3aff27680c00af44eb2671427`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 9.5 KB (9499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fa73ec6e9ed93fddbb3c5c552b5fbbf468cfc877480c2286aa635cad347e6`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93399bf07dbbfaacd0a6b44cf1f3dd81e4dc0d664311977921e07a73a87360e7`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de3dff712e3bc45bd568e9e6af2caea6fdac7af7e385386f14f311b0433a5b3`  
		Last Modified: Thu, 13 Aug 2026 19:47:35 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddcbe1f3e9030e1cfa32214d8c00b4bc7bf4d4e889cada66b200458e25a430a`  
		Last Modified: Thu, 13 Aug 2026 19:47:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:5f08b0e8483677b206beeefaa9fdbd3fdf4f582bd1f42fe4ae8d04b7e07ccf24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 KB (640213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22da905494e44c2ae5412f5850948099273b301968f6fcf7535ff0438dedc210`

```dockerfile
```

-	Layers:
	-	`sha256:ad31563140380557f1e488cbe973eaa77b9422d6048b80bde505b16956c7e93d`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328cc873759dbbd5fbb4186929fff91be762bd90ab02b97023f686522fccd602`  
		Last Modified: Thu, 13 Aug 2026 19:47:34 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:0928df51bf21ed88373c9fa7293c97ce82736c8e3faa6963f61d204f6471a4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117224791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd710afbc2ac1df07a0729146d8d0129fa832a201edaeb7578b64b0dfc6a57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sat, 15 Aug 2026 15:26:13 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 15 Aug 2026 15:26:25 GMT
ENV GOSU_VERSION=1.19
# Sat, 15 Aug 2026 15:26:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 16 Aug 2026 03:30:32 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Sun, 16 Aug 2026 03:30:32 GMT
ENV LANG=en_US.utf8
# Sun, 16 Aug 2026 03:30:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 16 Aug 2026 03:30:33 GMT
ENV PG_MAJOR=15
# Sun, 16 Aug 2026 03:30:33 GMT
ENV PG_VERSION=15.19
# Sun, 16 Aug 2026 03:30:33 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Sun, 16 Aug 2026 03:30:33 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 16 Aug 2026 08:11:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 16 Aug 2026 08:11:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 16 Aug 2026 08:11:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 16 Aug 2026 08:11:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 16 Aug 2026 08:11:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sun, 16 Aug 2026 08:11:54 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 16 Aug 2026 08:11:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 16 Aug 2026 08:11:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 16 Aug 2026 08:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 16 Aug 2026 08:11:55 GMT
STOPSIGNAL SIGINT
# Sun, 16 Aug 2026 08:11:55 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 16 Aug 2026 08:11:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9375bf7a2332b2c57e580ce9570cff3989eca9e977da95acd0314ff3b0cec2`  
		Last Modified: Sat, 15 Aug 2026 16:22:00 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b88bdef7af76a2200d6d2f239fa619712910832f48d85d7a833264b28fbfb89`  
		Last Modified: Sat, 15 Aug 2026 16:22:00 GMT  
		Size: 844.9 KB (844941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b64287da14218c84fce9be8966c9a9df58bc8395efa715a4537982fd791477f`  
		Last Modified: Sun, 16 Aug 2026 04:24:45 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead1219d2513fc75a069b409a0f7bcde6a1d15ae900ce2ecf87885467448a29b`  
		Last Modified: Sun, 16 Aug 2026 04:24:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aac0ffe5ff5cba3ae7066469d61cf1fdd5ed4a4eae7d30566c7e1ccb79fdf62`  
		Last Modified: Sun, 16 Aug 2026 08:15:09 GMT  
		Size: 112.8 MB (112788138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce63747efccd1a1dd8580d91c70a2a7473e9b6181ebd8dd704ed66635e59477`  
		Last Modified: Sun, 16 Aug 2026 08:14:52 GMT  
		Size: 9.5 KB (9492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f48c0a329b172d9f376c5b9c545b1acb39ec00bd56ee65a40e168d4dd7ccf95`  
		Last Modified: Sun, 16 Aug 2026 08:14:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2677d6a20ffd239b45fc99d3e1c3b541d628d347efdc8e79c8e43cf052c37dd6`  
		Last Modified: Sun, 16 Aug 2026 08:14:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994bd961f7f0cd790a8ebb3c700727916ba4d33b4ac98a7470975fcb3456c6be`  
		Last Modified: Sun, 16 Aug 2026 08:14:54 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482a673924cba06e1b4264c79a88fa7f11fc18a2b4a0fec71c9299b5a8995aba`  
		Last Modified: Sun, 16 Aug 2026 08:14:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:3c76b018513cb4673d810ac46481e69dbd71604b7ff4a184f38687e85c5d4cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91508a5c85764aca422bbae336364e2d84381f06dd5523f9b2bc32b438a47f2d`

```dockerfile
```

-	Layers:
	-	`sha256:196b29d580a30cb286d86aef69a645b39558c79a76f2e50d6e24138834a63b18`  
		Last Modified: Sun, 16 Aug 2026 08:14:52 GMT  
		Size: 597.4 KB (597421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c414c56fe46feb2ea500eaf8c7a5e78b72a029fe563b8029fa33a045ad6e30a2`  
		Last Modified: Sun, 16 Aug 2026 08:14:52 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:820f6a15ff5d4cda5cf8c0470fdea88bbb97115d75e3a3f9d43fd86e379b3848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121727698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e6b5bb7a028c415d8031494d16e469b9b8b7e74618e24efca06749a8b28476`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:13:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:13:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:36:46 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 13 Aug 2026 19:36:46 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:36:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:36:46 GMT
ENV PG_MAJOR=15
# Thu, 13 Aug 2026 19:36:46 GMT
ENV PG_VERSION=15.19
# Thu, 13 Aug 2026 19:36:46 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 13 Aug 2026 19:36:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:40:01 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 13 Aug 2026 19:40:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 13 Aug 2026 19:40:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:40:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:40:01 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:40:01 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:40:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1b99b75eb19241eeb900cbc0ab01c5cfca6cd9f1f8f56fb48cb707523e278b`  
		Last Modified: Thu, 13 Aug 2026 19:18:40 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fa85617a61ff27d534a2be278a7871a232c90dfc88fbaf9d8b3ac581fefe97`  
		Last Modified: Thu, 13 Aug 2026 19:18:40 GMT  
		Size: 874.5 KB (874495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4ad57e67b54cd6c25f638af6acf7ad3dd2f64e0ed4810d383fa71ec26ddb25`  
		Last Modified: Thu, 13 Aug 2026 19:40:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b7d9087348941c28f4e4e115498d7b700ebc70aec3f4b94dda771f9e7bda3c`  
		Last Modified: Thu, 13 Aug 2026 19:40:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922a01dea8dd6d0543e8e3a029091c0b8086555177bdcfb5bd700d2ce9cbc57a`  
		Last Modified: Thu, 13 Aug 2026 19:40:30 GMT  
		Size: 117.1 MB (117126543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47aea35d67cbbf633156baede071ce9efb942fe7804709a34f8bf877949fccdb`  
		Last Modified: Thu, 13 Aug 2026 19:40:28 GMT  
		Size: 9.5 KB (9489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c890529e03552a73a36c1306d475c05b8a329f925b8d8ecd37e80648d66cb7`  
		Last Modified: Thu, 13 Aug 2026 19:40:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b076c94bb063782de087b8795002832d77f8951e98a3be7b073398a57e20f26e`  
		Last Modified: Thu, 13 Aug 2026 19:40:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84151e94a09da7aac3e686f0c33030e1cbd111cbb8c5336f68ce37c6ca742639`  
		Last Modified: Thu, 13 Aug 2026 19:40:29 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b4a2c29f8506961f41d9643dbaac15c8d36fd6ec6cc66f1413bbf4fdc80fcb`  
		Last Modified: Thu, 13 Aug 2026 19:40:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:1d8e2cc3b9481ca0460a93186fe83314187dcf785ad4fa19c33d6bd93ab0c007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.8 KB (641781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7558ad8dc1c1a31c6df0af984d0fb5ee3fd3b5e6e7697c3e00c03af8989e8ef`

```dockerfile
```

-	Layers:
	-	`sha256:accb8224a4566fd341995b7e91e27fd4176edaab90f65e46b1a0a86595530d8f`  
		Last Modified: Thu, 13 Aug 2026 19:40:28 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a520e17f6cb7de94c8defa012b20ed5f81d605c4d9e2f656bb48d1fa63ec3be6`  
		Last Modified: Thu, 13 Aug 2026 19:40:28 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json
