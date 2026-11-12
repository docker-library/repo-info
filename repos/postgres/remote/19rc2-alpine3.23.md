## `postgres:19rc2-alpine3.23`

```console
$ docker pull postgres@sha256:5b0361a8af7a6b7aef04f4e563e5e1460bbdeb3bfd2de1bb727bbbf8c7b40818
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

### `postgres:19rc2-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:93f19f5ab5c51fe9dd21a6402223bfea090e69f9dfea3dd234307ce2e5e6f611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120805825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54a7eec17ce19e7db35a8b533fe7b5bf709f11015d81bab602f8290469164ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:07 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:07 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:07 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:07 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:52:07 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:52:07 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:54:34 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:54:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:54:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:34 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:54:34 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:54:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:54:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:54:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:54:34 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:54:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:54:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7db3e085588089ded968734b45602140434bd9176fcda81c2591ce5e2fb613`  
		Last Modified: Thu, 12 Nov 2026 20:54:51 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154a6ab7bd79e8e0f37a13a8b4c72a1efd32fa54644491e12a9ee4f681a05e1d`  
		Last Modified: Thu, 12 Nov 2026 20:54:51 GMT  
		Size: 900.0 KB (900022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce7eb62d7a82ea41ea2ea6ec8ecd6a58a8152c3400258c06a511fd5af394d2c`  
		Last Modified: Thu, 12 Nov 2026 20:54:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cc82a1f409ce79c4e8682c3274531b11427b7ee597f588763529cea6738b80`  
		Last Modified: Thu, 12 Nov 2026 20:54:54 GMT  
		Size: 116.0 MB (116024513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12071fd01c0d1e522d3c78234a3d96843c0cd45d80200c1e0b7a937b2608056`  
		Last Modified: Thu, 12 Nov 2026 20:54:52 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ccb55fd595f9cb2547dfc8550512ff1aeefd64cc61e07d1eab0e396f027bd9`  
		Last Modified: Thu, 12 Nov 2026 20:54:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c436ec4a7b4376063029c2afdc93b09bb4c66c3539e8ae361ba337f0c93ac1`  
		Last Modified: Thu, 12 Nov 2026 20:54:52 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50ac63d4e493a1b69747c0b2c1d1af0eb72355ff9e7fa6c1db4d3893825024a`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:44d44e2be4618bfd15c9bdb918d02b52ade69e2cf6439b8e9a695b94e4eec373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5189b310a84f4ce8e82743ac10f01ac2c04fef09ae863f32b06a0c1bcfe5f45`

```dockerfile
```

-	Layers:
	-	`sha256:ab14bffd5008a31e46cfad3b370b3e120c2ed421f8427cf3c0bdecc875643612`  
		Last Modified: Thu, 12 Nov 2026 20:54:51 GMT  
		Size: 615.8 KB (615754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea952f30b4266a681c67dc31538a742eee5f1fe7869d43bba66f9e033f87d18`  
		Last Modified: Thu, 12 Nov 2026 20:54:51 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:92da89e4115aec34d8167fd70d1fb72fcea5addd30384b7449ba2bb1c485e238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116993942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54475ed4e4cc3f71deaac857f27bf4c77207f680b87eee3160cf743de7709477`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:53 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:57 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:57 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:57 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:57 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:52:57 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:52:57 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:55:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:55:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:55:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:55:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:55:52 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:55:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:55:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:55:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:55:53 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:55:53 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:55:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ffab63ab11c97d4d80e4c82b4554d3d7dcd962c444f7e7e35d2259436860a`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce37ed18a2026edc5dd2bb54a45f6eb3686bea56b701132b0bbdbb5a62ae4d5`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 864.5 KB (864520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ed376a6390b02e0fcf28a00179ce68d79d00008f72caa66fbc8f21c2834d47`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22820afd1ab72040188272faadda0fe3b7db24b755477618e9a6f57407225c35`  
		Last Modified: Thu, 12 Nov 2026 20:56:08 GMT  
		Size: 112.5 MB (112542470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f68cf6037bbed50b4e97f0ff2fffac8144824484854856824ffcc4af79cd3e7`  
		Last Modified: Thu, 12 Nov 2026 20:56:07 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac24fe807eebf0b93cd9f31a7be34db716f8b040a44d65c09df0d824fd162b0f`  
		Last Modified: Thu, 12 Nov 2026 20:56:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d5db924d7f5eded9f2b5752fa85521f379a84f74bf51b4d1399046f02197af`  
		Last Modified: Thu, 12 Nov 2026 20:56:07 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6700dff5aa3b4d0df4d75bb37de072e8aec6bb7db1c70658e49bfd0b8f7957c`  
		Last Modified: Thu, 12 Nov 2026 20:56:08 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2c2556729abc12297f2b233e55e19cbcc03b302e6000ef4932546c3cb8a3f9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0396d45e97c681bccd1a7bce96ef94e7395572be0fccf810c459f343f35439f7`

```dockerfile
```

-	Layers:
	-	`sha256:4a3b4802b1cbd916eba8ff5cc12138c5cc03acdb801ae34936c1a42ff608009d`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 39.4 KB (39425 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ef6231973e758f50adba3f70094dc213c7ccd70cd65486ee3f7f135c9f5fc2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110513235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed34341ba9061e5b103cd30e9dc36fa1b05f5f6c5cbf95d429a043e9266ddf`
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
# Thu, 12 Nov 2026 20:53:30 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:53:30 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:25 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:25 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:25 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:25 GMT
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
	-	`sha256:7e62d0f9aa2b1866939640fa62fb452e220d7696438acaf6e9babba2d3a9695f`  
		Last Modified: Thu, 12 Nov 2026 20:56:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4d08580b695f4ffd726f24bd9f650cdd9b690bbce7f1ca60742dcbeed31ce1`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 106.4 MB (106353186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e3cd27aa17b122686e8dc66d2421e2cb0a30887cd0ea1cd8de159bcd11ea9c`  
		Last Modified: Thu, 12 Nov 2026 20:56:40 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794ec6b85b725753263b421781319258c985d7f24c6d50daf5d6e2cd0458b1c0`  
		Last Modified: Thu, 12 Nov 2026 20:56:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7c0e3f6c373e99b8da4b05f5b19592d0489b0420cd0252e65ad8fa5fdc20fa`  
		Last Modified: Thu, 12 Nov 2026 20:56:41 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6f4a5a23293c44d9e8837962fa745256b776390d48c76f6a8963b7168c9512`  
		Last Modified: Thu, 12 Nov 2026 20:56:41 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:886ce8b10d03688f3ea4ae9e7faaa9b88fb2ae99a817b92dd20ccf875f673367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca95b5cc9bc54214601709109846391c3b85487109c9abf5b94b44f26d51fc4`

```dockerfile
```

-	Layers:
	-	`sha256:9b08ba892d15bf74f1aa5a1865f1931964ed1af070922634de9daaee59673375`  
		Last Modified: Thu, 12 Nov 2026 20:56:39 GMT  
		Size: 615.1 KB (615116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dba55cb13c93a05b7730fdc2c30ce1da1907278401bbfdfc2a65a19a3a1c9ee8`  
		Last Modified: Thu, 12 Nov 2026 20:56:39 GMT  
		Size: 39.6 KB (39640 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5fe165f7a6471ddfc7d74133b5b563395fcac9c7710bca0425cefa7c143010c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118573924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35693b681fe6654554db0b05d8f1aa4467a981ec677e891af6efec5942ad5fd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:53:46 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:53:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:14 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:14 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6496c77faf31347f3f8196706aca46a6f7535b02e62808aef1fbc8ce518f95`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017e5def9f641c7f63d62b3d02e5d76470b7efbcea9eee978eb171ea4ba404b`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 852.1 KB (852052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391f59b8ddd58fceda34c323fd50dbbc048d59241b0afe8d3dd54451d529de9`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63afcedd707b746cc9521706f7b74f1b4a93757111393fa9249b6a0d593dce6d`  
		Last Modified: Thu, 12 Nov 2026 20:56:33 GMT  
		Size: 113.5 MB (113502957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0e1c716b0ff247e354f0ec80ef760d65763f043e01bdde7ab32a37959d1c86`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802a909bae68a94722897cc0aa93049cd42738913bf328fd21d2e16177c3f8ad`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa19a73e2cd12b34f67954be91216da3ff7d870d5d51858c727ab4615ec8cd3`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6adf168eafc8eacf2c58f8ff06572fef4fd7e75c343507cf5e51b1bffe954`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:189a579da72a5d26091c96b02371d8533bb2d45ebe9271ec0b291653223e6636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd3bc629097a8720c2bc699d44dc1654213484701cd0b8fe657944d2baf810e`

```dockerfile
```

-	Layers:
	-	`sha256:1c8fb8a7eed85ce24d0de3d5f9fd9537578882f41a7e6b8d653f80edc6e1a88e`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 615.1 KB (615124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb4b5f0415b113a240863a8e414d2e023b9b9e3677a438af637ccb153e62cc85`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 39.7 KB (39664 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:bd2b063e60a178706861f90bb8cba469cb9b22ef63140309d10e6ec43e83bf10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127725758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba5bcbaa4f7d48c2f63a68b08732e8188e89d40a535a75e13a977ebb897719e`
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
# Thu, 12 Nov 2026 20:53:55 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:53:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:34 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:34 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:34 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:34 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:34 GMT
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
	-	`sha256:c39f7f9ae5e775095182516fb58eacb737ec61b5d2432923423fdb5ed274c2ef`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 868.1 KB (868052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e01f215ec52b08912275bf25711ee0d9d99d53d11e295f1cfe3dee33e08e922`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc559f396bde92741f532760c095583fdd353488d4e41d485db31270859218c`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 123.2 MB (123150418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c89db36f870a584106b8f222a47f1748212648aeeccb02967fcca276dbe27e`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 21.2 KB (21198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca58e63cf9c50cb73e0557d60ec2b4e33cc949e9553b13b60583eec4b6288172`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b514713364aa91b50e9bef76cf363ef4a3db0286a0d609be180915de16dde76`  
		Last Modified: Thu, 12 Nov 2026 20:56:51 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d933a20ea4b34f4f026c90254339e6f8a7996b92f015a080b32420ccc0151341`  
		Last Modified: Thu, 12 Nov 2026 20:56:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b53531651f6a6dde7ef4d1574a238b7f976c574b4418acdb76a60d9a19b6569a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affcb5ef523baad3df810e995e2fcd6a82b9fa81d26e9b922d4345658246de14`

```dockerfile
```

-	Layers:
	-	`sha256:6718fb4f55586934cee19aa12de51b842b683a432930b73ea25401c676f9f0cf`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 615.7 KB (615744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a3139dfdf4f4e00e5e99bb46f88355fba20fedad02a3f878926644d336cfaa5`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 39.5 KB (39477 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:214fc8bb360bf583e87f2684ea92bf93a6338d3047d463539ff4e2934640ebc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123841203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e32b9b44035a7f50a5ff19194f1ed496829f8b39158e49d80a7838798834134`
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
# Thu, 05 Nov 2026 22:53:32 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 22:53:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_VERSION=19rc2
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 05 Nov 2026 22:53:32 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:01:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:01:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:01:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:01:43 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:01:43 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:01:44 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:01:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:01:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:01:45 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:01:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:01:45 GMT
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
	-	`sha256:f704b55547b274191b98a94b3fc1b1d255ee05a8b8969750310c1bf4e29b9c71`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c9324e1362d7aa16f7bde5ab1ea5b5c5a8ee624562df8acc1566ff2e42d739`  
		Last Modified: Thu, 12 Nov 2026 21:03:18 GMT  
		Size: 119.1 MB (119136266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34821d32e2262b5d5011fa11360791fe9fa28c59d088c0ecc4420ec8087f14ab`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2530b8985c21eab92e882bf0bb3e830453f0c11e48f95e96baf4cfe2ad7ad732`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b503642d955ef8a9187485ec5ea74f6bff26401683f97a1767c3ef77f1292f`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cd93fabbef99f254ff07329e4aab1b459b36a22c679042dc1fc6acee25023a`  
		Last Modified: Thu, 12 Nov 2026 21:03:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d6f6d825de8822d87c5425eb2f558099a8f33f1e591aa34ccb78b46accadd14e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0c066eb0b598173e2d3f96149c4d75b720668e23a31c10149f3ae54784f74f`

```dockerfile
```

-	Layers:
	-	`sha256:f8a0dec90c267736829ff1dba5a6dd1e4b6afde8dc04d87f78f0c90bd4a33b17`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 613.5 KB (613457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a286af02c0345d7894da0db242ff9706c9eac9cf568b2760989be88bf0909d56`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 39.5 KB (39543 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:c4ed6a3ff312b606215c6425041f1e3dee001cba44301807809a38d08b691972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127338728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f917082cb370b985419a65eee82a7f6068e35edd628b6a17c073a01bedd94e`
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
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_VERSION=19rc2
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 05 Nov 2026 18:56:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:17 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:17 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:17 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:17 GMT
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
	-	`sha256:5d0ba21c415cc49f8821d7d283c9d5b667721f1c5ea61814f03a27b3a7adfda2`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 122.7 MB (122717453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14dceb296e569918e3c76e4246472784cb12c5104228c90a76b0ca48c1896be`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6d14a337d02f1d6d5a82911311a8672cd83eed0037e4ba81d9cb258160727e`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490366cfc2baa687ec2b9d14375cfc63351d3b54e5efa03a6364e044e4635a22`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4168ff21e0fc78f37f612459c55ec0f5954d6df8ee25042848aedfb1f6e0943`  
		Last Modified: Thu, 12 Nov 2026 20:56:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:75e6e72e05e6232125a056a38a7745fd25c4af0316bd1c9ed4752b4c6203f91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4198f12e0913c901553b3ff5112237b5dab04b36050053e0f4bcbdd14125be`

```dockerfile
```

-	Layers:
	-	`sha256:149e0414906a89f9b6df8cffab1bf46956e0a0eaeda1edc5ba7a6b9002097598`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 615.1 KB (615103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a421c6aa6bfc06274fca0efe50180120d4221c7f4d9d25f3fba6e7c0b426a59`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json
