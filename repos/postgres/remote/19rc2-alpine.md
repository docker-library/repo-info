## `postgres:19rc2-alpine`

```console
$ docker pull postgres@sha256:a7ce04c561f5df98fdb5cf73c76f53ee5fdaabb2157f8b31afb04b78c616b51f
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

### `postgres:19rc2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:5d342d28613129ef5a5c2a2ff36fe562b6268dcae43fc0b6fcf80f231eccb28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121286068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3609e8c971889696cc0d300be3c39b42e4103a8ae3b270398bbefce572cb60b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:06 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:06 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:06 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:06 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:06 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:22 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:22 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:22 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:22 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:22 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d564254f88a9391cb6ecb43239268c3ab6ada4158470e9383d2adbe9506de`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b958ec33668a16df402da25a873657d17ec16d6642bd76ff3509983a8afe69b`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 901.1 KB (901104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9750a44c63e27f777d8db49ba6df809427ce69cd3407fc0879d287bad8813d`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ca1f8ca08e66294e5c41dbb5f6f5cfdfd951a9dd7d0faf1396675f98679231`  
		Last Modified: Wed, 18 Nov 2026 21:31:41 GMT  
		Size: 116.5 MB (116502705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1c30b4db6cd5746f1bfdd9a1a2f04438b6e18f98cd4316124714043639517a`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd2db4063f540492cf1784cf0a603fc5a6367b99024bfb26f85c75f9ab56ab1`  
		Last Modified: Wed, 18 Nov 2026 21:31:40 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d184764ff0960e6cf7dccd3b8d80b217cf6f8681ee873817e6aa3a30e4915a4`  
		Last Modified: Wed, 18 Nov 2026 21:31:40 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:8f1fc1cda45ae58260dfc0a6d4b2dce6947ba8968742b4b08961f2fce6b91594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.2 KB (654152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d10171b6238ce02d57ec5530040343cc3c568cade22d878d7888b1843605c3`

```dockerfile
```

-	Layers:
	-	`sha256:07401adc83bbfc20107be1375389749bac8ce6220f58840871858a3937761486`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 616.0 KB (616030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7afac144134577da49e4511e833e095c18c2dc6488edb0ed3f4e6abd3a396aae`  
		Last Modified: Wed, 18 Nov 2026 21:31:38 GMT  
		Size: 38.1 KB (38122 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:9de870b5a35679c61023e91c57b4d1da8592f12afb5ab5567f484cc8e68c80f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117468163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edd6c402294551e0bbcdce8d3ce83a662eb716369dfc86a9cbd3d66bd0075e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:03 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:07 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:07 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:07 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:07 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:07 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:07 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:02 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:02 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:02 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:02 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb31e01f7277cbe16e2930842fe59c797963d66886d418012954369a9c695c6`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d202736dfb71644e2f0daefc1e1ea866c37cea8b0ea5b4369db4062daaa7f830`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 865.4 KB (865399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02007056bd2f48ed77c07c7c5c91408ad8136b53cd651f7aba326b2491135a31`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39569eda02fee315be3d24540f1943507b0505973dc39866ee82fe8ffb806eac`  
		Last Modified: Wed, 18 Nov 2026 21:31:18 GMT  
		Size: 113.0 MB (113015776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c16a92d0380d139787f4f3ec55f03cc1bfb980061178ef50d046ca8b399505`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc175290caee97d39c3494db789fbea27def249b32586b6d665e67ff271591a`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7962fff0f5085e8116d84f4fbda04908cba0a6e0e4116231b8a1e0c547384`  
		Last Modified: Wed, 18 Nov 2026 21:31:17 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:694e5cf4f81ee07534d2f844c1bcbdbddc81611f9ce59cbd8bbffacc6401d763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6f1e2d05faa89ccc3da60aaf1295a41634210cb924f78f47a2bb11221f3461`

```dockerfile
```

-	Layers:
	-	`sha256:a21b9b1845d425b4c028c2cfb4e4800a73581352341df2c001e6648c2d155e73`  
		Last Modified: Wed, 18 Nov 2026 21:31:16 GMT  
		Size: 38.0 KB (38036 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2ed7cdbfc104a84d20bbd83298dd3e36fa710e035e3e22ca7057d9735f225cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ee03b2d7d0f615dee0ebf1d403b5bf02a4545d3a9cc18cdeb7f88ec1296661`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:23 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:20 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:20 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:20 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0691f407f2d86891f9bf62e719f970ceec41f35ae848782aee3d7434150dd2a`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7f65bdea536d3712df98d0ac4adf4f6687f7fe571271d5db62d9f610876076`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 865.4 KB (865413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc7785754370ff76a3f2bf76d1ff2b08e170bd66611d13cdc69ca4220cb6a4`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f625bda8fc159522f3ee3ed29d256ba32a0167de4d6a6b34a0be7bf318ea2abc`  
		Last Modified: Wed, 18 Nov 2026 21:31:36 GMT  
		Size: 106.8 MB (106844126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb58bd0a5532333d8358e7edd46d6be81ce2d08ae5454797514f0462531e324`  
		Last Modified: Wed, 18 Nov 2026 21:31:35 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9d217e4140ce7f8dc2b623cafb8fda93bd7d4ab7f1ef086f1d98cd61e5ba04`  
		Last Modified: Wed, 18 Nov 2026 21:31:35 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca80cd6edcd2464081be56eb3fa746d2c1715a1a2baae0a547758c23a2f95d9`  
		Last Modified: Wed, 18 Nov 2026 21:31:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:57459f202cc8e293bf2a1010c5a92b381490ff07a0f712ec7a0eb5974a211ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.7 KB (653651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25b9252ad8f630133e54258a232f2d2064309e82ac9988a02d0f6e6bdaef739`

```dockerfile
```

-	Layers:
	-	`sha256:c1a277ca6ecf9e251d4593f01dc6abcb4cf17fb6b72b4e2a02bfd3b8167fff3a`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 615.4 KB (615400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb2e9f17b342d8e08ce3dfb7a61c99bb2450d22fcfcb324ce58b55c2992d9cdb`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 38.3 KB (38251 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:122bfd319356d96177c157ad832217eef59bc16b8fa8c3a0287849fc7e1f0969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119067411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5dc02eb7fabd52b535cdbe8550e8c4479ea0bcb5e7cf18ce783e1e7f01d6388`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:09 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:12 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:12 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:12 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:12 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:12 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:42 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:42 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:42 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b417a8cf5f311053be54f4651475e526db0e2f472c7943b946cac1a3fd4ca2b`  
		Last Modified: Wed, 18 Nov 2026 21:31:58 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f51c2eab8a90fccb1daabc49bc311080a2a8446dffeb599844a90711abe7214`  
		Last Modified: Wed, 18 Nov 2026 21:31:58 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8473a928db6cd4b3a34e8ab671d7e91a5c24c2941e36c2db72576959ec5090`  
		Last Modified: Wed, 18 Nov 2026 21:31:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f4bbed266d3c1af6f0160881c8b86c46fb9046efb527c4d9f14201912b553c`  
		Last Modified: Wed, 18 Nov 2026 21:32:01 GMT  
		Size: 114.0 MB (113995412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea4befa89d246eb4b71a7ff4a64e906a1c3f0e6d2fdae4628011f27b5517c0e`  
		Last Modified: Wed, 18 Nov 2026 21:31:59 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d094e5127302ab9faf1704b127772cd3f2d34f75fd0e613a37ea8864e06171cb`  
		Last Modified: Wed, 18 Nov 2026 21:31:59 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88670c3c0308a42c1ac6f35ed11ae4accfd7114c27ea6e4bc92fd8ea61390a00`  
		Last Modified: Wed, 18 Nov 2026 21:31:59 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:80f6573ae6bb76430725f135a9e13a500e56883aafdff42222e54363a4d99ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.7 KB (653689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1be15469d196c0edbe5b6ab0fed2e548d754df7ec4b513d989688a45627cef`

```dockerfile
```

-	Layers:
	-	`sha256:3b3d0c696c087de571d68dd439360de54423022ff7cfe650afa0adb494a192d0`  
		Last Modified: Wed, 18 Nov 2026 21:31:58 GMT  
		Size: 615.4 KB (615412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ade325f6ea170b603f22cc28a5d8bb7085e497b7e0c1dd511bf1b6befb59f6f3`  
		Last Modified: Wed, 18 Nov 2026 21:31:58 GMT  
		Size: 38.3 KB (38277 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; 386

```console
$ docker pull postgres@sha256:f4822948f9eb6cffacc9371d6b9b1a7bc706c40f9906ca53b8892c2e9a4dc8a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128222310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae476f28557ebd24d4a2af87c104f67906add6e35552f4e61b673e79bb4766a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:27:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:02 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:02 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:02 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:02 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:02 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:30:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:30:36 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:30:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:36 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:36 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72da9f33e8cc1ee0209f7f47a4897f502e0ff9f2f003baa3b9e060a97bffdc7`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6781cf33b7c270c64402830349b894e8d64b03375b012f4c82bdc7ff9f10a6f7`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 869.8 KB (869815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2861eda22b1223e8d45d8e0e3f9a0bb3546dc7e951bc7badb5e625d7b1004303`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebee49fd5950d1b6a4dd9030879e42fc466255193c125a72f776ca589ef6b91`  
		Last Modified: Wed, 18 Nov 2026 21:30:55 GMT  
		Size: 123.6 MB (123643543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41665165ce66d260ee9d14281dccb3588d9764b6eeb5be6daec056faa987ee89`  
		Last Modified: Wed, 18 Nov 2026 21:30:53 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593406462f95039d145ea723c4b1f47da00e906bf748c7dc2f8263e5718bff2`  
		Last Modified: Wed, 18 Nov 2026 21:30:53 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f338e57d3d17eda59a050f9580311425fd31eda45e04a9d4b4c00636e0241f42`  
		Last Modified: Wed, 18 Nov 2026 21:30:53 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:a2250942970c5e5767f3889ceac02ad079a43a93e77351532317678e227abb54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.1 KB (654104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79eb71b8ffdda9997be4561b9fd4c16d4e60718b5dd252bfc708fc6b543e54`

```dockerfile
```

-	Layers:
	-	`sha256:2e43143f69d880da20ac774d996471e234540956bdd55ca42d54b151bcadd0ad`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 616.0 KB (616015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:334cd0a2298ff55fe18ba6a8ddd43c85ee067c8fb353fafd844715d577c18ee1`  
		Last Modified: Wed, 18 Nov 2026 21:30:52 GMT  
		Size: 38.1 KB (38089 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:1e8f650c1f42ac2346260f81559f126f960ef8e74b062e680cdd111d5352e83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124347439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59f5625c197f1389cbf5c3ca8351eb90b5e0777e30bc2d2a1ff696f11ddbc48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:34:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:34:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:34:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:34:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:34:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:34:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:34:55 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:34:55 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:34:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2440b9e7921eacc8bb45520cac21c5ea14a4e576497cd9e8ec76c71edc18dbff`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d5f5e1c58ec6e5c7595372b790aedb97235afb3bf004c060e843cef1a1fbfa3`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 858.0 KB (857995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf0ff4e4a9b5bae262214937ee4bf4b9d1f10259dbcdbe92061ad5fd7a41c48`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da08afc67214fcb776d5ecc2c06290b363c483076dac48678c9f74b6a8aca223`  
		Last Modified: Wed, 18 Nov 2026 21:35:40 GMT  
		Size: 119.6 MB (119638932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d73f625952cc6b6a635370dc422490d9e73bf2af723077f88513c3d60c2be91`  
		Last Modified: Wed, 18 Nov 2026 21:35:38 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c8022b6cf4a79fbf6a509d1ed16c4773db6c586958a7ac981adaeaae1cb6be`  
		Last Modified: Wed, 18 Nov 2026 21:35:38 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00304674f28de2a38ddebad738031b4ad037692b81ddbc64305396208630dd06`  
		Last Modified: Wed, 18 Nov 2026 21:35:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:f66b4a81d8b672d75d45d99f3e08ae7e9e8593d084e18f0d6225a35b49611020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.9 KB (651903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39d2a8399505790707ab21f32d3450e4a0480754d24b3f22f4126bb5e9aa540`

```dockerfile
```

-	Layers:
	-	`sha256:04cbf323f9d1d5fbe6777de9a2864e9000c4d7f7deb3b2f9c8a47d554e966294`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 613.7 KB (613739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e21e4feda68b8b39ba1594c057a20130bff62e191c74e489005ba204b503389`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 38.2 KB (38164 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:8037657e9f2104dd58f7f571eea97d7f479afc18d5f954a7a21a5c60e2a77bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123948954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3871750065800b3c8c0ce21626b50689f8d20661bb7baeea604089a0ffef9daa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 07:20:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 11 Nov 2026 07:20:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 07:20:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 07:20:40 GMT
ENV LANG=en_US.utf8
# Wed, 11 Nov 2026 07:20:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 07:20:41 GMT
ENV PG_MAJOR=19
# Wed, 11 Nov 2026 07:20:41 GMT
ENV PG_VERSION=19rc2
# Wed, 11 Nov 2026 07:20:41 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 11 Nov 2026 07:20:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sat, 14 Nov 2026 21:12:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sat, 14 Nov 2026 21:12:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 14 Nov 2026 21:12:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 14 Nov 2026 21:12:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 14 Nov 2026 21:12:52 GMT
VOLUME [/var/lib/postgresql]
# Sat, 14 Nov 2026 21:12:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 21:12:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 14 Nov 2026 21:12:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 21:12:53 GMT
STOPSIGNAL SIGINT
# Sat, 14 Nov 2026 21:12:53 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 14 Nov 2026 21:12:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcec225f9c6589fa4358b837a951805829583158dfc129cbb26d00a920374c7`  
		Last Modified: Wed, 11 Nov 2026 08:21:05 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7169bf5d1d35bd4075e2f5cc19c4701a4488f010484d2159b306a5d1cbad878`  
		Last Modified: Wed, 11 Nov 2026 08:21:05 GMT  
		Size: 844.7 KB (844704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9777b3060c6961465748518e374a8d2a7a8def1257f082c47a94fd34c29a176`  
		Last Modified: Wed, 11 Nov 2026 08:21:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6635246346d89e3faf4c263048215dc21432463473d2953452f9003472f87b`  
		Last Modified: Sat, 14 Nov 2026 21:16:31 GMT  
		Size: 119.5 MB (119494925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925b0a48554f79c062dfe0b7bcda1ea512635055e2d40a18e4432d308409bc3d`  
		Last Modified: Sat, 14 Nov 2026 21:16:13 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d542f7d3324d50e695e40a8879bca887c277b8e53b680965cf49e22ef88355`  
		Last Modified: Sat, 14 Nov 2026 21:16:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb8f318dc7c1224f8b3ce8984547b11167a3e959a89bc84eec54f344f656f8a`  
		Last Modified: Sat, 14 Nov 2026 21:16:13 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3addd7b67e47bb1cbb8cab88a5fc6f96018abbde70e295f098b6a7e6a7a6fae7`  
		Last Modified: Sat, 14 Nov 2026 21:16:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:c2cd42f6af2ff54cedca2ae78128ed076e428b3d1dc9e004057be0affeb05975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323216549ae496fe06c607405cbe63fa91c7e9a0b92840aecef303dd87d123b3`

```dockerfile
```

-	Layers:
	-	`sha256:e4765827017882f9e7585bace7d520dbb674e793f286e40f68c3c0d22d0e5584`  
		Last Modified: Sat, 14 Nov 2026 21:16:13 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1ffe15f64511d75213185be0723c524df05743e2c8cad5571d244c57d875c0`  
		Last Modified: Sat, 14 Nov 2026 21:16:13 GMT  
		Size: 39.9 KB (39863 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:ec634421bf42eaa080a875b5b28a84f286f9a8258bd5568e9e5bcd034330748d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127837918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e686c16dbefeda259d3aa9bc961b6d13f7f44f336a2da90b12ba688b575aa54a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:27:54 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:08 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:08 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:10 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:10 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:10 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:36:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:36:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:36:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:36:17 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:36:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:36:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:36:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:36:21 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:36:21 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:36:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69db8d764f48c45c288048b90b9b4a640b540d0c25a11c729530d1ee1fc0de9f`  
		Last Modified: Wed, 18 Nov 2026 21:37:45 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2348ba235e229f713a5e2aacca23c068e7ba64ad3bd24a86f0c5f0ee3d22e07`  
		Last Modified: Wed, 18 Nov 2026 21:37:46 GMT  
		Size: 875.4 KB (875350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d31696368baedcc0e0a6493c7d3becdb25eff46b8985bdec779e45104ea934`  
		Last Modified: Wed, 18 Nov 2026 21:37:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63baadc6548f69e8275ccdfdd89e96316a3d48599dd89f1d3817ea0fcbbc1706`  
		Last Modified: Wed, 18 Nov 2026 21:37:51 GMT  
		Size: 123.2 MB (123213289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e3de495c67400ff37e23cea6781eb1eae85b9f29bb29598022623e4b5a7650`  
		Last Modified: Wed, 18 Nov 2026 21:37:48 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a82d472d86b244640541f735cd5ac5690d2df4412f81877cbd252329f91da8c`  
		Last Modified: Wed, 18 Nov 2026 21:37:48 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73f6b947afccca5e7961f5bdcbc6f5d87866ef7c8a30684b8aae073d0e25d95`  
		Last Modified: Wed, 18 Nov 2026 21:37:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:3fbf9ad2ff558805fffcf19165305391d507e732c08b3a0c5bae1ce5f1cea858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.5 KB (653501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7210a27cbee7f98de3f47dcb2c0c8447b3d9b6e560fd6f6aabd006c063cf3ea`

```dockerfile
```

-	Layers:
	-	`sha256:159225897e687afa0b244f978f93e9e72367e59de6e6c51cdd4fdad23515d660`  
		Last Modified: Wed, 18 Nov 2026 21:37:46 GMT  
		Size: 615.4 KB (615379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38f0dd377a8155707d235f99b97c47db0cded06f56235ff30ec067bc3e4c6917`  
		Last Modified: Wed, 18 Nov 2026 21:37:45 GMT  
		Size: 38.1 KB (38122 bytes)  
		MIME: application/vnd.in-toto+json
