## `postgres:19beta4-alpine3.23`

```console
$ docker pull postgres@sha256:bc2884168476ec4a79ad3b30efe63aca1abbbd4786bfb719c3b4affb4c542e09
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

### `postgres:19beta4-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:ff959b07aeff719de6a63eaa2ad6e0ea5763deb8ab718c351534d5d6bb7fffe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120607816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb312ccc9f650906fa86c1e7987c0c15c3d92e555bf4bd1eac487c1746ab69c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:03:51 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:03:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:03:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:03:54 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:03:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:03:54 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:03:54 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:03:54 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:03:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:06:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:06:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:06:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:06:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:06:26 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:06:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:06:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:06:26 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:06:26 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:06:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e9a8cc8890df1636b81acf1da8cfa0ab7f4a6e343ba0d5390c375bfabbe8e7`  
		Last Modified: Thu, 24 Sep 2026 21:06:43 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df207c318ea1d897d4334f5ffbd37fa03814a417ebf7767fdc81ef41af88732e`  
		Last Modified: Thu, 24 Sep 2026 21:06:43 GMT  
		Size: 901.4 KB (901425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627965062f683d61aacae820369fca9caf7acbbe114d5464c9bbdefe58024145`  
		Last Modified: Thu, 24 Sep 2026 21:06:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a779144e4495dcaa9e594bbbdac87f9ebf56b10d9333b7bedb4cec439396820`  
		Last Modified: Thu, 24 Sep 2026 21:06:46 GMT  
		Size: 115.8 MB (115829183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f19ad76f85854179fa9e1fc7360a60f50868e7c7e6b296370884c5ede27ae6`  
		Last Modified: Thu, 24 Sep 2026 21:06:44 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e654a3f5076e4b1a5aedc69d83b057735e7ed8bfe059d428e532259d79551a3d`  
		Last Modified: Thu, 24 Sep 2026 21:06:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27acf52402e102ea7dc88674567368e2f1615c6760a52877002f013dfbac6619`  
		Last Modified: Thu, 24 Sep 2026 21:06:44 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d8f92a052c85d22aa66a2d190d01dbcaf5884ca611f74c3a5b86e5f58761fc`  
		Last Modified: Thu, 24 Sep 2026 21:06:45 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:03027f62238a4c7c62fad91d8a53c17a53f10b719f8f96614608edb439c20e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afd8ee90d912f4d8e83a34a173f07cbf81f83648b523bbf269be407f04fb10e`

```dockerfile
```

-	Layers:
	-	`sha256:68d4cec4d0d74d6221e6c83657a37193e099298c3dcaafade93a34addb2668d0`  
		Last Modified: Thu, 24 Sep 2026 21:06:43 GMT  
		Size: 615.8 KB (615768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:182447969458c5c9c651ba6f9c793a4f8397397b08c818652fac118d4818c1ad`  
		Last Modified: Thu, 24 Sep 2026 21:06:43 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c5fae81cf2a88fb9b5fdb3a0fe9566e39147d4e1ee101fc2d163c558a6c4076b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116812055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f8c4e915f6e6434a8b7045dd57a82f98a153c49998fc90626850aca93aedcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:01:15 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:01:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:01:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:01:18 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:04:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:04:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:04:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:04:17 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:04:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:04:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:04:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:04:17 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:04:17 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:04:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e60ebb2f7197b4995c9ae28221278f877b1846737defa97a3328b5693e2b797`  
		Last Modified: Thu, 24 Sep 2026 21:04:31 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72109be9d3e077ee75560addb5b337cdf4c57926caa21a9b8fc0f6a6220d7a4`  
		Last Modified: Thu, 24 Sep 2026 21:04:31 GMT  
		Size: 865.0 KB (865034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba2dfb6bcf88bc98117223b8d589ad89775d2165be81fc2cfc2e558f2a44648`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce6f3c4d16f2d57e8e13d5646b079c1cd93cf4d5481b3cd9b7a43dc5f2a4deb`  
		Last Modified: Thu, 24 Sep 2026 21:04:34 GMT  
		Size: 112.4 MB (112363402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b83ae36f054f3247fab9c78bd65353a268cbc40fb72f58139940bacf9ca138b`  
		Last Modified: Thu, 24 Sep 2026 21:04:32 GMT  
		Size: 21.2 KB (21191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c59f7e0ee3b8b885bd0c64f1006d708deea4b46d04f75b287af91fe9c8ec6f`  
		Last Modified: Thu, 24 Sep 2026 21:04:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae93feb3a8851352ab9765c6ae51988f38952dcd129077f16265d403c90dd00`  
		Last Modified: Thu, 24 Sep 2026 21:04:32 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33517ac8ddceb25c03c02809ce131bc41df80ee40ec1e1a81681ac8f391b721`  
		Last Modified: Thu, 24 Sep 2026 21:04:33 GMT  
		Size: 181.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:69288e43f47c472c129dc2d02a051052c1f0c044c324c84e400a8e385b45a361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 KB (39440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc9ea21a802bbc8ec1513d001c5028d8dd3699afbe9a8c8b3c31a95314abaac`

```dockerfile
```

-	Layers:
	-	`sha256:379454e45077b357504ad25410d9addb2fe85ed3f2a3f0eb92e4ec3b27dc4b8d`  
		Last Modified: Thu, 24 Sep 2026 21:04:30 GMT  
		Size: 39.4 KB (39440 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:dea0951ad5cd29b966de832081fd668925cea3051034ad36498d84c22289045e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110338534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d0f737883169a23ae30c18e9b133340e5834324fe8f62fc136f212c847607c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:01:15 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:01:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:01:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:01:18 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:01:18 GMT
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
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bec11213e9b5a12e7541a6a18676a680667b47c5c312dd5b4b3562d91ab58b`  
		Last Modified: Thu, 24 Sep 2026 21:04:25 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483bf8926b3d4fdbf468273851c41eee3fb6ba43f83ace9b1fbd66b3f4d7c83e`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 865.0 KB (865049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba2dfb6bcf88bc98117223b8d589ad89775d2165be81fc2cfc2e558f2a44648`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6086829c79cf05efcb59e475c7b953560091e75c031c1212c3db5276860c39f7`  
		Last Modified: Thu, 24 Sep 2026 21:04:28 GMT  
		Size: 106.2 MB (106181872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7937299939844e06701a7ea8e2eb9a81a870d7b8cfde8a5212ad55545940be4f`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 21.2 KB (21191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8833b671bfd542e577d1da95820e3c91e1d4766537451fd4986641b5c42b44cb`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e70784ed7ab28149535309b55c22a77898b2fb175eeeb79082140e06d519bc7`  
		Last Modified: Thu, 24 Sep 2026 21:04:27 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cfc7f637e3b7b3321a20a5079aa67c708920fd4d8eea1802dd10b8bb0593eb`  
		Last Modified: Thu, 24 Sep 2026 21:04:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a122384c0c59db176766accc7414596ee1e581f3484d5d78987fa17d341d5eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9374d578769473f8ea8e08706b6841a7807965959d52139159f81fe07b0d41b7`

```dockerfile
```

-	Layers:
	-	`sha256:454edcefdd8f908c4eb88bfc3c0a195044496ca8727db1bc89edc407c2305546`  
		Last Modified: Thu, 24 Sep 2026 21:04:26 GMT  
		Size: 615.1 KB (615130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df4502e7de7e0c961d21d24f9d76eb88a52037e4d03f9f988783e5e4ed8326bc`  
		Last Modified: Thu, 24 Sep 2026 21:04:25 GMT  
		Size: 39.7 KB (39656 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:0657b421aa061e59074c211a9a26c39f4f34ddfc7d0dcbe371c34fbdc75d365d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118372144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01122f21d06bfaf391099865bbba99d531adb82072064fca49c0e7f55eebe202`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:03:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:03:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:03:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:03:51 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:03:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:03:51 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:03:51 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:03:51 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:03:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:06:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:06:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:06:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:06:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:06:17 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:06:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:06:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:06:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:06:18 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:06:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:06:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45093f363b5b4b765eaa00e680c09ef7fc636bec04f099825c71e117622d075`  
		Last Modified: Thu, 24 Sep 2026 21:06:33 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7267cdf85f159ccaf45b0b6d24ac96ea16f820dc13ce1fa2fd1a13be7e66b4d0`  
		Last Modified: Thu, 24 Sep 2026 21:06:33 GMT  
		Size: 853.4 KB (853411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5252c473659514e4d70a935ec9e7d122d56a06b71cfcf56abf4edf5ed659b10`  
		Last Modified: Thu, 24 Sep 2026 21:06:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b16930295f7cfafafe08160222715f341c2527363c415f3b2c26a2fe0d776c`  
		Last Modified: Thu, 24 Sep 2026 21:06:36 GMT  
		Size: 113.3 MB (113303980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a03326a8556359263d4e0c1f32153f3cb13602b29fb2c4c2997405f83b47453`  
		Last Modified: Thu, 24 Sep 2026 21:06:34 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3570b5642fb0d3641c63a7e8404880914ad1fa4e1b2b480bb73a7d061a15961`  
		Last Modified: Thu, 24 Sep 2026 21:06:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660d88d084f167e338c7955801dcb8f3a33a2cfd8f57c454c841a177c3559e08`  
		Last Modified: Thu, 24 Sep 2026 21:06:35 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4055dfd7febe760772be382d1f3280f3e2492cc19bb3d0d88b996e96cf40c066`  
		Last Modified: Thu, 24 Sep 2026 21:06:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6a24ff6a6a88100020e29c6f2c44ee5081e9dd91e6fb9ae0d83d8ff597663560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36303da570d6d0983bf714e6fda4a5252bf446bab5da95760767c62174553aff`

```dockerfile
```

-	Layers:
	-	`sha256:cdf5276e28f85ace46f654f907c605ed8dfd87711311fbe5ceaf0dfb3b3d12d2`  
		Last Modified: Thu, 24 Sep 2026 21:06:33 GMT  
		Size: 615.1 KB (615138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eb4ac58200f61153fd177b4e2c6e45bf45f6c7ead0ba1b2493c1cb909f38fa2`  
		Last Modified: Thu, 24 Sep 2026 21:06:33 GMT  
		Size: 39.7 KB (39680 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:66776fcfff30a67ce5edf5be97955dc3c8612f9ef26bba8a440d7699fff08585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127527912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21fcfddcc82fb927766494561df0306945d5521ff5ca462ac7dc59a99e20d724`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:04:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:04:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:04:05 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:04:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:04:05 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:04:05 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:04:05 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:04:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:06:50 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:06:50 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:06:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:06:50 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:06:50 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:06:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:06:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:06:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:06:51 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:06:51 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:06:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b2357a5895e25a963c96e7a8b4f10e8ba27bc5330c2a366fc6aea5e5cb740b`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a31bbc3e2bd7a61f6bc452d346d4e1c26d42d837609caf76627d0fa7dbe2df`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 870.3 KB (870311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5c259eb54eeae2ad15d1a7a71a4e6f5e1656334d78a30d686e70e89d1a8f52`  
		Last Modified: Thu, 24 Sep 2026 21:04:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be833efbca7ef3d4555dbf0dd5580a52fe30835aa058d679f62b786bfb4571e`  
		Last Modified: Thu, 24 Sep 2026 21:07:10 GMT  
		Size: 123.0 MB (122953798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c319877929c0b79d83fb20f965505d97f7b208997b0e43a5604a8767185ee67`  
		Last Modified: Thu, 24 Sep 2026 21:07:08 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f4e4c334333d6f7d7662aefe317094d962586320fe94278a65b71a1c561592`  
		Last Modified: Thu, 24 Sep 2026 21:07:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495f19fab0cc16cc796decb8ff19df3d449d9bf730250b0e061ff0a6469ba3ce`  
		Last Modified: Thu, 24 Sep 2026 21:07:08 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122be71771d5ba89f5b2fc00d0458a6d5aec9261bdddcb1182e63e2d3367fb4e`  
		Last Modified: Thu, 24 Sep 2026 21:07:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:be792dea0f1c7e7056233eb53f74f1413bc83fe18f09114d10e565df530c854b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23fdbfcb7079ec794d140a4e4301edcc7acd248a411a9a53db646a70950ade5`

```dockerfile
```

-	Layers:
	-	`sha256:0266873ba61f514ca420c63ab470c860ee1b097a030b683d2963e1db97896627`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 615.8 KB (615758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dea9a52ec81e8585e38e1ac678da518f3b3c2fc4cd7720b6a03b7867c80c5f2c`  
		Last Modified: Thu, 24 Sep 2026 21:07:07 GMT  
		Size: 39.5 KB (39493 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:fd86179b83e1c27fdfb56ed1e6db2d45bef85abb33e624f955ca96449094bfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123635189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7116a63311e806a135e448367ea8f81f2a1dbdb030068887e5709ed56bfe37cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:33:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:33:57 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:33:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:33:57 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:33:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:33:58 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:33:58 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:33:58 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:33:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:38:19 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:38:19 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:38:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:38:21 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:38:21 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:38:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:38:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:38:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:38:23 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:38:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:38:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8973c5d4599960d06ab4587be815ceb030a89479fd177ab7b99d094ff8b4e0b1`  
		Last Modified: Thu, 24 Sep 2026 21:39:01 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e426a8aa2bcea9dbe38e2157ac1a41693d45c6c9bfaf8474939c54db31fa4366`  
		Last Modified: Thu, 24 Sep 2026 21:39:02 GMT  
		Size: 858.7 KB (858705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d765ea763450711a7e59a9b6d179aedd4f901feb4e418e71ccd0e8d2bf9b6d1`  
		Last Modified: Thu, 24 Sep 2026 21:39:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83b526acd215d30f545380f9c538da86ec80fa4104f833450e29db52957ccc5`  
		Last Modified: Thu, 24 Sep 2026 21:39:05 GMT  
		Size: 118.9 MB (118933007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502389732b303ef57b5cc7517c0b28244d640e85d2110a5cdb7f59e0afbb661d`  
		Last Modified: Thu, 24 Sep 2026 21:39:03 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b956dd52aba82c5c98a5d5469b2b9cad5132a389c4ab38c114d9e728554f50`  
		Last Modified: Thu, 24 Sep 2026 21:39:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba7b497d6340601dd5b2260cfbf34478c11834a7dac86d162acebcc81c57d51`  
		Last Modified: Thu, 24 Sep 2026 21:39:03 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c12eda82dd86bd036dae7163e2d22ce9e6ba64c4f155e8d08885e475cba86e7`  
		Last Modified: Thu, 24 Sep 2026 21:39:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2a39b8e1c72ad1a6fa726cfb62b005eebd687a91f1b9efbc999e997bf3ef9b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6f13b4d28021901b1dbe700809830f8eba12c4649d52cf8e1225a58fa45eec`

```dockerfile
```

-	Layers:
	-	`sha256:222953dddd46fc9d87a2bd73e8d8cf4dae43e9f2cccd5c9d16bf1a5241fbc20b`  
		Last Modified: Thu, 24 Sep 2026 21:39:02 GMT  
		Size: 613.5 KB (613471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50905149a0f043336ee482f7f23646f7adf5aa4965ba7f64debe3c75916a87db`  
		Last Modified: Thu, 24 Sep 2026 21:39:01 GMT  
		Size: 39.6 KB (39560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta4-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:c8afe76332de4e6340fa91f0e37f46a74f9d0e481018d388c2661e9526a3b33c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127140378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88da418060c13c20a01036f55b76e75a2f750a098234d56b2ae4425f33918317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 21:04:29 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 24 Sep 2026 21:04:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 24 Sep 2026 21:04:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 24 Sep 2026 21:04:38 GMT
ENV LANG=en_US.utf8
# Thu, 24 Sep 2026 21:04:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 24 Sep 2026 21:04:40 GMT
ENV PG_MAJOR=19
# Thu, 24 Sep 2026 21:04:40 GMT
ENV PG_VERSION=19beta4
# Thu, 24 Sep 2026 21:04:40 GMT
ENV PG_SHA256=83157ee9c599d03b2f7a3d73ef3a56ec24e0e79cc2b3501a64d1364f56398c86
# Thu, 24 Sep 2026 21:04:40 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 24 Sep 2026 21:09:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 24 Sep 2026 21:09:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 24 Sep 2026 21:09:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 24 Sep 2026 21:09:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 24 Sep 2026 21:09:19 GMT
VOLUME [/var/lib/postgresql]
# Thu, 24 Sep 2026 21:09:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 21:09:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 24 Sep 2026 21:09:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 21:09:23 GMT
STOPSIGNAL SIGINT
# Thu, 24 Sep 2026 21:09:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 24 Sep 2026 21:09:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5816800be47b66dda5d4c74b6a98c51a117c0bb4f2a3460e32b025dfcd9b52e9`  
		Last Modified: Thu, 24 Sep 2026 21:10:17 GMT  
		Size: 975.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e75922b74d1ddf74333e3d8fda5f871ecd1e39877d9a819658058875f61d74b`  
		Last Modified: Thu, 24 Sep 2026 21:10:17 GMT  
		Size: 875.7 KB (875709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38f828a13c43f18d1b05577fbf25ecb8c0594f3f3126e23be81e7901d334d13`  
		Last Modified: Thu, 24 Sep 2026 21:10:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88193f3e922602280ffc77f638981cf1138132b9ccc21db33e54c4d252040ff5`  
		Last Modified: Thu, 24 Sep 2026 21:10:22 GMT  
		Size: 122.5 MB (122522702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1c280785651372afd1c3f7dce4000c5c10e8ce284647c94525f31eea43777f`  
		Last Modified: Thu, 24 Sep 2026 21:10:19 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4c9f32df1e43426814e35ce8418cd7167771c6a0fc5e56387ec82cbd8e0e98`  
		Last Modified: Thu, 24 Sep 2026 21:10:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ff5e2e423baa433df1abbf4241d85f291cbcebf93d2a170e4552780cd1f71e`  
		Last Modified: Thu, 24 Sep 2026 21:10:19 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a1ea0f39507ba3c4348819a82a87910050f1cdd8accdff8b7ca346fe9bdd7c`  
		Last Modified: Thu, 24 Sep 2026 21:10:20 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta4-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:16f40a44f7e72fd5fb21b2c1ebac132b388c14fca7943e8a75269bd7fc0af8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.6 KB (654639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae2f79acf24066f3e52fe5cd15817a1e870c0dfadd4352df780a2df4cf260ad`

```dockerfile
```

-	Layers:
	-	`sha256:d1024605ce93431a75efc9eef2341a8743c33f1f314fa9b7104341dd9ffb4479`  
		Last Modified: Thu, 24 Sep 2026 21:10:17 GMT  
		Size: 615.1 KB (615117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:403219d73bfe2a264f9154699a22ab33128b265b6c18f66d380169d46a4f5aec`  
		Last Modified: Thu, 24 Sep 2026 21:10:17 GMT  
		Size: 39.5 KB (39522 bytes)  
		MIME: application/vnd.in-toto+json
