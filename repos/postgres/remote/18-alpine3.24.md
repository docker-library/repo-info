## `postgres:18-alpine3.24`

```console
$ docker pull postgres@sha256:898c60cb390d1085bc97bdd6a1ae968757421df394b071848b52b1c09c89d6a5
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

### `postgres:18-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:3b0ef735388b2cb097fc29b8bb421d86d57d0ddbe7aa1fbd6493e06d65028503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120046199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57b23a0326ee442e83b3d3fa027c5a148be0a392d7c91d1ca4e1e70131ee859a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:54:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:54:31 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:54:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:54:31 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:54:31 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 22:54:31 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 22:54:31 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 22:54:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:56:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:56:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:56:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:56:40 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 22:56:40 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 22:56:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:56:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:40 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:56:40 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:56:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7e1e6003c93d7d6d29ceddd88f54da5af3ef40c9a7c117ba25feeddefdde90`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c636fe474156f1a3e19326edfd3bcc4dbdf4ce2ef649704ae14929fd948977c5`  
		Last Modified: Wed, 21 Oct 2026 22:56:56 GMT  
		Size: 900.0 KB (900002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a06bdb27c21d9177c4cc4d01ae0013d5e35c73466587536174120bb368b2445`  
		Last Modified: Wed, 21 Oct 2026 22:56:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:242c5d565900091c2cf94a3d5525d2de099cad11e58238fce17558da98a9da5d`  
		Last Modified: Wed, 21 Oct 2026 22:56:58 GMT  
		Size: 115.3 MB (115266573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f97016fb12c736e2b2854c567c4020620205ce50c3c5f5513ae151de385520`  
		Last Modified: Wed, 21 Oct 2026 22:56:57 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca102eb59e0eb094f714b42cebd5a63a12dd83bea4de64f34f8682ff96f66a92`  
		Last Modified: Wed, 21 Oct 2026 22:56:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13930ab5cb14dd8cb804d951d341d54a3df5d9b4700545c3b9e60d8cbcb9d768`  
		Last Modified: Wed, 21 Oct 2026 22:56:57 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d6f1f64405f4ef0b1742cd875f748658159e2ab86ec4ee2c59564bdf2e7d99`  
		Last Modified: Wed, 21 Oct 2026 22:56:58 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:ac9c2faa339285faa0dd416c7dc9b0993afd4de8d57a18eb876fb4ebc114f956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 KB (658314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb4c030d45c19ce5c929333cb6689d6fe7fab686e660af502bb581a842524e3`

```dockerfile
```

-	Layers:
	-	`sha256:083d6ac93c894358866c4bb48a07b86e8a1145be04091cdd8e0ed8e47a5bfefa`  
		Last Modified: Wed, 21 Oct 2026 22:56:56 GMT  
		Size: 617.3 KB (617266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba8d85bf4de69118b5cf5952b39e196261eb190f03f56d9745da3df468f55341`  
		Last Modified: Wed, 21 Oct 2026 22:56:55 GMT  
		Size: 41.0 KB (41048 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:827374cd5bc47aa237d78957c0117c8ba68a2114db3cb8e78a883554959d4cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116219786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf95075c7fb3430a22c7e6e20b2722a160450b79c25db0347c1b2936ad681ab0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:24:15 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:24:18 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:24:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:24:18 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:24:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:24:18 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 23:24:18 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 23:24:18 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 23:24:18 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:27:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:27:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:27:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:27:16 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 23:27:16 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:27:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:27:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:27:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:27:17 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:27:17 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:27:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc49adf7d9e1680c27e8a4d1efea9c29f4183f3dfdf6e747bd9d04f52165c248`  
		Last Modified: Wed, 21 Oct 2026 23:27:29 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55edfc7fdf3addf4ff9140800d7b07ca9a39643cdfe1388059895937a916e992`  
		Last Modified: Wed, 21 Oct 2026 23:27:29 GMT  
		Size: 864.5 KB (864504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f9e6b39e9d992c0953f1fbdcf722e523122d1b74869e472d1e92be2387f718`  
		Last Modified: Wed, 21 Oct 2026 23:27:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c489dbad43c875a54fcb3aac8b531dc65c3f977b3e1a908ce2c1bf8a2adaddc4`  
		Last Modified: Wed, 21 Oct 2026 23:27:31 GMT  
		Size: 111.8 MB (111770473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32c1c4d2d08dfaa0da57b016bbe856b6c4470ba4532a6ed0e04d51f170ab387`  
		Last Modified: Wed, 21 Oct 2026 23:27:30 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd535e4035a2e4a99531b87858819de6a75b614a3e2ff1eb8ee285aae2e275d`  
		Last Modified: Wed, 21 Oct 2026 23:27:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5246c54ce26bb5b2faa4419ec1ed5dcc2a12e9b01d45561ba1106e43e959e1c5`  
		Last Modified: Wed, 21 Oct 2026 23:27:30 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ed5d6677577bb81d623c32f22f44612900b9b989720506f1affa70e33790b8`  
		Last Modified: Wed, 21 Oct 2026 23:27:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:e5b733f40826deb20200459b808ad4947f3d54ed11668f19cd64c4d4e2e42794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae2cdab7dd3d9e0bd8424a8da196cf7fe69dc1821c8e1a43cd26eae222b5b6a`

```dockerfile
```

-	Layers:
	-	`sha256:c6536961905550a83cf36752c62869325ad1973b612f9b5748daee67dd1dc277`  
		Last Modified: Wed, 21 Oct 2026 23:27:29 GMT  
		Size: 41.0 KB (41007 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:bc2831f167ab9b2b8d3d5cfe2212a873de899494d1d9c5e7b63b2f8927ebc8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109795471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4312f7dba8712992b399868543fcda384881b7f8794f05c737fa1900277e2441`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:28:41 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:28:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:28:41 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:28:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:28:41 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 23:28:41 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 23:28:41 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 23:28:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:31:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:31:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:31:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:31:26 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 23:31:26 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:31:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:26 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:31:26 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:31:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbceba0d889445eeaa921fc8af7e02bd9923c10f1ee7251f82649fe681f4de9`  
		Last Modified: Wed, 21 Oct 2026 23:31:39 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae260cdf1f927235ff5a95e96faa24b8ffb7778892ab0e16cff239c6b409411b`  
		Last Modified: Wed, 21 Oct 2026 23:31:39 GMT  
		Size: 864.5 KB (864512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ae0411e99a5aea0c4d6f4c3d53b099aeec99edce71568902b56d3d47fe2ded`  
		Last Modified: Wed, 21 Oct 2026 23:31:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5efae0b3b426c61e4198a0325813534885ce6dc70b1d26d450779ec4be60bb4`  
		Last Modified: Wed, 21 Oct 2026 23:31:42 GMT  
		Size: 105.6 MB (105637783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18dcb06f6b61d6e5e07d27ccbb996f0374159c9b67dae73f970dc58102f864a4`  
		Last Modified: Wed, 21 Oct 2026 23:31:41 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:485a237324deab6630f637defcd4a47d0f7d7eab21bde2ee7598825d4352a7db`  
		Last Modified: Wed, 21 Oct 2026 23:31:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd3356ef3a98d38c32d0987a4e64661fac6ee4ec65663c136c42e87c3a3e2ff`  
		Last Modified: Wed, 21 Oct 2026 23:31:41 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e48c1bba84c5e7448c78fc2723f4a0affe3c59521469536719fcc8dc108a73`  
		Last Modified: Wed, 21 Oct 2026 23:31:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:246b8b565e14fbcd328e8b1232d52b96764a01a2a5fcc650dc28827080f17a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.9 KB (657889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f9e74a9d76409163e4b0e14070a36320e72e0ec9ebac98355059dddf0bd241`

```dockerfile
```

-	Layers:
	-	`sha256:0568cb3eaf84d9b571565a00d50002ed8f58dfa5492806763693a9a39813cd40`  
		Last Modified: Wed, 21 Oct 2026 23:31:39 GMT  
		Size: 616.7 KB (616668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df7717182d56bb69d798c5aada824436208e01da9a48e0c7b74803d8ed02d753`  
		Last Modified: Wed, 21 Oct 2026 23:31:39 GMT  
		Size: 41.2 KB (41221 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b1c1673a890fba8fae71d37210b4fd9a0b5cd0df8bb994a6bcc01d9cf8e1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117883318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d198b39c31a6df6012ac71d61fe3596277c3c06e0884fc24965669cb8d799f10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:16:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:16:49 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:16:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:16:49 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:16:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:16:49 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 23:16:49 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 23:16:49 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 23:16:49 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:15 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 23:19:15 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:19:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:15 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:15 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3547516cffcdfaa2111e435e60e4cba449d051e2d3276111fad765b913aaa0`  
		Last Modified: Wed, 21 Oct 2026 23:19:31 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3516acf9713b7332dee803a46917c0c50d97128cd28e101727ddb58cceca16`  
		Last Modified: Wed, 21 Oct 2026 23:19:31 GMT  
		Size: 852.0 KB (852043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b6274ca03cf7d0964922b0b69e75ecc0c3c60cddd3546d668cebed89289c01`  
		Last Modified: Wed, 21 Oct 2026 23:19:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47593bfaf983fc36c1a3aef7de9c4c3e47fc034fbde9b3f53e93ed712e653353`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 112.8 MB (112814275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5e255d181ea5f1738355a63a11612c14722566ba2236232d5096c46284a743`  
		Last Modified: Wed, 21 Oct 2026 23:19:32 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86862c74fd30b34a00e7947c7b22214d326c20c02d34e224552d2d7218830b6`  
		Last Modified: Wed, 21 Oct 2026 23:19:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdc9152b4c917891d3a526c4323fc2d878780cb99060e0c3c9ac6b57e56a4af`  
		Last Modified: Wed, 21 Oct 2026 23:19:33 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7fde6aa87c3fdfc741150a533c2dd2f1a6aa6191a5b993047a41e3693edf0`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:ad5da191d782e8ed18c318b0cef09773b21dda08dedfa56d55703ab8878d2579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.0 KB (657961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6a9280142ac0ce48587d7ed7ba2b47a84dee2f5f3e4950652e1ea451e38d96`

```dockerfile
```

-	Layers:
	-	`sha256:6d2dc9ac8a4596b36029cfd9ffcd1cbb8df0ebac140a92e03aed224488d9e178`  
		Last Modified: Wed, 21 Oct 2026 23:19:31 GMT  
		Size: 616.7 KB (616696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2ee904beedbc8b80a8409bbb714b66470d05299c19cd714dc446daae7f63ade`  
		Last Modified: Wed, 21 Oct 2026 23:19:31 GMT  
		Size: 41.3 KB (41265 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:7c64281cc5c73e4010ccd5623a6171076c3d7994ee9ba780dc27efaf89aa1ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126872594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf4ee8a8a8864b1369b14068b356a834bc60bd6b114db5bc21d0872db8bc7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:31 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:17:34 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:17:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:17:34 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:17:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:17:34 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 23:17:34 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 23:17:34 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 23:17:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:20:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:20:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 23:20:21 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:21 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:20:21 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:20:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097b30f584c66c1affea6fe51de17d5c55d01653301904236a066e4cbaab5bf4`  
		Last Modified: Wed, 21 Oct 2026 23:20:38 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e712ccab859ebabb010909e8ae06feb4561e6c90fa735300eafd7de8ba14136`  
		Last Modified: Wed, 21 Oct 2026 23:20:38 GMT  
		Size: 868.0 KB (868015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626ccc90838fc2b326e879658a4e90e93d9261dd25cc8d81fd3954e375143899`  
		Last Modified: Wed, 21 Oct 2026 23:20:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41bc74e1112eff02e0f5f123cec5e97532ea275a949c9149d814cd98a401433a`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 122.3 MB (122299064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb787b950bab779e86b5087aabb35d72dc1eeff335607d5c70843d5c52b51d19`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b47d0828e84819ff06abcd633358b626aba42a7bb0ef7152ce671938e4a9bd8`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36711b8982491212fe59f95e9552fc7d9cb405e9abebba53070cc94b49bfa80b`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26adf338db28a7134da1fdeef9f33ee32772cb0471525048b0fd40e7563801c`  
		Last Modified: Wed, 21 Oct 2026 23:20:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:cfd3ba36f883f2f6924985f60fd0dfc33011d7926ae775929dd3fb7905ca5144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.2 KB (658225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b6b47485ed195cb15305f6a9958d89e029699bd460f8490af69141bf8ef2e2`

```dockerfile
```

-	Layers:
	-	`sha256:fbab12e41ddb139ae83f6eeed02b3e11f9d23aac4faa32a99561fb28b4d4f437`  
		Last Modified: Wed, 21 Oct 2026 23:20:38 GMT  
		Size: 617.2 KB (617231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89482b8db2d48c9f953677214657344bf84a5c5b9c5653d3f2fce9c867af73cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:38 GMT  
		Size: 41.0 KB (40994 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:7c09d1ec772d675ee19fe6e51904fc8b2202715d17eb33128eb76c572f3e8e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123037176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09286ac0d4349878de4a854e9c8998eacdf4454e55b17ccde9986e9cb75f19e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 12:40:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 22 Oct 2026 12:40:42 GMT
ENV GOSU_VERSION=1.19
# Thu, 22 Oct 2026 12:40:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 22 Oct 2026 12:40:42 GMT
ENV LANG=en_US.utf8
# Thu, 22 Oct 2026 12:40:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_MAJOR=18
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_VERSION=18.6
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 22 Oct 2026 12:40:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 12:58:19 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 12:58:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 12:58:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 12:58:22 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 22 Oct 2026 12:58:22 GMT
VOLUME [/var/lib/postgresql]
# Thu, 22 Oct 2026 12:58:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 12:58:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 12:58:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 12:58:23 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 12:58:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 12:58:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3620d053fa0b6ffe0e1222badf7e457d2061edda61d77be06d7fc0b84c306c4f`  
		Last Modified: Thu, 22 Oct 2026 12:49:57 GMT  
		Size: 974.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d05cc4f18acee926cb370c28a5e48bd98f7e503029c960293a42441d3cad52d`  
		Last Modified: Thu, 22 Oct 2026 12:49:58 GMT  
		Size: 857.2 KB (857196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db14fcfb772da6675fb9c3066929d70eb09027ed82212325df323c3e80707295`  
		Last Modified: Thu, 22 Oct 2026 12:49:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd8076e52a4758f3d4835db98765ec5fa1fc82008f714b8c8e52bd8c07c7b79`  
		Last Modified: Thu, 22 Oct 2026 12:59:08 GMT  
		Size: 118.3 MB (118332625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd059a69c735c331a09b7e2eb229e76abe7126cc4f0ec82221fa1f13d3f92d3`  
		Last Modified: Thu, 22 Oct 2026 12:59:05 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19dadc0bf267636b907ef9a74067f44003ddf471a863e910de6d4baac34e66a4`  
		Last Modified: Thu, 22 Oct 2026 12:59:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6ca6d9d5989b30a1ac77499aeb7770752a5cdb5b0f8cfa4e386ea0e600b7b5`  
		Last Modified: Thu, 22 Oct 2026 12:59:05 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dcba4acd1a07fb58a54b04ffda0348339a175b792dd96ca45bf776f5e5069a`  
		Last Modified: Thu, 22 Oct 2026 12:59:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:84abaff33a0bbc646ae9b1492a05168d4b09814ca49ff2a2839b0969b59f60a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4a38cb0390b7805e7eb222402ecfb36842a92071fa7b5b0a08076520d0a507`

```dockerfile
```

-	Layers:
	-	`sha256:e91d8e40f7bb4e0445c996f5dc10f83208b37881eaab00511459afd1721d2324`  
		Last Modified: Thu, 22 Oct 2026 12:59:05 GMT  
		Size: 615.0 KB (614999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae98ef0c4308dda4655574f790fa044f5278698ad694ec4bd922db72c0683c54`  
		Last Modified: Thu, 22 Oct 2026 12:59:05 GMT  
		Size: 41.1 KB (41115 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:c403bc6b4326fdb6771784116e08bd234d8a7918e753ba4268e1e8b66687dfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122527639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728db64dd8b3cb10f08c6e42579a5aa5e30cae2686d9d7798adee8934c35799c`
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
# Sun, 20 Sep 2026 19:32:54 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 19:32:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_MAJOR=18
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_VERSION=18.6
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Sun, 20 Sep 2026 19:32:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 22:23:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 22:23:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sun, 20 Sep 2026 22:23:42 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 22:23:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 22:23:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 22:23:42 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 22:23:42 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 22:23:42 GMT
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
	-	`sha256:4f38a78ad5cdc11334a5a5244b4ce336823fa996ba02ae7b8209481ae5772819`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ebb9ed713039fa67b366414784ffc79c71c2b57a3a2fad8dc24cd549742b04`  
		Last Modified: Sun, 20 Sep 2026 22:27:07 GMT  
		Size: 118.1 MB (118079457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ccdc9dc837a13cf92d7c9de9ddf471dd174fa6c5f647bd92f41104cc5df822c`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ffae1ad7afb589184d449ea1aae1f3fbb7770925d5e89235aa8da2c7660f5f`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e80b6de732f0ec112a513efdf9ce887b4656a86e5a4d4b51199134cd37a336d`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966d196c0a0b04fae599c1a1c2a9217a6138a54504e03f0e08c25ad0257eee1f`  
		Last Modified: Sun, 20 Sep 2026 22:26:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:9c30f3d41f66982fe50a9ac6ac44f5339b9dc9543db8b9dcb7bcbf391e58c57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.8 KB (657773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25844cd5aa33a5d93cea02114df2f3a821646c9e9e9ac1c78c72a01b674200a7`

```dockerfile
```

-	Layers:
	-	`sha256:0b1b9b08945d5966132cc2143e8948b29d0dcd72b5355071508a831b64dc7592`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 616.7 KB (616657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:219474c33b80f3aa762e2242182e8ac23bdc05a1cdf1d3f35629ee5428869df2`  
		Last Modified: Sun, 20 Sep 2026 22:26:48 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:4ab73894992a0b6f3534b7ed3ac7ddcc0abb56868ec73158f152ef9e05075893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126657769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b54285b0796f22f9878028acbd8b0d341ecf1606429421ab7d28abb86583bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:34:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:34:31 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:34:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:34:31 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:34:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_MAJOR=18
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_VERSION=18.6
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 21 Oct 2026 23:34:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:37:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:37:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:37:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:37:26 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 21 Oct 2026 23:37:26 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:37:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:37:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:37:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:37:26 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:37:26 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:37:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f08784b0bfec1283728718fb0d5c3c8f987fa057249f8a3dc9d31de06248def`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035ff5a241bc0229ffd65dcc337ee42600e32c9882d83dd5e75b69e0dc4fb9a3`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 874.2 KB (874214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff017e0b2be5f2cad1c02d2db1420c70ef7dbba5da324182b530ed4322ebe985`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8143feed4eb011192aae541bd7747d8ab36ebfb7af163ba93976ba45b2864bec`  
		Last Modified: Wed, 21 Oct 2026 23:37:54 GMT  
		Size: 122.0 MB (122037329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1820629948d06feb490f9f5d52099c72676567aa68644156822d05dda437fc44`  
		Last Modified: Wed, 21 Oct 2026 23:37:52 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29982e167693f5b87382cbd57480edcd7697616664ccd7a1405f547df703d8db`  
		Last Modified: Wed, 21 Oct 2026 23:37:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34287fd2402a56ae56145f7859a1b6d360e21ffc962f81a07ad58d88a49233b`  
		Last Modified: Wed, 21 Oct 2026 23:37:52 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40945e3591679f853a4c4b2f0aa372332ab4402d51594b918473af1f4b7a33e5`  
		Last Modified: Wed, 21 Oct 2026 23:37:53 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:979e2b968da3f5496f2cb94f9bc1846ef15463200681835c06b9600ff3688c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.7 KB (657663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a68a672d3fd0beb11da18d33a7f79720df0f2f6af361c03364f5572bc6f71b3`

```dockerfile
```

-	Layers:
	-	`sha256:223a6c3c1c213b6aa8565d250726f8311797d0155b8977354ce5f50debe56b79`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 616.6 KB (616615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf65638cfd4194a18a707910e365f9a33cf38cce0503b6f7c365e60e8e41fa4d`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 41.0 KB (41048 bytes)  
		MIME: application/vnd.in-toto+json
