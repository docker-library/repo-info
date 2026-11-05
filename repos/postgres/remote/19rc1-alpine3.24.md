## `postgres:19rc1-alpine3.24`

```console
$ docker pull postgres@sha256:531cc3a747d28c1de5b25b573de0567fb4ca89c27a5fe0d38a7417a5b9917108
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

### `postgres:19rc1-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:d9da2cdfda29f62a8da0363b8a663431f5b12fcab6c80673bc9768fa3abc2cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121112399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab43c72e79206bab35c05d041082948c6209508267771de638b06f67b6776c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:53:36 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:53:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 22:53:39 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:56:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 22:56:15 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 22:56:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:16 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:56:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:56:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920931ccc7cd57c4ac27cf07c2b09458e180dd0b13a745a57c9f0a7730ae0c87`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d82e5bf0e9aba739f5c0a28e16e9f563de7cd01356de885eb7d36e52c98244`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 900.0 KB (900003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6452c4ad4f491331a3a4105af9c7c5bc25b30507e14fa7cd36ab6a843cf407dc`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aec7c35ee749ab1b66448d23dcaa8cb9b1df4d9681802488ee9be5ebc321f53`  
		Last Modified: Wed, 21 Oct 2026 22:56:35 GMT  
		Size: 116.3 MB (116330592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065975fe03ebacfd6828ec604bd302f4619914e4c9f27db3e4d48a9300e21f63`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f4943643f635d5e75f67bed97a214b9a874cca6d267c180d10ab5b43911853`  
		Last Modified: Wed, 21 Oct 2026 22:56:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbccfa29ccc1b89f3b5d568f8eb9af6e6d635bb684cb84d3a4afa2d123fecb55`  
		Last Modified: Wed, 21 Oct 2026 22:56:34 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6ed7ce61eaa2ced14e4074172a8d8581c1c7dc90a4293d6eac5ac14f986c00`  
		Last Modified: Wed, 21 Oct 2026 22:56:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:36f56b261fe21898c94494e8dd1881f5815595a9e475cc9e64d9432f9003fcde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc16e9ac08f159b7465ac3dd75c91fbc605f181393c93b0e6a5ef3217ad823c`

```dockerfile
```

-	Layers:
	-	`sha256:e7c7dc4c17a064517acdbf8f2a675b2aa088e0761d30d1081d6b5e5aa9c1adde`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 616.0 KB (616036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64a52a52af5d8f18474f32e1617bac41bd7d968c8c005f502b11daab8ca0bd01`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:f9b92c9150118a05629415ba121fb7e679551c11f9a8767d00cf382b22b7d482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117320282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae481bc7a7bb68bf8bc8abe641445ff04238a7a0a173e94eda6cad55d5c3193`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:38:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:38:47 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:38:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:38:47 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:38:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:38:47 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:38:47 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:38:47 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:38:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:41:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:41:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:41:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:41:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:41:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:41:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:41:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:41:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:41:45 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:41:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:41:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f141a4ef41c7a5f860922dd8d8ddecf7471d6c8fdf3aec917a489dcda4a36fd9`  
		Last Modified: Thu, 05 Nov 2026 18:41:58 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a052b10703b5dd6f985451b57b6e144c84aee2d922b965e6e4dbf19097e8938`  
		Last Modified: Thu, 05 Nov 2026 18:41:58 GMT  
		Size: 864.5 KB (864509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d8d12ebaae47a6e0b4f4c1f420eb6c2bb11a992295578fdc161d4d8df3bb44`  
		Last Modified: Thu, 05 Nov 2026 18:41:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c7490a122a3d86e1686090da7bb1e3dd372eba1dcdb651112bbecc75a97ae7`  
		Last Modified: Thu, 05 Nov 2026 18:42:01 GMT  
		Size: 112.9 MB (112868671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4467408a8467ca3840f4860ce0bd8501f69f73ebfbe68e30a2dad278f416eb57`  
		Last Modified: Thu, 05 Nov 2026 18:41:59 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e05a49a58a1f44298000921fc479e4b97999967cd881a53197b496aac0f2351`  
		Last Modified: Thu, 05 Nov 2026 18:42:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d2d15f40000507697328f4883aa86b985872cb614e90c4d30de891c839e63e`  
		Last Modified: Thu, 05 Nov 2026 18:42:00 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39922e7b2766bd3f2517b710a9104b054a2dcbe415e6511e829520243372647`  
		Last Modified: Thu, 05 Nov 2026 18:42:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:f7b3ef21f3ca446fc3aa15a1fc220b038bf9d62b7c4dc25c479a2b651be358d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb175a0b9e351f1d19a2d97b751bf482d6afe0d32f51f4ec9f22065a1d19497b`

```dockerfile
```

-	Layers:
	-	`sha256:1b67ef169d710ebd81cd7310f1ff4343b52c9b2e8e27a3a84ed4da1e41b4bd73`  
		Last Modified: Thu, 05 Nov 2026 18:41:58 GMT  
		Size: 39.7 KB (39745 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:bdeb35fc13570f8fe93ae659834c08244bda87968acffa0f92f106899bc5ae5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110854450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2320535aab5807b0b8ca7f77887c6fe0a796014a8f223b2d7b4da801e526caf`
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
# Thu, 05 Nov 2026 18:36:51 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:36:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:36:51 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:36:51 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:36:51 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:36:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:39:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:39:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:39:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:39:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:39:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:39:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:39:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:39:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:39:45 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:39:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:39:45 GMT
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
	-	`sha256:553d174ecd6a611cca678114a5cf4cd5009354295203707ec378868221cab19c`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185122da45474883d7a6fcef14b03c607c2734b4216b0ee74729da6f5e442001`  
		Last Modified: Thu, 05 Nov 2026 18:40:01 GMT  
		Size: 106.7 MB (106693498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c67ce9c4f4625f31735271be8271e1610fe5f28f37a92e743992a3f2d44b861`  
		Last Modified: Thu, 05 Nov 2026 18:39:59 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8bdf6a5a06386737a80607be228ab9ac1169a630402a7cf1eeab8a6d5fdaef`  
		Last Modified: Thu, 05 Nov 2026 18:40:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ee8014d91ebe67089b0675fab6577533332b03cfb023656f512c98254d8a76`  
		Last Modified: Thu, 05 Nov 2026 18:40:00 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a84aaad9db010bac9b9c879f8c004020fd99d8ceb3962023a0b7bc19507d6d8`  
		Last Modified: Thu, 05 Nov 2026 18:40:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:42dcd401a46c29c62f73ae7685fe2908c949f3f6edf78ba4883472776aa14d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5319a0415cb40ad03db14b987545a89553b68d56e2add39a5bbe34ff7ca06091`

```dockerfile
```

-	Layers:
	-	`sha256:76caedde6a98d180806fcf29fec42d14dba4d99870f63d63541ecdc4db7c1bba`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 615.4 KB (615406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da359fe6b809474117d1d2fa6e202722a49c3db58e993f95e6cc7a06fbc4551`  
		Last Modified: Thu, 05 Nov 2026 18:39:58 GMT  
		Size: 40.0 KB (39961 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ea33c8c422a4caf7b541ca5c77b6afa607bf36e43e7f99211d59c2e46c68531b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118900377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc0b129c5308975e991d5e2721e9d66f3c5d933329d66852d1edffce926da3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:01:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 19:01:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 19:01:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 19:01:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:01:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:01:05 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 19:01:05 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 19:01:05 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 19:01:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 19:03:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 19:03:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 19:03:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 19:03:35 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 19:03:35 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 19:03:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:03:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 19:03:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:03:35 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 19:03:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 19:03:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a54c8e1122c5caed814ee4e69bb5c96e9a6ef532423b896504ce49509b30c55`  
		Last Modified: Thu, 05 Nov 2026 19:03:50 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753f292b4f1dc7d1dc3a39d49f1d70264de5da4f08ef49193c64a7d303947637`  
		Last Modified: Thu, 05 Nov 2026 19:03:50 GMT  
		Size: 852.1 KB (852056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9031a2ba213751e5d9dd63b4715796d234eb66246a0d01f57861712c6ba89ac`  
		Last Modified: Thu, 05 Nov 2026 19:03:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196411f9586c6a150708b81dd62db723727b93b2ed80e4eb23759401f9552250`  
		Last Modified: Thu, 05 Nov 2026 19:03:53 GMT  
		Size: 113.8 MB (113829025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd83861cb468423121e98cc847467d37583c97047deaa787348ef844d358401a`  
		Last Modified: Thu, 05 Nov 2026 19:03:51 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5af18a147ff2914cd538b5a31adb85d6133a3f133e634da2b487a4bd3a813e7`  
		Last Modified: Thu, 05 Nov 2026 19:03:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61a8447bf8d11ee4ab01aa06f40580b08dd26ff23899e71efc2f1cf7f9cfb6f`  
		Last Modified: Thu, 05 Nov 2026 19:03:52 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9810860e94c3d519ce2f61e22c094f9c10cc34b95e66378915eabf9766ad03`  
		Last Modified: Thu, 05 Nov 2026 19:03:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:9fe14cc388d8355fc9b0b281d68baea94ed216d04d7bb77ae71288c1b5cb99bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d14b590aefec3b102fc78bbed338782266cacc18c65405d4ff368c1ceedd17`

```dockerfile
```

-	Layers:
	-	`sha256:f505618571f816508baef6e405c84ac33eaaa90e9d9abaf6dcfcdc852c3a8fa0`  
		Last Modified: Thu, 05 Nov 2026 19:03:50 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8a434f93d10d6a03e508296d4715bdef3ca17048dea94e491b8db6c4c5e5565`  
		Last Modified: Thu, 05 Nov 2026 19:03:50 GMT  
		Size: 40.0 KB (39990 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:5d8f54bc7dc2071b2abd525c4f80caf8abffcdaaac6f098570055798c8c2bb6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128042414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae09cb46d8659e41d93420f853cde983f363e31ac7ffa62b5556049df6e07d92`
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
# Thu, 05 Nov 2026 18:24:51 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:24:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:24:51 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:24:51 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:24:51 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:24:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:27:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:27:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:27:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:27:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:27:41 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:27:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:27:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:27:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:27:41 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:27:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:27:41 GMT
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
	-	`sha256:8fd1fb68a5697c52c048f43bfda1aac1abb04c94d646b12954ef555ca98f9ea2`  
		Last Modified: Thu, 05 Nov 2026 18:27:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709d12c11f77007c4791f3eb9d764e6a1453e9f1e43705da1b5205f9fcbe327b`  
		Last Modified: Thu, 05 Nov 2026 18:28:02 GMT  
		Size: 123.5 MB (123465339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cee754ce7410b538386a858ed39aa6e2d00a7ede03fe77bac3c2250e9bde90`  
		Last Modified: Thu, 05 Nov 2026 18:28:00 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4039b530e10b51c31c68aeab0fd083f99f84f64743dd9a2c4ac7e1e9dc340f9c`  
		Last Modified: Thu, 05 Nov 2026 18:28:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d50ba37d91628c7e40a8eeb7a79a5d02011e0fc9ccd699bcbe448a71775baf`  
		Last Modified: Thu, 05 Nov 2026 18:28:00 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63894587a9f19fd33a4cdb81b330e2bdb03de3923c23cd2c86d43909cf981aff`  
		Last Modified: Thu, 05 Nov 2026 18:28:01 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:b2176802c7e540ef518f2a0082c84be48dc8cfa792c0ce4801f0756cf45e62cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df920c0fc4c37ba4ad508cbee72c6c9b7e2e92aabc33b7ba97d5c5bd981a04f`

```dockerfile
```

-	Layers:
	-	`sha256:b0f60921189e9039236af38c4654e5e5478d709e62b1f8cbf98543e50be7a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:27:59 GMT  
		Size: 616.0 KB (616021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde04a2c3c119a6a7d83596c4fb69b835b0c2d86a29cc483c6da551c0dfc2081`  
		Last Modified: Thu, 05 Nov 2026 18:27:59 GMT  
		Size: 39.8 KB (39786 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:fbb3301d2f6af33a75b9c795a13afb55b43d371ce971ca4839d7c03ae0df71e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124164511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8150a95233a6543fd77e7ace63fb1b3b97178cc7ea0ec29e2e787fb9dcd3c3b0`
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
ENV PG_MAJOR=19
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_VERSION=19rc1
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 22 Oct 2026 12:40:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 12:48:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 12:48:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 12:48:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 12:48:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 22 Oct 2026 12:48:58 GMT
VOLUME [/var/lib/postgresql]
# Thu, 22 Oct 2026 12:48:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 12:49:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 12:49:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 12:49:00 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 12:49:00 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 12:49:00 GMT
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
	-	`sha256:296ee9f427f9f73abb6306eb4fcdb8265c3d855f7fe68d6e8ce48123c2d0fa1a`  
		Last Modified: Thu, 22 Oct 2026 12:50:02 GMT  
		Size: 119.5 MB (119457780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57757adcb477827fe302601404943893f94816f6b115ba12fe76c3aa0eb353d2`  
		Last Modified: Thu, 22 Oct 2026 12:49:59 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c739d31e5784f65f14a58f4615dcf5427ec93fa9d809d982c023843f213b48c6`  
		Last Modified: Thu, 22 Oct 2026 12:49:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298976c0c3eb91bb2ed330b6fcede2fdadba5890a36f30643b521fd22b260afe`  
		Last Modified: Thu, 22 Oct 2026 12:49:59 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71d4b2a3dbf9f6032c2a761536caaf567f863c334b60a35505d249d1f682ecd`  
		Last Modified: Thu, 22 Oct 2026 12:50:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:addda5bd9ffd78d5cc962f347a6c9bb4974fe3aa0b769cac988979d79ff2ba00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2211451feccb894b63f78ec057973736ac9fb43d35ea6a9b0411cd94fd34be7`

```dockerfile
```

-	Layers:
	-	`sha256:2e2a6e221b53f990621c2543d79335ab6b1fe6ed7ab13bc7b209c20ba5957cf6`  
		Last Modified: Thu, 22 Oct 2026 12:49:58 GMT  
		Size: 613.7 KB (613745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5a225f7df25792504d5426d81c67f590f4fbbd13bd7ee090faea30fc7f508fb`  
		Last Modified: Thu, 22 Oct 2026 12:49:58 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:f07c7f5f4e3d6a7b60ad75c6aed894e8710d241d75f8e0df120b9ac6d468055a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123757986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc61e831d1dc7c7beb2249786ed27bccf1b17c476baf304f90ad162087238e25`
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
# Sun, 25 Oct 2026 22:42:02 GMT
ENV LANG=en_US.utf8
# Sun, 25 Oct 2026 22:42:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 25 Oct 2026 22:42:02 GMT
ENV PG_MAJOR=19
# Sun, 25 Oct 2026 22:42:02 GMT
ENV PG_VERSION=19rc1
# Sun, 25 Oct 2026 22:42:02 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Sun, 25 Oct 2026 22:42:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 25 Oct 2026 23:39:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 25 Oct 2026 23:39:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 25 Oct 2026 23:39:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 25 Oct 2026 23:39:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sun, 25 Oct 2026 23:39:26 GMT
VOLUME [/var/lib/postgresql]
# Sun, 25 Oct 2026 23:39:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 23:39:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 25 Oct 2026 23:39:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 25 Oct 2026 23:39:26 GMT
STOPSIGNAL SIGINT
# Sun, 25 Oct 2026 23:39:26 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 25 Oct 2026 23:39:26 GMT
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
	-	`sha256:a14b1d564aed12c324f2bd92666f5305f0a223325c2e0c3fb29a3ea19067cfc3`  
		Last Modified: Sun, 25 Oct 2026 23:42:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f2fbfbd228e1c7e7a4cd723ac1c018c41a0e21a9078ba846693eb9972bafc0`  
		Last Modified: Sun, 25 Oct 2026 23:43:03 GMT  
		Size: 119.3 MB (119303918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38ced4c789d74fe7dee593e686e4aa27459768078d779e38c1d066bcd8478c1`  
		Last Modified: Sun, 25 Oct 2026 23:42:46 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186634cd8a5f072d7c90b68ab129aafc6a2f44e802aed0dee3ac639cf9323aa7`  
		Last Modified: Sun, 25 Oct 2026 23:42:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba4bdbd0ade3ef6f1fb7064c69a67decdac2a3c9ca0b64664be9daef2703223`  
		Last Modified: Sun, 25 Oct 2026 23:42:46 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4789d70da7b4adf81e3b1e48b1eaf92919e660550ea676e43fd1d4f6aabe79`  
		Last Modified: Sun, 25 Oct 2026 23:42:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:2591e48da607cff295d44800f09efdd67347ad8e0c23cbe230d400231f2b64dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8402a6deb52098a0f0e69007bed971996bef30094480932add5d216f18df63`

```dockerfile
```

-	Layers:
	-	`sha256:44af11a1353eddcb75fb45859295a29e1efef12bb2f3df27df0662266ab224b2`  
		Last Modified: Sun, 25 Oct 2026 23:42:45 GMT  
		Size: 615.4 KB (615403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bc87451038789b789a15e1143b7b0bd9223df910d0442be1e4b3968672e8e34`  
		Last Modified: Sun, 25 Oct 2026 23:42:45 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:7a0871bba562a9a454aba66ab6fab7143ec6ef6064734141bb5273ebd48ee074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127672105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec89a19858790caee73ba544cc2b359cf8083095c66eb5faa7f241d9d961d354`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:21 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:52:25 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:52:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:52:25 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:52:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:52:25 GMT
ENV PG_MAJOR=19
# Thu, 05 Nov 2026 18:52:25 GMT
ENV PG_VERSION=19rc1
# Thu, 05 Nov 2026 18:52:25 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Thu, 05 Nov 2026 18:52:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:57:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:57:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:57:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:57:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 05 Nov 2026 18:57:19 GMT
VOLUME [/var/lib/postgresql]
# Thu, 05 Nov 2026 18:57:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:57:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:57:19 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:57:19 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:57:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8278066a1d742bcfcdf91e67148e905d1862643186ce235d16134ea374313b65`  
		Last Modified: Thu, 05 Nov 2026 18:57:50 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be88abdefdd1e921db7b710189a3cf3d976e3c2073121d31e0daf409a4de0034`  
		Last Modified: Thu, 05 Nov 2026 18:57:50 GMT  
		Size: 874.2 KB (874217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36050d3656a303414e8e2dafc9941db7fe95034a9afd311066bcc279e132c76d`  
		Last Modified: Thu, 05 Nov 2026 18:57:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c6a3cdf63380caf4e1592fc64130ea9cc72286cebd59b334eedb35473fef9`  
		Last Modified: Thu, 05 Nov 2026 18:57:52 GMT  
		Size: 123.0 MB (123048521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d5b5cb02edfb2acc1d1bc3d6f0488583f05ce8194fdf0ae2bea2153e789bee`  
		Last Modified: Thu, 05 Nov 2026 18:57:51 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2571766d9c80bfd424430b135ce3b1a9d2369cc8e9f2587de57ef3769ff53e`  
		Last Modified: Thu, 05 Nov 2026 18:57:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5353c87507196a98f6c82aa8c633475dcc8dd0ce00c4c4b5b28840926217c0be`  
		Last Modified: Thu, 05 Nov 2026 18:57:51 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7869d14821067ecac9a5d48520b6e9a01d877599f8e3ed94ac7b4c4dbcf04f2`  
		Last Modified: Thu, 05 Nov 2026 18:57:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:05e92ab76c65f17938f8862ce955dafc53b987ebf6ab56e3f45bcae9bc3223e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3306c85a53f90c1db6de28cad64048401d21d56cf2e0df79cf5b65897655771f`

```dockerfile
```

-	Layers:
	-	`sha256:42dd40ed8e01a3b9ac8309ff80ae3ccad041f51415da507e5ea651fb3cd2f407`  
		Last Modified: Thu, 05 Nov 2026 18:57:50 GMT  
		Size: 615.4 KB (615385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a935ed87e57ece0754809cde168cba1adfed01e44243a17706a5d395ab936090`  
		Last Modified: Thu, 05 Nov 2026 18:57:50 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json
