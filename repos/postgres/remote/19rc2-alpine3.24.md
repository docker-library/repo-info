## `postgres:19rc2-alpine3.24`

```console
$ docker pull postgres@sha256:73356dea9b9724731d9b750be92266deea31ae904a059115f79a75fe15650386
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

### `postgres:19rc2-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:41b651fcea3fa89447eb16dfd298a48506bfe877e5f97813f2967830f76f5a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121286475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18721d79db4490d4a4e5bf9056ef77aef2d26f7daaa79f4cd66b75cd032d544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:16 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:19 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:19 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:19 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:52:19 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:52:19 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:54:37 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:54:37 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:54:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:54:37 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:54:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:54:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:54:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:54:37 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:54:37 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:54:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff154c980263477116902e3e887eb7ed46f660a4a2a9d9195795a48f92a262c`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a010cfcfa1af0053d294e790774d01bc50e595a4d588bf83f97d76e232b60972`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 900.0 KB (900012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fd82683a7dc6deaa3d047d71add1b6e6602105d6f5c524640a885d9ee0ba08`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee5e096ae2ab73317028ef4235c9f52ad4dcb5924ca762c4315c8b7d3c0a3ec`  
		Last Modified: Thu, 12 Nov 2026 20:54:56 GMT  
		Size: 116.5 MB (116504089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d70a6136bd32415544435a65c841394b5a7e0c8f5c5a7aa6682f2d4b89e8b4`  
		Last Modified: Thu, 12 Nov 2026 20:54:54 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8899bf8b7e7a28b4c6055e9fed1e4ca9386b91dba2e464c5d07795a9ae9b4d9`  
		Last Modified: Thu, 12 Nov 2026 20:54:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3780eea8ece8ca7cb36aa443d570902fb5cc4ed4747bfc61a5e813b6bbad7c1`  
		Last Modified: Thu, 12 Nov 2026 20:54:54 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b294d5ff7e060352647764c5eaf3a15aca4033f20c0ea1f1855e9df24131d546`  
		Last Modified: Thu, 12 Nov 2026 20:54:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:74c004b26bf7b79f3a8f47a7aaad9330241134a36295ae95a8ae18a66f064229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de491104adcd2a630a346cfdb88e5e3cfa35b6162633f0c1cc1a765ba914c50a`

```dockerfile
```

-	Layers:
	-	`sha256:f79b7fb6f5c3f0a07a2613b0c8c3a63d3b2af58266b08542bcbcd5085f0ff944`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 616.0 KB (616030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33101ad1567a9b5c9a76140127f7c55661465fb176a4f962e6c46de699d34def`  
		Last Modified: Thu, 12 Nov 2026 20:54:53 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d4b7373158f8b57260157d097ab73fe86f2f8180960fe3112edea613960daef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117467433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3f64abc288d70a86f845225349f00a3b5c397b49b747382eaa757bca1eff5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:43 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:43 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:43 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:43 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:52:43 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:52:43 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:55:50 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:55:50 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:55:50 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:55:50 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:55:50 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:55:50 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:55:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:55:50 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:55:50 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:55:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0e05e600cf9964816af5f760084e3e2fbd21939af970f860cab2ce87eb68e5`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c314a30af802b06c490da8bbcaba843ca877e496f89d3aa714eda5e31cec09`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 864.5 KB (864506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fe02a1a5822a85d171a13faf332176124fc1fa12116c73ea853cb671473358`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83cb28c171bc433d1f05701861796eb7dcf6b6173c60b3ad5b4072da50a783b6`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 113.0 MB (113015823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae79aff389a057694dde1facbc814b3ad8629d91503b2fb7d2315d0a676f26c4`  
		Last Modified: Thu, 12 Nov 2026 20:56:05 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39bc50daa4ed51848e8e1271c798a79a1cb43fcdfd25a5645a625d7e5445ef4`  
		Last Modified: Thu, 12 Nov 2026 20:56:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be36e173d834e055a049d7784e0b350e550ebedd06f102ebe4bb532c9896142`  
		Last Modified: Thu, 12 Nov 2026 20:56:05 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238798962f6254d83e17e15698299067ce9d7de1c10481905cced289741e51e4`  
		Last Modified: Thu, 12 Nov 2026 20:56:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:fc8b994840f985c1d5b1ca5d865ca55c3add7727ee652c4d109030e5f586caac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7621657247053b5282753bb18f4433a5049f59c9fb97c4a91c584291f8842b2`

```dockerfile
```

-	Layers:
	-	`sha256:0cd7f3974d58a3f4f4a06c09f4d0263b88bb775f3f66f8850887136a2b9ed966`  
		Last Modified: Thu, 12 Nov 2026 20:56:04 GMT  
		Size: 39.7 KB (39747 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:410e3c7d9da959be6dff4d2319231dbd412b972d0eeb5e76a75dfc4095c9393a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111005188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee145ded3c204ae8a6d876eef817d3ac4ab9ed87b031ae10b7d6365dd43e106`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:16 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:19 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:19 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:19 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:53:19 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:53:19 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:15 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:15 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:15 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9aade22ed933e851617b3f878379a7360ecc5df8859ec80dde01bb35ee414e`  
		Last Modified: Thu, 12 Nov 2026 20:56:29 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5272acbdb3412a6f651fa7af53cdf4b91098aa286a8f823c3908dcc0004335c`  
		Last Modified: Thu, 12 Nov 2026 20:56:29 GMT  
		Size: 864.5 KB (864516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152f3c51e31585353573e7c4e185d95058c9191e25583309d3530f0f81fbac4e`  
		Last Modified: Thu, 12 Nov 2026 20:56:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4a0e2f6e688ccdba4ae0e5bdba4f726f41f143f5c1e8297e715eb38695916a`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 106.8 MB (106844242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8582f55aa9fbc5f34e7ac83011d73ea3332f4f881f0bb548c8eb012c5b7389`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2567cfa3e19fcfbc9d34d29232e154acbe2f462a6c4b171d4f441027a6c91127`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea83fddbd1be807f7875417be458e8d186bfa1fdd4fd52399df684b3e1c63b42`  
		Last Modified: Thu, 12 Nov 2026 20:56:30 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004f927e9876cb18bfbd77591993a6be99d20a3ed3082028e854c9b058307ac6`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:4cf50c9edaa72adebbe0c3b91aebe731a5f9cda4d48b576cce089f54b1f3816a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c5de85b38840297225d75fc3f5e3a7ba5254acdf1fd10ea48674c33a8c8bc9`

```dockerfile
```

-	Layers:
	-	`sha256:a8549ee89afa4c1d4ab96f7c58a72bda32e8843da86f7abaa99259587e5fc3aa`  
		Last Modified: Thu, 12 Nov 2026 20:56:29 GMT  
		Size: 615.4 KB (615400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2f82112a03b711e55a25bdc095a4feb80e41e6e7cfa79c5b5b6b881f38bfe1`  
		Last Modified: Thu, 12 Nov 2026 20:56:29 GMT  
		Size: 40.0 KB (39962 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b79f374e778c461c2bd4c9dcc7a9d2a1098ed9ea900217ba0fb9319c69aca034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119067096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264291b91461fbf136a19efb8357787c48693d1a0911451650553925544c3b5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:28 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:52:28 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:52:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:52:28 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:52:28 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:52:28 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:52:28 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:54:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:54:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:54:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:56 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:54:56 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:54:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:54:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:54:56 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:54:56 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:54:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cacf9be5dad7511f8e8788f5582704d4b76403a5bc0e89ec2cac4bc6ccf588`  
		Last Modified: Thu, 12 Nov 2026 20:55:11 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878e7af1dddb4fe0b0b0ac3186a8157cb9f019d27e60b2b91e31eb05549657a8`  
		Last Modified: Thu, 12 Nov 2026 20:55:12 GMT  
		Size: 852.0 KB (852031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fdcf06a0cd13e280a17a8c25754efa249471513a926fcdbc117607d93e7a12`  
		Last Modified: Thu, 12 Nov 2026 20:53:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3ddb7fd2845d33a0450a67d8a518750715e037d5d1c1d21f99b699c29d4ec8`  
		Last Modified: Thu, 12 Nov 2026 20:55:14 GMT  
		Size: 114.0 MB (113995766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1caca5b1fb1df8eacb64f4a35c3aaf8ad47f82acb7c67574183b8f0a1fa234`  
		Last Modified: Thu, 12 Nov 2026 20:55:12 GMT  
		Size: 21.2 KB (21198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea95cf02dc5f3f7ba79269861f51765c65264d4a894695a1735729c91839bb9b`  
		Last Modified: Thu, 12 Nov 2026 20:55:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86e2074a4ef799548fb1f78300363d2983a7e7e5fc5d5f89801f444458c10b3`  
		Last Modified: Thu, 12 Nov 2026 20:55:13 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af819fa3ee4bdea38840edcd422c48e964f699ba08fee81e89a51f2c42b2541`  
		Last Modified: Thu, 12 Nov 2026 20:55:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:5ca90cad59a58c3638cfcfd8661be180401850b2d7475ed5a831e4d37502f36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f58fa4f433007dc8e34fe6ce744a574daa123585c68c48f4a0f2c28fdd74bf6e`

```dockerfile
```

-	Layers:
	-	`sha256:4d879f18af9b707e99f32dc42e49643191931e8d5797e688133ceafc312b4638`  
		Last Modified: Thu, 12 Nov 2026 20:55:11 GMT  
		Size: 615.4 KB (615412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:263c022db04507d25e58797e542f717b0b6c99b4a7714616cf13486088b39142`  
		Last Modified: Thu, 12 Nov 2026 20:55:11 GMT  
		Size: 40.0 KB (39990 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:d67551381ab6a12095dfc09f735bb2e8ea7cb99b1e71a600b297b7fce904de32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128220985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78f90fa3e0ef7666647da71b8fb342dfc56a891f2f2493c0bf0d87fe2951319`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:31 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:35 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:35 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:35 GMT
ENV PG_MAJOR=19
# Thu, 12 Nov 2026 20:53:35 GMT
ENV PG_VERSION=19rc2
# Thu, 12 Nov 2026 20:53:35 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 12 Nov 2026 20:53:35 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:16 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:16 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e171a94f0583847d86b54f3c550a8e0532333750a8a8b90133ca951db1265f69`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea551cc4853d3e6cf5bbba37ebb0923a67fbc55d78a0f57fdb5966b9948d254`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 868.0 KB (868019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17bea2587060bc1880b54edfc90bd58a6c94968c5aecd26e3879d427b17de73`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23be5286cdfc1e078a0a27ba803f051355bf1bb16705474185e0339003fb79ac`  
		Last Modified: Thu, 12 Nov 2026 20:56:35 GMT  
		Size: 123.6 MB (123643902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39a36a8fc323935d9273b4c8fa20ac66f6c5749f89422544196c98b989a5dd1`  
		Last Modified: Thu, 12 Nov 2026 20:56:33 GMT  
		Size: 21.2 KB (21198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b9759db243617fd09b261638ffd70ec108f56ba73759f36e97d5a464046be3`  
		Last Modified: Thu, 12 Nov 2026 20:56:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd4d21e5120ddddea4b28026f9ad55a8f2131077c3803b2d4705b46e307481a`  
		Last Modified: Thu, 12 Nov 2026 20:56:33 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ede06b07d4acc91cc10bc18c77ae137ff8b99dada85216d5bb4f4de0fc1979`  
		Last Modified: Thu, 12 Nov 2026 20:56:34 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:8955457e511f5782f27435e1db74d3f0d6aa620f194d4cc42caf66407e89619f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6739b44b99d0241d1d005ea76d3d3b8d1a8a3dd95fb4ed65242312cad14e88ff`

```dockerfile
```

-	Layers:
	-	`sha256:2ae52edf4034b1ba76ef0f7d2e00c579ff7944a484388e8e2f7435d067b02f49`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 616.0 KB (616015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09c8135939cdb11c3806d400efb1900a5dd9ee01cc53c21b9d4b795c7daca70d`  
		Last Modified: Thu, 12 Nov 2026 20:56:32 GMT  
		Size: 39.8 KB (39785 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:403c3f0e65b65fc42d66bae053bacccaf18790e94bf58153786d424a2e93787a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124346656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3b5ead09216e92b93587b88a463e8f435088ac12bbbbf79d9f4c4c95a8f512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:51:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 22:51:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:51:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 22:51:51 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 22:51:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 22:51:51 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 22:51:51 GMT
ENV PG_VERSION=19rc2
# Thu, 05 Nov 2026 22:51:51 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 05 Nov 2026 22:51:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:02:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:02:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:02:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:02:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 21:02:37 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:02:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:02:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:02:37 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:02:37 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:02:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e496cd08a2e2a5ae537ae63240d8fd4a0bc64591a1f331535c344b72250924`  
		Last Modified: Thu, 05 Nov 2026 22:56:19 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825cfb770c1e3c9e726e63c8f74363c76e3b3ea8aee1298b9804860d17ea3731`  
		Last Modified: Thu, 05 Nov 2026 22:56:19 GMT  
		Size: 857.2 KB (857193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cc08bbdd78be2239c08764dd17d9794e10a4efb09f8d0efb746e08ba0799ed`  
		Last Modified: Thu, 05 Nov 2026 22:56:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d7bde4d92aeb7727c7a846996e96b53ba2c58834cbc5b7df45d1c980568658`  
		Last Modified: Thu, 12 Nov 2026 21:03:29 GMT  
		Size: 119.6 MB (119638830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17183403ca4eddf02ee5e85770d995c1d02ded864534510eee7c68d775d24db2`  
		Last Modified: Thu, 12 Nov 2026 21:03:26 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2c42b4bed6fb792f9b604060c616d3931e077bb156cd9abe6d4c6d65eab6e9`  
		Last Modified: Thu, 12 Nov 2026 21:03:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c3d76d2e77c30a7bb6cd5af87e7e6120baaf39e5893d451c58cc658343bc6b`  
		Last Modified: Thu, 12 Nov 2026 21:03:26 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bbc2b9a35154241793403fae2639308ca205d349cd56a16141a75811f80a9f`  
		Last Modified: Thu, 12 Nov 2026 21:03:27 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:ed6ec253b0978c4fe28c43fb58f32f4db35d882071dc832c858a3f6a565854ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c31406a53011e1ae0694e3ac53c64714c32279e417a6a1f7b8813341ff3e09`

```dockerfile
```

-	Layers:
	-	`sha256:3e992122f2e745a883c90c5dc937b685c4e4c94f86a78255be9f150d8c67fa61`  
		Last Modified: Thu, 12 Nov 2026 21:03:26 GMT  
		Size: 613.7 KB (613739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459170ef73369cdd52a5c0a4cc4c4a3a157d3242c7fc4b58acb2fc6cd548caea`  
		Last Modified: Thu, 12 Nov 2026 21:03:26 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:4c112046c11238ecff2879a3f43bac602153dcc6a8fc059cb12105aa35df65cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127837579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10dfadf5fe9f6a38074055888767f7cc18f3909455501b5e75bb6c624910abf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:53:56 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:53:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:53:56 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:53:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:53:56 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:53:56 GMT
ENV PG_VERSION=19rc2
# Thu, 05 Nov 2026 18:53:56 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Thu, 05 Nov 2026 18:53:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 12 Nov 2026 20:56:20 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:21 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:21 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2219a190ac28071e094b6d832308f7837ceaa55d3d1e584073b39b3df0d60c86`  
		Last Modified: Thu, 05 Nov 2026 18:58:03 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e380c2fc57c1a0b039cf2aabdf4ecfae10bfcdab091fbf8f62ed13bae27265e`  
		Last Modified: Thu, 05 Nov 2026 18:58:03 GMT  
		Size: 874.2 KB (874227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5506e8fa54351d9657c5e692c396fc56dad92a40e8dad8137fe94ed69fa9e4d3`  
		Last Modified: Thu, 05 Nov 2026 18:58:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02dfcb196e709ae83f339678d714264375026a16bc1281b841ba620cc3a0c65`  
		Last Modified: Thu, 12 Nov 2026 20:56:51 GMT  
		Size: 123.2 MB (123213983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eacfa5a640d47dee0b80b2a227efa7956a6d20307aa68dc85c1a642e22567d1`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c1e0fc8077a3786e60025dd2f11430a072b76b30cec82ad3c62358130d6b`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2198b0e9b20f1960ba3f286e9e2eb5309f4828edfec918f17b216896cb2e664`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a70d9abdedc4cbc08fd117f2f7fb8cfd4e2a08bf04b6a85e440b168c82d5c7`  
		Last Modified: Thu, 12 Nov 2026 20:56:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:c8a14233c4266ad0400ba13f9d907390ad5eb7942a2b82132d50cdbdce59f41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b9839d85c863c8df1165718c344f7381cfc45be1dbc4cea046583018d55622`

```dockerfile
```

-	Layers:
	-	`sha256:7573a700d64c826d8f00daa7d0268dafbc0ed49424dc9c858c4e2b47b4fe678f`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 615.4 KB (615379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5993b30c5c85dcca9125310bc4ae38457781ad7225903eed8cbe2ab5973da999`  
		Last Modified: Thu, 12 Nov 2026 20:56:49 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json
