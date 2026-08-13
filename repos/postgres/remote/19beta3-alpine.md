## `postgres:19beta3-alpine`

```console
$ docker pull postgres@sha256:96d419b1a2383eecd4be3caedbca1fa8c899dd9501ababe75111442af9f824d9
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

### `postgres:19beta3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:06faf6e1591277e3e82ae29b8c8733ee0616d7eb8e7723e6bf3a457bfa15c153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121337572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9a7dd0de26358c0ef16bfa0bb6f3fa327f52e77470509e1355d57ee9c61d62`
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
# Thu, 13 Aug 2026 19:14:23 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:23 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:23 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:23 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:16:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:16:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:16:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:16:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:16:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:16:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:16:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:16:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:16:41 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:16:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:16:41 GMT
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
	-	`sha256:72768d7f144c041ea6957d5e42c3094d8fd159ff76d5700df3dbddc87e717c00`  
		Last Modified: Thu, 13 Aug 2026 19:16:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4605559a80a861313f3bb41985f32b6e8ab8ddeada4c9a02931014e89513bbc1`  
		Last Modified: Thu, 13 Aug 2026 19:17:00 GMT  
		Size: 116.6 MB (116562252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94df3c2061c0df941d0e39c5119ae150a82d8394355dbbf8e0456c222b78ef6`  
		Last Modified: Thu, 13 Aug 2026 19:16:58 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584315fdede88bf99b594d902086a7b2891e0faaea3fee8c8a709bb07804273f`  
		Last Modified: Thu, 13 Aug 2026 19:16:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2ed33e80571e864008499f24d99695fe812dd87d80a60e5c3374acc4bb30ec`  
		Last Modified: Thu, 13 Aug 2026 19:16:58 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f62a830d4a56046df04937f507d8bb8756ebe766c8ab2af697c9732e5bf04a`  
		Last Modified: Thu, 13 Aug 2026 19:16:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:7914a6be81b4bb0018524be2b90415a719c10fee8f1017877c37f3d70f97fe2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36b9017b00bf251841c6d98a538b556a83919e2306571c622c1a81ff796ff1b`

```dockerfile
```

-	Layers:
	-	`sha256:5a08e987271fa7c03c23882d7bba66c8235e9d3794de0711b4d1bf2c682d50a4`  
		Last Modified: Thu, 13 Aug 2026 19:16:57 GMT  
		Size: 616.0 KB (616048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d87373a72c482f12e4b460efd9cacfec00fb24d234007564e2acbd640dc0395d`  
		Last Modified: Thu, 13 Aug 2026 19:16:57 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c4a7546315705b1236b289e9145754a82125600d18ba73066051906a71f2dd81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117528401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef60fc97cfa162659fa300ec7a0a42d9f08b4474bf23b17d13fbd8f69f7a217`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:26 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:26 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:26 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:26 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:26 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:33 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:33 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:33 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:33 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92a886515d72c50f687eb0723ae29b4db90b1bb07235ac7eb1455840705954c`  
		Last Modified: Thu, 13 Aug 2026 19:17:46 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659c6da78732d40f2e5407e8702886dd1680c19e6284fe44becaf02cd52023a2`  
		Last Modified: Thu, 13 Aug 2026 19:17:46 GMT  
		Size: 864.6 KB (864614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c3c3b08d6fca88d692b477c8bce9fc386d8a9e706493e6a4e808b6904c5f23`  
		Last Modified: Thu, 13 Aug 2026 19:17:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173850a85ea3558c92f88fe594d7c69f0d8f5dad7c2efec92cd568ccb43dbe03`  
		Last Modified: Thu, 13 Aug 2026 19:17:49 GMT  
		Size: 113.1 MB (113081669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990392b7e33fe1458c22a6031030001e9c8cafdb7904827ba428a947f4be7dbb`  
		Last Modified: Thu, 13 Aug 2026 19:17:47 GMT  
		Size: 21.2 KB (21159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e55cb84db5b199ec13bd8e925e2fed12d1ac367557d507be896a324d277f53`  
		Last Modified: Thu, 13 Aug 2026 19:17:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:754def411efef21338ad0040dad409743756c14d027a9d487ecae658f03c0a36`  
		Last Modified: Thu, 13 Aug 2026 19:17:48 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7a99fd07f612e999ad27b46cae566ab2b3ca9f6b4d1624e4dab797493f2d29`  
		Last Modified: Thu, 13 Aug 2026 19:17:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:4874466f1c9872c67eeea612c891a458f7ec75d3916ab87c4853a89473d29d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 KB (39767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313ba5a1aff7484a5244a86990764e0222299f635c3c9f00595be8d504a9d2d6`

```dockerfile
```

-	Layers:
	-	`sha256:988b1b20063e49b90abc489a48983c864d3657554464174f12ad02bea47c53d5`  
		Last Modified: Thu, 13 Aug 2026 19:17:47 GMT  
		Size: 39.8 KB (39767 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8a5600182ec2007e4ff4584b1f08a59834e06fbb9c1b6a34a69511c24134392b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111072459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304acf2f88a496eb9fad7c1d831639f06fa552e9f7be1880e14c1a51e2378a55`
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
# Thu, 13 Aug 2026 19:14:15 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:15 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:15 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:15 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:15 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:06 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:06 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:06 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:06 GMT
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
	-	`sha256:e85cf6a3137e160ee16a7cb3efe88638b574b0d585ea7c6678735feb2652c299`  
		Last Modified: Thu, 13 Aug 2026 19:17:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e02c2a67339f54e08fe6c8e83ed70c1b321b92bf4dc8b7e2a0e723c1289cee6`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 106.9 MB (106918542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec07d68a938f2f139d9e24cc3ebe0fcc07962360ae0add705a0fe369df563cf0`  
		Last Modified: Thu, 13 Aug 2026 19:17:21 GMT  
		Size: 21.2 KB (21162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d1e442ef1600cdd27d90a24237ec24e683d383cf0c6dc5d7613442486fdb6e`  
		Last Modified: Thu, 13 Aug 2026 19:17:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d470c0207db568f074e26a4cec6ec7d8661907631cc246bb9a677759afac411e`  
		Last Modified: Thu, 13 Aug 2026 19:17:21 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46869473c9bae7b90d4c909f60aacdfb71e7a5878711941710b27ba5c20ce7e`  
		Last Modified: Thu, 13 Aug 2026 19:17:22 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:0fbcf8a982e1809423f2077fa5c1475bc33d031af6537ad3b1c55c4875c1d930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045261d34f06aba1c4758080a8ef80884992d889f822b16bc0685d228f1e4402`

```dockerfile
```

-	Layers:
	-	`sha256:2910027fdfd838780ebfa7e4b09d2e767c8e1b39b40ef1cf8848bd4f74d3e909`  
		Last Modified: Thu, 13 Aug 2026 19:17:20 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f65aa841339c73a586ac9f6125667b37102d082f023e284e3c326dbdb6da68d`  
		Last Modified: Thu, 13 Aug 2026 19:17:20 GMT  
		Size: 40.0 KB (39982 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e62a3db66ad11cc2840c5c9b85ec00e9c9ea42b93fb5ba31a3016d36092f10fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119101221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01de2b1bd914c2e90d9de6e856091ead126f5f9dbadbb5c93f09b6696c08c30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:35 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:37 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:37 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:38 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:38 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:38 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:38 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:07 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:07 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:08 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:08 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:08 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:08 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849e9a695b9089f64b13335627feb04f6db8763cdef9af17919a5ebb3db43755`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb933358f3a36727b8e75f5e911c8202ce5cf9351305263307bd2942d9b263ee`  
		Last Modified: Thu, 13 Aug 2026 19:17:24 GMT  
		Size: 852.3 KB (852272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdb2190f23bd5b2a558341f6327cab537c29e1ef372629d26cb2e9bbe1645dd`  
		Last Modified: Thu, 13 Aug 2026 19:17:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49df575167364c3467909ac44241688b65f83f32e2052797d821dcd4152174e4`  
		Last Modified: Thu, 13 Aug 2026 19:17:26 GMT  
		Size: 114.0 MB (114037238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef2e229e52fc1136d72656f5db69744edda939c4e30b6cd9e84cea2054b02bd`  
		Last Modified: Thu, 13 Aug 2026 19:17:25 GMT  
		Size: 21.2 KB (21162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5710d1049fa680fdc26bfe51b07d4e0c01f88132bf46e0e60df94faba3aa3d`  
		Last Modified: Thu, 13 Aug 2026 19:17:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db0c349c9fd355e35fbc8132c02524db6f1498d6cc46595a7206f12021a4bff`  
		Last Modified: Thu, 13 Aug 2026 19:17:25 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28efab3bae2ecc8f7ad82d557aac9d442839aead2576a8a409c85a46acddbb9`  
		Last Modified: Thu, 13 Aug 2026 19:17:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:81dd6140cca51d50873dcd8830c49dcdc1f011516abc23900933b3fe6b81094e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f291b24daf5477b4fdfdabbae46844783b5964d57849083edb80edd771a6b31e`

```dockerfile
```

-	Layers:
	-	`sha256:6016e0b4579aed18fd67271b2b40d2d74d0fa96ef0eeb5e05b0d5dde51239f3f`  
		Last Modified: Thu, 13 Aug 2026 19:17:24 GMT  
		Size: 615.4 KB (615430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d595fdf5193f43b187d7a2bdf76c6a355b06e848faa5349cf904ee5bd56540`  
		Last Modified: Thu, 13 Aug 2026 19:17:23 GMT  
		Size: 40.0 KB (40010 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; 386

```console
$ docker pull postgres@sha256:31f9f0100ba5ce66f5d072a229c66640fb34c5f069537a72ed37a5cba75ccc81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128261123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a726d6380f552be12f00f0968a4c7cb351f4da297adc57c837c19e3414a5f4a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:14:39 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:42 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:42 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:17:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:17:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:17:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:17:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:17:20 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:17:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:17:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:17:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:17:21 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:17:21 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:17:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eefb621eaf6c2683446ac52f6a4a50c79ac4afa606d789e222da99f4e353aea`  
		Last Modified: Thu, 13 Aug 2026 19:17:36 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c08bffff2f348008a062b4c1d85a772e882a0c851c57eae00da5aff5fe5e4`  
		Last Modified: Thu, 13 Aug 2026 19:17:36 GMT  
		Size: 868.4 KB (868431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840c8c6388d026f2376a5d42d74905a7117d561560753062941bd12ee2a29ea0`  
		Last Modified: Thu, 13 Aug 2026 19:17:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34a138925b0653549ffa0324c901806d32cd8b54883802a4ecbc0320fc4cc26`  
		Last Modified: Thu, 13 Aug 2026 19:17:39 GMT  
		Size: 123.7 MB (123693890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466520fd687c3558b3e12d7272f469a2c72be9f7ba2c07d79c491ff6a1210d4d`  
		Last Modified: Thu, 13 Aug 2026 19:17:37 GMT  
		Size: 21.2 KB (21158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595926b3df22f50e6183526271c797e4b628e9d17a12af74e99dec457101d2fb`  
		Last Modified: Thu, 13 Aug 2026 19:17:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f48ec32d7532014ee812eb52c881e981d1b5af22790665e895ad8fb8d4deb5`  
		Last Modified: Thu, 13 Aug 2026 19:17:38 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0614e4b2f37103820fca4a9ca97cfaf787ba3abbe7ef3418a388743ed9d0c19`  
		Last Modified: Thu, 13 Aug 2026 19:17:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:928a8b9052d4442e69f1e48660cf54bdb0dffd18ddc2e27cc433faa4f95041f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0b0e1b473c9866dfdac5fd03ec85185387f048d6858b8e76696ddc2c329526`

```dockerfile
```

-	Layers:
	-	`sha256:5af5f85606d19a9a4b487b8ee8d70c6ccf994c24a30c3d88d804951510988b0d`  
		Last Modified: Thu, 13 Aug 2026 19:17:36 GMT  
		Size: 616.0 KB (616033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a91fcc1c2020c72d950f23e1dd82a16ff49902635d667167d954d4ebb6077a3`  
		Last Modified: Thu, 13 Aug 2026 19:17:36 GMT  
		Size: 39.8 KB (39806 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:67cb99765d73e0c5c869d41b12efd5e60e964e2086f3fb2ab6f1b923ddcddb14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124389452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fc8a565f5a455abae7951026148b85177b440b1eb4af7991e34fd0c8ce7c31`
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
# Thu, 13 Aug 2026 19:14:35 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:35 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:14:35 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:14:35 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:14:35 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:18:59 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:19:00 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:19:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:19:00 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:19:00 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:19:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:19:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:19:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:19:01 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:19:01 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:19:01 GMT
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
	-	`sha256:695d21869354784f2a7d43d52fc011b0cc4f18d1be75ac291c3843a74612ee10`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9850bb76c0babd4a3d26d263108fca5c0374a644e06e8b1cf88b8fc6e55799cd`  
		Last Modified: Thu, 13 Aug 2026 19:19:44 GMT  
		Size: 119.7 MB (119689921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb80faeff26487c3c7167ac491e3e8fb89fc31bf3348580e4e750868af2dc794`  
		Last Modified: Thu, 13 Aug 2026 19:19:42 GMT  
		Size: 21.2 KB (21168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a18a67c39f4912b4f1c7805ea9bac0de3857d3b54a6d932858e12e0f576d915`  
		Last Modified: Thu, 13 Aug 2026 19:19:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf6e0938eefa16832c84a48ecc968317ab7c7cb8d1f4b61b0f94211e970e24a`  
		Last Modified: Thu, 13 Aug 2026 19:19:42 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b60b9850d9ce616b3369b51daeba61b64a683eb86c018d5fd5085dc5ccbdf0a`  
		Last Modified: Thu, 13 Aug 2026 19:19:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:619a7ced7f78a124c31f57962b1a7b796eeb6887fce5e37bc26c2e7906ea4733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0696b2f4e1238713adf07b6fa7f271e4390f12b91343188bc1528bf832882a`

```dockerfile
```

-	Layers:
	-	`sha256:33b1e53560060de7f6c31d6c33f02ba55baca95812321c6146b7429ed57cb316`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 613.8 KB (613757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40250273a3e50d5b468fc1c98a510bf14b65fe6824f86e65c7285f396085a303`  
		Last Modified: Thu, 13 Aug 2026 19:19:41 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:c08fe2b8ef2f565adeff044eb013fd84e3269cbdffe1f18ac50e54fd08d14858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127912158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718b5b6144d9ff6b8f3f7d8b7bd39498dc3d2525a44067ddc933e823034c306a`
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
# Thu, 13 Aug 2026 19:13:04 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:13:04 GMT
ENV PG_MAJOR=19
# Thu, 13 Aug 2026 19:13:04 GMT
ENV PG_VERSION=19beta3
# Thu, 13 Aug 2026 19:13:04 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 13 Aug 2026 19:13:04 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 13 Aug 2026 19:18:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:18:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:18:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:18:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 13 Aug 2026 19:18:14 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:18:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:18:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:18:14 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:18:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:18:14 GMT
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
	-	`sha256:bddacfa512321b650974b668ce4a2fed147497d7444f7fb60976168ade0b4a8e`  
		Last Modified: Thu, 13 Aug 2026 19:18:40 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e06b567d5370ed983c32b7b7e810c99d89400510502a52c0736aa35f188ab2`  
		Last Modified: Thu, 13 Aug 2026 19:18:43 GMT  
		Size: 123.3 MB (123299670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3515118e70a0dfc42be2bb6eb7d9350e610a7b7696cf1f2bd5b8f71bc670967d`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04997a96fed54c5c96c09607af1a416af74e3711ae349c22fa5f9562f38637a6`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8ba11f0095ab18af488cf0940465d939688f109390688e9c40e2b3064530d2`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f07f89e426449790404e7cdb1c930ae2ddfe025c15b846a30ad43590e60401`  
		Last Modified: Thu, 13 Aug 2026 19:18:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:6d2ed477a06a822d9f547313bb1cb5c9cbd2b90fc09e96ed14ef599604fad41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5af11cef67a9ef2ccd708c894c8b0cf24e268cee97df6333e6da9ff50af94e8`

```dockerfile
```

-	Layers:
	-	`sha256:47b6cae22d8e75d3ca5f87b6c0f0405204cce5c39193189812bb0f6501539844`  
		Last Modified: Thu, 13 Aug 2026 19:18:41 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57b53970ab9b51bc604153f90f0987a96f0d2f660fb57bfad0eba8b45c6c83e6`  
		Last Modified: Thu, 13 Aug 2026 19:18:41 GMT  
		Size: 39.8 KB (39839 bytes)  
		MIME: application/vnd.in-toto+json
