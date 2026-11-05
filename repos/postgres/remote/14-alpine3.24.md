## `postgres:14-alpine3.24`

```console
$ docker pull postgres@sha256:f77a3bc618715824ff66bb4a43fb5e6f487eb7d94f6fb9d49d7ce273cbda7c31
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

### `postgres:14-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:bdbfe56435a1c58f706557a5db9494f7550a5db42f4bd796e0f7f9c19947161c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114637306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656a12855a35b53ef9bca65b3d51167a0940cc2d01b29ea5c36cb469495886dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:55:23 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:55:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:55:23 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 22:55:23 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:55:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:55:23 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 22:55:23 GMT
ENV PG_VERSION=14.24
# Wed, 21 Oct 2026 22:55:23 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Wed, 21 Oct 2026 22:55:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 22:57:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 22:57:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:16 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:57:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:57:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af7e6743eb7744fc9f448c1666b79b2565757257de7275b035213f6c9f563ee`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adc594f17870f381d1805d0acc21873b904f252b6ca6c7850655aae9ba8ec07`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 900.0 KB (899997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352ecdde088b7ba3dcf9a8a09c9204665afadfc4ca5dc8ff36c636a20988f303`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a4ddb46d11752e9025025a6164e51be50269c97cafbc7ae55bf81ec23ad474`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1717c750d35fc719947a3cee198d810511674af735583fa489a64fccb386b30`  
		Last Modified: Wed, 21 Oct 2026 22:57:36 GMT  
		Size: 109.9 MB (109867121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1091b9604c0105ab55f2e9bec0b644f184e3231ac7a6421e463d7a7ca752c5cc`  
		Last Modified: Wed, 21 Oct 2026 22:57:33 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4605c7f0bfb709dd5860e9cedcedab16882960421e04d3de093e06340f1bc61`  
		Last Modified: Wed, 21 Oct 2026 22:57:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed713ac1c5882d3f9cd2ae2db53b4b277bdde757f5975608264ff02c863bacdd`  
		Last Modified: Wed, 21 Oct 2026 22:57:34 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69aef5a8cfde88d100e160216219df1321a7909ce3cb92d836e095975df4e137`  
		Last Modified: Wed, 21 Oct 2026 22:57:35 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3fb21ba30625a98ac08c73219f97708cd8a7a2296f3015d2fb129717d9e8ceb`  
		Last Modified: Wed, 21 Oct 2026 22:57:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:5476423d1f6d92b62d7a35397d50333cb2095115b9df84eeb4166086bca8eebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.1 KB (642113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a1d2d5d9986155a8591f4b6707153579d864f39ac02f82c43b3c477f596994`

```dockerfile
```

-	Layers:
	-	`sha256:dbdcba066a6dcf57a30b1ebee4cbc89f0706cce81b0dfbe30aac3a15ee7e9bf8`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5139b234edd82ffd8ca1e6cfe067ea7b96ce4f84fd8423b84d8955ff89134fd`  
		Last Modified: Wed, 21 Oct 2026 22:57:32 GMT  
		Size: 44.1 KB (44071 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c55bb3c669ad206980e119ddb3037c81d864c6433defd5f366e2e0ee0d3e83d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110946736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701ef806031cd04c53fe87ac72b03ee68a2752134c07da6426c0d3bf12486dde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:44:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:44:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:44:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:44:53 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:44:53 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:44:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:44:53 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 18:44:53 GMT
ENV PG_VERSION=14.24
# Thu, 05 Nov 2026 18:44:53 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 05 Nov 2026 18:44:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:47:43 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:47:43 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:47:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:47:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:47:44 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:47:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:47:44 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:47:44 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:47:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:47:44 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:47:44 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:47:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b52b3d5e02d360db000f188d05ec323b32ccfc7a939b242a44e107fa9f6323`  
		Last Modified: Thu, 05 Nov 2026 18:47:55 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90f917f58733abaf05127b96835426fa0006f37f47017ca65535dcc87471ad9`  
		Last Modified: Thu, 05 Nov 2026 18:47:56 GMT  
		Size: 864.5 KB (864504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43af0400ad056cb1e382a60216afaa8c04491cb3079d5ffe022563d9948e887`  
		Last Modified: Thu, 05 Nov 2026 18:47:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b8ce3b26711ae9d9ea2915ea5db8a3be76dd80865c603943e59b5ab1423a0d`  
		Last Modified: Thu, 05 Nov 2026 18:47:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5cb204e0915ce5b789b18166b3fa78669b6e262234bfedeb4413e8fd4be28f8`  
		Last Modified: Thu, 05 Nov 2026 18:47:59 GMT  
		Size: 106.5 MB (106506750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601bb73917aff9399ed869449f8e9455fcc22509b5bb1782d458438521c960dc`  
		Last Modified: Thu, 05 Nov 2026 18:47:57 GMT  
		Size: 9.2 KB (9235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c66ce9aefc0bf36047a22632832895d328c3a012a92f2c16acc83451ce95663`  
		Last Modified: Thu, 05 Nov 2026 18:47:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8fb594e2fe61276e3d3177b30b6125f22362fc414513e9249b2e71816af3e3`  
		Last Modified: Thu, 05 Nov 2026 18:47:57 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58a508cd74ca0eef704cdbf8b53eeee54da714e54eff613addf2b09493e16ed`  
		Last Modified: Thu, 05 Nov 2026 18:47:58 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fea71569637623b0ba6ba9b21a9fd9ee958276a8f8db500672726be869bc0a`  
		Last Modified: Thu, 05 Nov 2026 18:47:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:f1d47cccdf623a96432878dd18d1ce0fd5857ec387bf72cbfe32d69c257858c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 KB (44040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a677033f1c89409f35f0bdf0e5f493401a1e5c3547fe3ff0bd91b4c8bc782b`

```dockerfile
```

-	Layers:
	-	`sha256:7ac41b3c80407551ec110c7d235112f3a16c9dba96ded6996c42b09b2b1b5a89`  
		Last Modified: Thu, 05 Nov 2026 18:47:56 GMT  
		Size: 44.0 KB (44040 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c8c6021558936cc7cacb55f7ee99cf6b01ab3429b5fa8dba76ff0a09bb0d7d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104694750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780bbb7b14e2f5391251d038c308cd13861ff603126dd852ef8f7d15820d8310`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:36:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:36:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:36:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:40:08 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:40:08 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:40:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:40:08 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 18:40:08 GMT
ENV PG_VERSION=14.24
# Thu, 05 Nov 2026 18:40:08 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 05 Nov 2026 18:40:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:46:03 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:46:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:46:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:46:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:46:03 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:46:03 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:46:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bb716fcd8a62c2a2252bec936a42d84543c7a972ca4888d4682affa2affebe`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c80d80662f63850dee7b5215e0d32107935078cd67e52fa1c5e5bb8d7840e1c`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 864.5 KB (864517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd3d4a95978ad38ff9496768d4aacab0047a5fca43eb00ac752903b56419fc0`  
		Last Modified: Thu, 05 Nov 2026 18:43:12 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0ab0b2bbe7b1250997f64ef913b9a70877c50350259a037f964a714a5d4666`  
		Last Modified: Thu, 05 Nov 2026 18:43:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c330d11fa6774ea0be41f959241d782a02e45cfd43ff6d9bde4b5af6a96456`  
		Last Modified: Thu, 05 Nov 2026 18:46:19 GMT  
		Size: 100.5 MB (100545417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875c4481c1bbc38d32f146a5b0abbde9be052cffd1cc22b21f5207eb01da033c`  
		Last Modified: Thu, 05 Nov 2026 18:46:16 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6886cf0a6b7eb7129ebea87e14af84f6fbc5bfc0e405b5cbffd7b65a58c47b`  
		Last Modified: Thu, 05 Nov 2026 18:46:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f7e119f5f8f06b3305cc7d9a574155b60281c93cbd9d1648a6cb64aa5559c3`  
		Last Modified: Thu, 05 Nov 2026 18:46:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625ca9d1733a2b62ebde39a65b7a054b834f2bccbf318d3cd7e315dec0585311`  
		Last Modified: Thu, 05 Nov 2026 18:46:18 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0c80ff0b6d80dfef88680ff57b6f20d80d77d2d3cfa06be574d3e3f486bf44`  
		Last Modified: Thu, 05 Nov 2026 18:46:18 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:62867ca5164f2e103ff99c1f62519ea224e381e454b16dd28b2edbc986462845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630a8933302826bbb59e5f022d75d90cdb86f88431c0c1c4816032c8b1c86e7c`

```dockerfile
```

-	Layers:
	-	`sha256:201553ee6233df748888524c38b7274793b098f74124ee68a2e92e73d8e74745`  
		Last Modified: Thu, 05 Nov 2026 18:46:16 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b02c3e9bd61d18041962d21bb6672a43f999ef1d4b69bab85ca3cbf6148bc822`  
		Last Modified: Thu, 05 Nov 2026 18:46:16 GMT  
		Size: 44.3 KB (44255 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:815a7f86454caecbc9ea4a4ce7f33c0f31ea0e2649e46b4a8875473cf6c276f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112504584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0af12d8ec894231415fd989d3b4fe3b956066907d48db97f36cfb32bb02d77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:17:17 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:17:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:17:17 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:17:17 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:17:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:17:17 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 23:17:17 GMT
ENV PG_VERSION=14.24
# Wed, 21 Oct 2026 23:17:17 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Wed, 21 Oct 2026 23:17:17 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:19:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:19:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:36 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:36 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8598dde7cb6aacac4f7a938594e3a929af0a0cbb150ffc78e3e3f46f3d284084`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f291ab39bbef045661267d6edbd2689c5f818871a9a6fc97bf74f169c10ea2`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 852.0 KB (852049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbce1740cd8d42c8320b23936a9e4ef40820b0afef4112f656c3d44bb2f0fa2`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca0a1561825572f445e9582eddc527f0c2ccd075f1509bf08be8a13633cd53c`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78d14f747defc2d6e1cd833ed5b22aa8a1f81c8b3d1bbd5ae98644ddd6593dc`  
		Last Modified: Wed, 21 Oct 2026 23:19:55 GMT  
		Size: 107.4 MB (107444962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5293f01317066dea5fedea408c4b98282aec98711c3ec767e49971698385305f`  
		Last Modified: Wed, 21 Oct 2026 23:19:52 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2129148c2fbe545b0d77d2966b498a3d356d6ab2b67331e10f58fed5adbbc2a1`  
		Last Modified: Wed, 21 Oct 2026 23:19:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50ecd35e526fa68ab9da56fc3cb49346ac01c9d208f17ae596e48dcfc3164b3`  
		Last Modified: Wed, 21 Oct 2026 23:19:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d773c9f34d5571ce861e39ddf158a5ddbb653ef76a13ef91ebd13616545ff421`  
		Last Modified: Wed, 21 Oct 2026 23:19:53 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17928f979404d4db5dae185b71478ebf4589c8f6a1db8c6de3026b7e08fbb247`  
		Last Modified: Wed, 21 Oct 2026 23:19:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:09e323c7ca161550dd8d188927097af4b863f764875a60de71e64bb506faf8eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f676fb77babca53d4c4eb35d5d13ceb715c37e36b2cba25c7b124fd8630746f8`

```dockerfile
```

-	Layers:
	-	`sha256:bbe79418b799a1bc67bbb7e7abde6e0665226b5d6af45390e6b498c3eb289f6e`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94045518a55e46f304ac1a29769c335bc1221fca6905f6d328fd6ed1cef0de42`  
		Last Modified: Wed, 21 Oct 2026 23:19:51 GMT  
		Size: 44.3 KB (44294 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:4edcaa25b9c670b4ad89721842ea5b6d1656378e70cb2461ccc4316574f65bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121300870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c40d26d4dac855c7f304b6478723407d2b93c2b89e33abffc3058b31f6ada2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:24:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:24:51 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:24:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:28:08 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:28:08 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:28:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:28:08 GMT
ENV PG_MAJOR=14
# Thu, 05 Nov 2026 18:28:08 GMT
ENV PG_VERSION=14.24
# Thu, 05 Nov 2026 18:28:08 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 05 Nov 2026 18:28:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:30:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:30:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:30:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:30:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:30:36 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:30:36 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:30:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9f9ed0cb5d32f65e88440745b55758cf8b7f9897f74f4911c9b4701fc134b6`  
		Last Modified: Thu, 05 Nov 2026 18:27:59 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22db6075f42505c093172502fb6ad61fa16cce1f1269f61e87f9a9250c834786`  
		Last Modified: Thu, 05 Nov 2026 18:27:59 GMT  
		Size: 868.0 KB (868016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94b86233c9d9e4d91e06ba196e3f3224150fb6c5d2a81f9665426a810c97906`  
		Last Modified: Thu, 05 Nov 2026 18:30:52 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521fb1b9700fbba32894b2f8a3ab541f975ad3db7c1f1a34776946cade1d9483`  
		Last Modified: Thu, 05 Nov 2026 18:30:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7881a1dd4e281a3b945334b96e7fef4d2e01cf56e9a19ff12919bf78750f94d2`  
		Last Modified: Thu, 05 Nov 2026 18:30:55 GMT  
		Size: 116.7 MB (116735406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40477b73fc596b39dde7ca6b3cdcc1daa6e8238fc22b59a512ac4b45ed96748a`  
		Last Modified: Thu, 05 Nov 2026 18:30:52 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42597dad81f31a75ab7e10e739ba37909e02f84adf95097be485788cca3af3e`  
		Last Modified: Thu, 05 Nov 2026 18:30:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace703523accdf8f8de0f09bb40dfe0948f7a82168db359e5faa936023d86dcf`  
		Last Modified: Thu, 05 Nov 2026 18:30:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb7e66e1504c39f3484ba09ce78e6fbf7b9ccfc42289a350e4864846b8bd158`  
		Last Modified: Thu, 05 Nov 2026 18:30:54 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1a95f596204046f80fe157784d4cb4816698af1ca6988cba453416ccb359f4`  
		Last Modified: Thu, 05 Nov 2026 18:30:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:184ffaaa40ebad6df38e6478b382f66087e30c48bcbbbfc25ee4fc591433bed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (642039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071c49cee63621b3e6e170b3e57c4ac325854589c942d52993ccb2fb41c91ea6`

```dockerfile
```

-	Layers:
	-	`sha256:3c9facebea9ceb48ca0cd2a9c02e6deca2a00e7f99699b853e417d6db0874e53`  
		Last Modified: Thu, 05 Nov 2026 18:30:52 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88b8720ee2fbdca4b01c868422eaaf4b1f70136eb34713a9f2199dcf2cafdf95`  
		Last Modified: Thu, 05 Nov 2026 18:30:52 GMT  
		Size: 44.0 KB (44022 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:31890f94376ecfb8c5bdda604c4b7b784da32077da8b0008259cf7285a6dfbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117241970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5652c243cd995333cf56ca8622ea757408ffde79375900bb0fbf7c7834031f`
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
# Thu, 22 Oct 2026 13:06:16 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 22 Oct 2026 13:06:16 GMT
ENV LANG=en_US.utf8
# Thu, 22 Oct 2026 13:06:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 22 Oct 2026 13:06:17 GMT
ENV PG_MAJOR=14
# Thu, 22 Oct 2026 13:06:17 GMT
ENV PG_VERSION=14.24
# Thu, 22 Oct 2026 13:06:17 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Thu, 22 Oct 2026 13:06:17 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:23:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:23:09 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:23:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:23:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 22 Oct 2026 13:23:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 22 Oct 2026 13:23:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 22 Oct 2026 13:23:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:23:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:23:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:23:16 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:23:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:23:16 GMT
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
	-	`sha256:030bd48091f1a6e028b0da4a4ab4b69afe76b7d346c6b290e70b1de5def17886`  
		Last Modified: Thu, 22 Oct 2026 13:11:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc68a6ba360cc73b6242596a191d76c5609918270aee770a5f590a36670cc90`  
		Last Modified: Thu, 22 Oct 2026 13:11:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17925e44866bf372e22768dfb60632eeff85a5f4c864ce260899a915ab50720`  
		Last Modified: Thu, 22 Oct 2026 13:24:04 GMT  
		Size: 112.5 MB (112546856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776337fe499ffbd937e039a3047b503bdec68695075f02e80ea06c2209742e44`  
		Last Modified: Thu, 22 Oct 2026 13:24:01 GMT  
		Size: 9.2 KB (9238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fb085c33c953578d4fa9903fce1a54021010b550ab206477b13428dd5adaf9`  
		Last Modified: Thu, 22 Oct 2026 13:24:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b52a05b23e602c07af44a80e4875d1c54de1a68229bab1f4d9486758cdcfb5f`  
		Last Modified: Thu, 22 Oct 2026 13:24:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766cefaa6282927794b5055f18dbb38a9d14da0bc4f7353a685ccd12e059a284`  
		Last Modified: Thu, 22 Oct 2026 13:24:02 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7d33ed128c8cc0168160aae6d9dc1daf883d11ab2760a3f3a5fc54bfedfa33`  
		Last Modified: Thu, 22 Oct 2026 13:24:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:5ef3fb48d89d6a83cc21acae76be96e02b1348dca65a8733a06417323868d8e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 KB (639894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e65b1d6daae998284afa4ce8bbfc41b73e8a5c4224c16e3f553ad5edb00b22b`

```dockerfile
```

-	Layers:
	-	`sha256:7997dafd160ee342066e72ee6a785dad986f14d080ed709e1fd7f0f92bacecf0`  
		Last Modified: Thu, 22 Oct 2026 13:24:01 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:910a45422b291a724f712d4660d4843e4695ce2ca1543e0282ab52b9be0fbcb6`  
		Last Modified: Thu, 22 Oct 2026 13:24:01 GMT  
		Size: 44.1 KB (44131 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:069c8a948f5ed226ca2e30523cc90ebb77755b24c3db78ee6c39e60837a57e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116515336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43dafb22af87299dc2dbaaa1a1696481b6043efe0c78ad424bb840804b1c156`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sun, 25 Oct 2026 22:41:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 25 Oct 2026 22:42:02 GMT
ENV GOSU_VERSION=1.19
# Sun, 25 Oct 2026 22:42:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 04:51:48 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Mon, 26 Oct 2026 04:51:48 GMT
ENV LANG=en_US.utf8
# Mon, 26 Oct 2026 04:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 04:51:48 GMT
ENV PG_MAJOR=14
# Mon, 26 Oct 2026 04:51:48 GMT
ENV PG_VERSION=14.24
# Mon, 26 Oct 2026 04:51:48 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Mon, 26 Oct 2026 04:51:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 26 Oct 2026 09:36:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 26 Oct 2026 09:36:46 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 26 Oct 2026 09:36:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 26 Oct 2026 09:36:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 26 Oct 2026 09:36:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 26 Oct 2026 09:36:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 26 Oct 2026 09:36:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 09:36:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 26 Oct 2026 09:36:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 09:36:47 GMT
STOPSIGNAL SIGINT
# Mon, 26 Oct 2026 09:36:47 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 26 Oct 2026 09:36:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5b6a59762937f5be3527e9191d90382dc886f946ae077ddcef7e997ee0b528`  
		Last Modified: Sun, 25 Oct 2026 23:42:45 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347a90b79416853b99426a4e11e5385a77b07bd8b1777562a5bf67815f9908a4`  
		Last Modified: Sun, 25 Oct 2026 23:42:45 GMT  
		Size: 844.7 KB (844709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd5022d6e2d403373b3082d6948dbbc269c88adf566d96d94d5cb1f77c5a836`  
		Last Modified: Mon, 26 Oct 2026 05:48:55 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876b6cc5b908daa7999db48065c67488ee6742c43124727c844ed5eaa40ccbfc`  
		Last Modified: Mon, 26 Oct 2026 05:48:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5145c5ba3d9ff0fd3c9eb67f193c96465f176e9577f763aefccbea8cde00362f`  
		Last Modified: Mon, 26 Oct 2026 09:40:14 GMT  
		Size: 112.1 MB (112072871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea532da336b01cf07e1585300bcd09b3fdf120657e731e777ca24ce2294f50a`  
		Last Modified: Mon, 26 Oct 2026 09:39:57 GMT  
		Size: 9.2 KB (9246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451659aa53c22cfd4e5d6d6c034039f8a97f081990e733456cb02d5059d5c500`  
		Last Modified: Mon, 26 Oct 2026 09:39:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afa64f728a0a2b4b154a08ff7f9a9736288016841371aa985fc36fa2a29aed6`  
		Last Modified: Mon, 26 Oct 2026 09:39:58 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b45319af9edf9276f9dedcd448b42880d6d580b1325d21253242a1772e8842`  
		Last Modified: Mon, 26 Oct 2026 09:39:59 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00b5e5f15ad4c63fddf0558691b2501da4d3fd54c11f9abbc5e244fafbbff73`  
		Last Modified: Mon, 26 Oct 2026 09:39:59 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:2b9c9cfcf4a081fc92e4a79251ed50191db800a3aa433baa65ba0a6db2c0e7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.6 KB (641552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f2adfc16b93c5304db085a6edfd747673c8577eaebc58d7545869f48a95994`

```dockerfile
```

-	Layers:
	-	`sha256:a4653c5a37829a7dfc00ed4b0d96555c743726052318d06b65e65b4003d0af82`  
		Last Modified: Mon, 26 Oct 2026 09:39:57 GMT  
		Size: 597.4 KB (597421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89c883ba715766c5fb1047f251a802d611d1ca2ac4ba3b4b14e60600bd0573a8`  
		Last Modified: Mon, 26 Oct 2026 09:39:57 GMT  
		Size: 44.1 KB (44131 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:57053af35a809e43815da78c335d73a4a140097d8ced8f4b7e2f9163d36ff93b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121150846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4e6cd9916ac49f17b535d8f9c7f4a747a96999a25ca5fccafabf9456dd9217`
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
# Wed, 21 Oct 2026 23:38:10 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:38:10 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:38:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:38:10 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 23:38:10 GMT
ENV PG_VERSION=14.24
# Wed, 21 Oct 2026 23:38:10 GMT
ENV PG_SHA256=a7fa7ed3d558172355f51406097a7bd4f6b473be80f311ef7cda96bf383d8897
# Wed, 21 Oct 2026 23:38:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:40:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:40:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:40:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:39 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:40:39 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:40:39 GMT
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
	-	`sha256:7d9db5364c8764331c3068365844766f36e551ffe424143684e2a4efb031ce14`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8748c8146e50f4323df7ad7ec650801ce6e2ccac1b8849fc787df59047856c0a`  
		Last Modified: Wed, 21 Oct 2026 23:41:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb85dddd37a4f574986adffe22b178c9704906ce20622b7246b6247eb963c58b`  
		Last Modified: Wed, 21 Oct 2026 23:41:05 GMT  
		Size: 116.5 MB (116539833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf38954f59179057f9444cb51857567f4d09ae3d27d4b3bc64e792660dde19f`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 9.2 KB (9235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9609de37abb78b16369f0a486f39a3ccb0351bc8cb31d094dcd9b9c7a6e976ba`  
		Last Modified: Wed, 21 Oct 2026 23:41:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cf1ac4a49a85f2629b05122f29bb5c02e31f035beadfa325038bc2e8ab4c98`  
		Last Modified: Wed, 21 Oct 2026 23:41:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3fcfe16cd15344f5ddbd112e4f6d91d63650a3720baaac28c4a2ce34494757`  
		Last Modified: Wed, 21 Oct 2026 23:41:03 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d69fa022cd5b17affa45eb9da7beccb0204402322f5a1d86ec0247976c9453f`  
		Last Modified: Wed, 21 Oct 2026 23:41:04 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:48e229b01ca141a30fc34840b4d20ae9ac8fa5d3b3466d677daa1c450ab1ce6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2989f45793e83ad24fd511bd03a46eae7e21118a3dfefa1ee34f776229bb3213`

```dockerfile
```

-	Layers:
	-	`sha256:ca6e59a93f7bc95f3468b3adde5f3a3b7e7bb2e1986feab11625c6e618241cd9`  
		Last Modified: Wed, 21 Oct 2026 23:41:02 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a951360c03b5e5de9e0fc5ceef4f85339d777cb1deac77eb015668e4d8540b`  
		Last Modified: Wed, 21 Oct 2026 23:41:01 GMT  
		Size: 44.1 KB (44071 bytes)  
		MIME: application/vnd.in-toto+json
