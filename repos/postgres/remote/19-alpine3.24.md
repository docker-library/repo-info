## `postgres:19-alpine3.24`

```console
$ docker pull postgres@sha256:cac45fb483caee3668946088a1c0532db89d5285c28dbfeac889b4068296e06f
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

### `postgres:19-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:8e81a484097154610d0b72f2fd1b70e1f8c31fd6b743b6d0da8b2a8c1ab2ea1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123765443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b6eb1a664bf9336a59c321a0b5ab235e5f96f3e58c799d63aae67859bdafdd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 00:38:08 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:38:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_VERSION=19.0
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Fri, 20 Nov 2026 00:38:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:40:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:40:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:40:36 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:40:36 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:40:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:40:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:40:36 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:40:36 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:40:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5118d6b96a64760bcbb9c11d49eff207066400a91d57e64056e4db5bba505c95`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6ff8b75d18a2274cd5fa097f322a0d360294c24b36ae70e6c4efc5ea0a8272`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 901.1 KB (901103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e24e5e5f1c4cd91d26388668edf3ca61324c442700efa5f50d64213260a8901`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e342b76c44203cf702c0d0165b6ed786e9b86a9aac25ab0337df5a70896a129`  
		Last Modified: Fri, 20 Nov 2026 00:40:56 GMT  
		Size: 119.0 MB (118982077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8b0579afa39df681ddacd70748d8e0503e0dbc56411c8e2582a4c48b737180`  
		Last Modified: Fri, 20 Nov 2026 00:40:54 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0474f5d5c21e5e547318b2224243dc4c42e331bca3da1b98e2178d9b5b263cf`  
		Last Modified: Fri, 20 Nov 2026 00:40:54 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361b470b601cf8a9aa8c64e03dfcba094c46cee598d6e35e45f1bb7dd1d5dff8`  
		Last Modified: Fri, 20 Nov 2026 00:40:55 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:6f5a7b7ffc4f3e682c15edde6bc826031bd73d806851d708a20201e50b7b7f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.6 KB (656607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49554d26398a67b15b47bacd42c35ddfd47c257f205bba02a36801c45b5b16d`

```dockerfile
```

-	Layers:
	-	`sha256:ecdfee4e543a9a6262f54540a4a2f4a77c92209c9f90c9083173dae26e8bac20`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 617.3 KB (617260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:021bd93b47cb797602f7f88f740d931317175777b397059823c3356b19ec3572`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 39.3 KB (39347 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:9c09110753c5c02535dcc483d1ad8ede5a9fec4b314f53123807b0df5e88b40d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119596412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c21c58b666400fb4f30d6e7e82dd7e9e0f0d9de01059ef14e3ee9abfa89da2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 00:37:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Fri, 20 Nov 2026 00:37:16 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:37:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:37:16 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:37:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:37:16 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:37:16 GMT
ENV PG_VERSION=19.0
# Fri, 20 Nov 2026 00:37:16 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Fri, 20 Nov 2026 00:37:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:40:16 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:40:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:40:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:40:16 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:40:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:40:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:40:16 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:40:16 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:40:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e4a00f980dc39ff5b6a75d14108217cc14f68a4b9a0a4c570ec13af4be8648`  
		Last Modified: Fri, 20 Nov 2026 00:40:30 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a794724efec9fa655445a6bafbc762b0d660b6ba3b0256949a57049f679319`  
		Last Modified: Fri, 20 Nov 2026 00:40:30 GMT  
		Size: 865.4 KB (865403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd39a1d71fa72eb5627e4cefb6375f8e71c68fa5342a093a180aacd689f01f9`  
		Last Modified: Fri, 20 Nov 2026 00:40:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85aa8d83ed2fc861b3e93a5ad4e461e9e951985e70af40b95c385dde10c98f81`  
		Last Modified: Fri, 20 Nov 2026 00:40:32 GMT  
		Size: 115.1 MB (115144018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ec60ec54abad5f72098164364a4629d528cf553b3c097aa2fabcfb14485b3f`  
		Last Modified: Fri, 20 Nov 2026 00:40:31 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7b0d54d814e73c698e267663b114f17281330933983a41f214de83dd311ebf`  
		Last Modified: Fri, 20 Nov 2026 00:40:31 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd44d602a054c166605c4056057a041f5d5d8cc9a394622ce671e0f757bfc22f`  
		Last Modified: Fri, 20 Nov 2026 00:40:31 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:399ee1b9e8881cfc6e69357209b8a73a209714be5d8104f4f8b572b3f7ccf92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 KB (39293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb337017f119cc63babe0ec2c597926529a15a2f1308dce6754272c6cdaf867`

```dockerfile
```

-	Layers:
	-	`sha256:2d26e825e50f1251a82fcff08f4621cdf79c5e41f009f3caf93be478448606b3`  
		Last Modified: Fri, 20 Nov 2026 00:40:30 GMT  
		Size: 39.3 KB (39293 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b42515f535420f6fc5913adb22ed5e7fe18b7eb362523375d6168fd64e786a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112952091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce66e96247e2d30560ec2b84619aac86ed1ff601f24568123ff179de35833303`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 00:40:53 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Fri, 20 Nov 2026 00:40:56 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:40:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:40:56 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:40:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:40:56 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:40:56 GMT
ENV PG_VERSION=19.0
# Fri, 20 Nov 2026 00:40:56 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Fri, 20 Nov 2026 00:40:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:43:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:43:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:43:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:43:54 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:43:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:43:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:43:54 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:43:54 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:43:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ececf998615f40554c4da58fd3ef1072c5fd57d8afe72f033025901978d4f`  
		Last Modified: Fri, 20 Nov 2026 00:44:08 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1471bdad08e9b8d39aea25e2cada3a11fc5f1d48121bb7fe990ca9ba9ec846`  
		Last Modified: Fri, 20 Nov 2026 00:44:08 GMT  
		Size: 865.4 KB (865411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1d61e7ae786a76eeb9bd2b2e0981675ab1d0eb84256c130d3fa2cdb2bb479b`  
		Last Modified: Fri, 20 Nov 2026 00:44:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b1a55102a7299a16a39c76bc7ae6f24f340edbccdfc6de08e0b8cbafad78a9`  
		Last Modified: Fri, 20 Nov 2026 00:44:11 GMT  
		Size: 108.8 MB (108790362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8aa36c546ef41b5333c5ea7a7f3bf273c57c3bfba2440e9c3462b1825a8ae9`  
		Last Modified: Fri, 20 Nov 2026 00:44:09 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c816eb98b2e1533b950d9171a02acb3007c38ecf2a56242f5a2be4204d1c084`  
		Last Modified: Fri, 20 Nov 2026 00:44:09 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0b563cf8b3a9eb71709b681411df56d2294ddb1c577b4fa8b632e21d2a8905`  
		Last Modified: Fri, 20 Nov 2026 00:44:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:1acf4a545b19d812f4b17b0fc283cac144f3c237df97dce2782919988c82fa07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.2 KB (656170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0e93f1d15014db89fe257367fed6847802979d02cd2ac68356c8cca40141a9`

```dockerfile
```

-	Layers:
	-	`sha256:586ce451450b83b0f8cea529cbeb0ed92268daddd74eb3bd90186f7a2860e9c7`  
		Last Modified: Fri, 20 Nov 2026 00:44:08 GMT  
		Size: 616.7 KB (616662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3546f2346897783884c4aed03dbb8e1eb4293b4380adafe4f767ad69c4693bc`  
		Last Modified: Fri, 20 Nov 2026 00:44:08 GMT  
		Size: 39.5 KB (39508 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8de50f3aa8f3da32960999886322bb746614951eed44304ea838b63430bb808a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121845947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085329dbeb20e68f3eb57a46c47b3b38f9bf912163897e64d1a6dd6fab9c31d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 00:38:09 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:38:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:38:12 GMT
ENV PG_VERSION=19.0
# Fri, 20 Nov 2026 00:38:12 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Fri, 20 Nov 2026 00:38:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:40:44 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:40:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:40:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:40:45 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:40:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:40:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:40:45 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:40:45 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:40:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5941bb6cacfe118de1f00cd8f1dc8d2063da174b2e8ad7f4d284d2e338f940b2`  
		Last Modified: Fri, 20 Nov 2026 00:41:00 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec285b4ed2a9cb2282be42c6993f77fd73e389f04a1c77399d474c6dcb3b29f0`  
		Last Modified: Fri, 20 Nov 2026 00:41:01 GMT  
		Size: 852.8 KB (852808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e0dd60ccaaec8e0af5e0a49ea0ba4b41ca84ccfb5c98e79878f988f0f5a8c8`  
		Last Modified: Fri, 20 Nov 2026 00:41:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6464d42a1c5a7da1f0fcb2bbbd57a94dce45e56c1dba371398eeb86b8c0e17f`  
		Last Modified: Fri, 20 Nov 2026 00:41:03 GMT  
		Size: 116.8 MB (116773951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d506fa5ccc19f9d9bde0a9d6fc3f7e5f83c94232bacae9985b34695e868a2b88`  
		Last Modified: Fri, 20 Nov 2026 00:41:02 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df62d482aebd3f8328b27889be3003751bd0f173e7e76906a96f24d414b60231`  
		Last Modified: Fri, 20 Nov 2026 00:41:02 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0465ab95dfa111d05d594791f4471cfae92e72f41a5b04940d41e31a369e762f`  
		Last Modified: Fri, 20 Nov 2026 00:41:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:492a55d4fd1c374df1057a76195a4b9d779fc89ac7e6e9434baccd5ea5fb6c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.2 KB (656240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa5ec1ed5a7546c0fad0ccc610be2e0d7dfebd53c0ae63c066a9b0a42f40f57`

```dockerfile
```

-	Layers:
	-	`sha256:17f21c1127057bde16303fe58b72b0b135cc953155a69f9b98d8c9f23e4adc2b`  
		Last Modified: Fri, 20 Nov 2026 00:41:00 GMT  
		Size: 616.7 KB (616690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e77838f87c62d8439334f19913a18ff28fdad8c66d0743275721e4284982159a`  
		Last Modified: Fri, 20 Nov 2026 00:41:01 GMT  
		Size: 39.5 KB (39550 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:b13f1941cef69ebbd67354088a7c110fa85af3e7ada9fff86f216d3959084c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130503204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041294366e973a3b0414cc5b33421a4565ecab5a93f2a586c971786df2acc707`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 00:38:07 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:38:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_VERSION=19.0
# Fri, 20 Nov 2026 00:38:10 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Fri, 20 Nov 2026 00:38:10 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:40:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:40:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:40:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:40:58 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:40:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:40:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:40:58 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:40:58 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:40:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069cee7c0605bf049f10b3d596714f88c05f3699e6f20874f758fb9ba9e59559`  
		Last Modified: Fri, 20 Nov 2026 00:41:15 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198d6b3128ef6bad35bf7e566f6fd9e7ffd1c2fc94eccbc969f17a0b4494a86b`  
		Last Modified: Fri, 20 Nov 2026 00:41:15 GMT  
		Size: 869.8 KB (869822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e24e5e5f1c4cd91d26388668edf3ca61324c442700efa5f50d64213260a8901`  
		Last Modified: Fri, 20 Nov 2026 00:40:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78fc701b799865655c488f33a29a12b2a12c019ae2511cfb32d500665e7e801`  
		Last Modified: Fri, 20 Nov 2026 00:41:18 GMT  
		Size: 125.9 MB (125924432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9f448595641d1bd24ab53bca2798277ef42f9269a4bd5f8a7bcbff0cab610b`  
		Last Modified: Fri, 20 Nov 2026 00:41:16 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23fb4f782bb869ad0845c87178b4f336c92cb3616c9b90c9cb677bb413301f1`  
		Last Modified: Fri, 20 Nov 2026 00:41:16 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f5212f14c9477720a525dc89473a621f8a211b04296c04fb544112bdfdecae`  
		Last Modified: Fri, 20 Nov 2026 00:41:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:a1276e26ab1325e2596a4157bda86517a5ef44072bb49c70662cc79d999cd3c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.5 KB (656520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7422258b97868db00e04779870b520352889e2fad30329b2cc188f527347c09c`

```dockerfile
```

-	Layers:
	-	`sha256:2b2dabf55096ec479043afd129a0ca2efb386c921b6a917eaee76029dfa88546`  
		Last Modified: Fri, 20 Nov 2026 00:41:15 GMT  
		Size: 617.2 KB (617225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76033c54fb252eb01441995e687ab536d9331ad9c3f0d763ff5bd59a0ba5dbb8`  
		Last Modified: Fri, 20 Nov 2026 00:41:15 GMT  
		Size: 39.3 KB (39295 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:7a00539a470570dadb93927f35617097b3d044dbd654fcd0de3eccce8c8ffc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126686089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732c671bd93a2f317b8ab44325cdd2f3ecff95b27e186eb5889a4e98861e80d6`
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
ENV PG_VERSION=19.0
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Wed, 18 Nov 2026 21:29:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 02:13:28 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 02:13:29 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 02:13:29 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 02:13:29 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 02:13:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 02:13:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 02:13:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 02:13:31 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 02:13:31 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 02:13:31 GMT
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
	-	`sha256:46ba5f4962ab434283db912fcefda719c61e48bd2269264aaa93f596663f8e1d`  
		Last Modified: Fri, 20 Nov 2026 02:14:19 GMT  
		Size: 122.0 MB (121977572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aba34da13be0614543003fdce1c78bf5b5d7538f9c67126e649428a69cefded`  
		Last Modified: Fri, 20 Nov 2026 02:14:16 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e31cf220b569532e18e3329cf0ddeed38742e77ff0de110696b002e0c9494f`  
		Last Modified: Fri, 20 Nov 2026 02:14:16 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb4b133e54434a4f9c62b11e56e78978493b4bc0b17ff03b3682b8ffc85eb30`  
		Last Modified: Fri, 20 Nov 2026 02:14:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:9ca62884ba1e55b274d0cb37122b4f8555abd2e60c1db005b961e06962c8d681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.4 KB (654406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69f606fa527cf79e3e12d37d28b3da9cd09b143e3a28e5464054f44d4cdab25`

```dockerfile
```

-	Layers:
	-	`sha256:9b5c8b42cde45f6ff1ef7bc20166bc283ad181c9d0b34a07d3932c3ffa4b5036`  
		Last Modified: Fri, 20 Nov 2026 02:14:16 GMT  
		Size: 615.0 KB (614993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec88d930729cb2d47bbc38322ea7316eab1d5d6e22de1d160fcaa6e0ceee828`  
		Last Modified: Fri, 20 Nov 2026 02:14:16 GMT  
		Size: 39.4 KB (39413 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:09b22cec395482b79904a06235649052ea543a54487382bc1f794f72ab660890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126093085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e1907d3417e62e3eac308c313b8cd78784ecc1a0aa6f26f9ea21ac3b83331a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Sat, 21 Nov 2026 14:21:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Sat, 21 Nov 2026 14:21:24 GMT
ENV GOSU_VERSION=1.20
# Sat, 21 Nov 2026 14:21:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 21 Nov 2026 14:21:24 GMT
ENV LANG=en_US.utf8
# Sat, 21 Nov 2026 14:21:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 21 Nov 2026 14:21:25 GMT
ENV PG_MAJOR=19
# Sat, 21 Nov 2026 14:21:25 GMT
ENV PG_VERSION=19.0
# Sat, 21 Nov 2026 14:21:25 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Sat, 21 Nov 2026 14:21:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 23 Nov 2026 15:47:24 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 23 Nov 2026 15:47:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 23 Nov 2026 15:47:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Mon, 23 Nov 2026 15:47:25 GMT
VOLUME [/var/lib/postgresql]
# Mon, 23 Nov 2026 15:47:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 15:47:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 23 Nov 2026 15:47:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 15:47:25 GMT
STOPSIGNAL SIGINT
# Mon, 23 Nov 2026 15:47:25 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 23 Nov 2026 15:47:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872f5b27746219283e0f0f8bce7523c7ad239136aabf2ed30a20fbf9fdfbc19a`  
		Last Modified: Sat, 21 Nov 2026 15:18:32 GMT  
		Size: 999.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e02a62cd79d5f4341b1c36382e127a1fb1afbc22ab3f4fbe443ede66522a3f`  
		Last Modified: Sat, 21 Nov 2026 15:18:33 GMT  
		Size: 845.5 KB (845503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f83ed94146ada98d5516f51fd6b39e77cdfdd170b0a7b2e5a41ad9a61c86e67`  
		Last Modified: Sat, 21 Nov 2026 15:18:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ea471415ad0a3949f9ad25022f423c8369409987bd04d3f7a7465ecce1e1d9`  
		Last Modified: Mon, 23 Nov 2026 15:50:56 GMT  
		Size: 121.6 MB (121638361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f478b193a503517528669569f9577e47e7392f998546c019f7a6a6e402e378`  
		Last Modified: Mon, 23 Nov 2026 15:50:37 GMT  
		Size: 21.2 KB (21198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e941c25dee2ba0e3183ddeb7e1fa051be5fd9d1f56989ad5cf41bb2126f690`  
		Last Modified: Mon, 23 Nov 2026 15:50:37 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e66c98a2be09182c8a2331ed805e9d65d941170a74d6bb372256aeeb61a3190`  
		Last Modified: Mon, 23 Nov 2026 15:50:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:e2739febe7b00030c2db517dad6a1a30d932cf49a08f680ac124acaf2c5c3be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d422b4cc7ee40373acfca0d263832667978191442d7d27e338b2a52148d93aa6`

```dockerfile
```

-	Layers:
	-	`sha256:1b39349b766c863768325319d5b7f3c3b168cbb980d71991c39b8f2c88155acc`  
		Last Modified: Mon, 23 Nov 2026 15:50:36 GMT  
		Size: 616.7 KB (616651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f86253e01d769bb8f09b29e5b66e96418087ef0cd46c4f78d420326644ddd2d0`  
		Last Modified: Mon, 23 Nov 2026 15:50:36 GMT  
		Size: 39.4 KB (39413 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:7243932c31856cdc7a6607f6b91eef4d21ec41aff2cd34b4f696a29c29911270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130075482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745ddb44969d72e01d0a7187da844187bd17d16589ce975cc84ef34fec2d7730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:53:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 22:53:59 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 22:53:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 22:53:59 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 22:54:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 22:54:01 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 22:54:01 GMT
ENV PG_VERSION=19.0
# Wed, 18 Nov 2026 22:54:01 GMT
ENV PG_SHA256=a89fd70efbad6a08c7dbed8d4872e3af30170d9e5ca9dc7906523be95b4e692d
# Wed, 18 Nov 2026 22:54:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 20 Nov 2026 00:40:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:40:38 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:40:38 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:40:38 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:40:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:40:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:40:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:40:38 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:40:38 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:40:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e36a2f86a7223146d7ca8c04bada1d54487d8f38014bd1a7f30507d45800f8`  
		Last Modified: Wed, 18 Nov 2026 23:01:24 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1732dcfe2f8a922b6da6b53247f02bc92f9e2843f4e54cf6a2dd64a601940157`  
		Last Modified: Wed, 18 Nov 2026 23:01:24 GMT  
		Size: 875.4 KB (875355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3996b359425f8a88d3ed38b9d78198a831df2770e92b41b1a8011d276c6897`  
		Last Modified: Wed, 18 Nov 2026 23:01:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ab12f1a5ff3c51cbb8b5829b85ef96f253dc7882179f93b324e5adfd14032a`  
		Last Modified: Fri, 20 Nov 2026 00:41:06 GMT  
		Size: 125.5 MB (125450867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5021e04b3883292072f9d20f6cffc941ecd1bb9014e585c7693cfaefdb5ade73`  
		Last Modified: Fri, 20 Nov 2026 00:41:03 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404196c84792bb03f29b1ba9cf2b021ab4ab763411f7cd8f6a20db34ca3d0591`  
		Last Modified: Fri, 20 Nov 2026 00:41:03 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba96c375342eb83e41041bd39b0560e792a36d637ff589946e3598c44d96aa6`  
		Last Modified: Fri, 20 Nov 2026 00:41:03 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:c79336ba6166358897ce6ea6f8154a6a397adbd18ec1b7c57899680a51cf389c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.0 KB (655956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f9db29470e13296658448e205de695ff0042d4c93bc33e7bce0a1e0619f4e4`

```dockerfile
```

-	Layers:
	-	`sha256:28f24cb2d478d76ae30b3f3ba45900f50f6b99147d302b71777e98bbbe0c47e4`  
		Last Modified: Fri, 20 Nov 2026 00:41:03 GMT  
		Size: 616.6 KB (616609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5a48a576b20e81bb77ea7b0eb14baebbde512f74a678b3477ef2086f752d292`  
		Last Modified: Fri, 20 Nov 2026 00:41:04 GMT  
		Size: 39.3 KB (39347 bytes)  
		MIME: application/vnd.in-toto+json
