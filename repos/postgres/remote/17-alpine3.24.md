## `postgres:17-alpine3.24`

```console
$ docker pull postgres@sha256:d3244e8ce3f165ee3c93d9c4a4b1d0fe48b3a89e2287b717fdcbbde92d405065
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

### `postgres:17-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:005c5c37db96c1e6652a79ea31f9886402fba81ac95dc2db897739121dd7f8f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117362611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b75136145ddabf3d9a4b69660402082de7c56b734cfe50555b0674774dd742a`
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
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:52:19 GMT
ENV PG_VERSION=17.12
# Thu, 12 Nov 2026 20:52:19 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 12 Nov 2026 20:52:19 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:58:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:58:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:58:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:58:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:58:18 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:58:18 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:58:18 GMT
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
	-	`sha256:80a6d6821c69b03ddb7d562b65cc77f340611fb64866d428665ed9aa8bc953d2`  
		Last Modified: Thu, 12 Nov 2026 20:58:36 GMT  
		Size: 112.6 MB (112591258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2c9b6e22420d1ac5605186b799d2554d0ca8819a2f68e3ee622c515a7e84e3`  
		Last Modified: Thu, 12 Nov 2026 20:58:33 GMT  
		Size: 10.0 KB (9997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896471a54bfa854cb0b775ee9d1ad9366a8b2a7e1003ee1f0e05ca33baf9fac6`  
		Last Modified: Thu, 12 Nov 2026 20:58:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3f31804c8b63852e96676a01e2fa3d7582372f5cb65b71566608cdf03c8403`  
		Last Modified: Thu, 12 Nov 2026 20:58:33 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757a8b4a37a70381dd61367f97d9bfe6628ce667e518a8d3a73cb0dd23e6b3d2`  
		Last Modified: Thu, 12 Nov 2026 20:58:35 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ddf073ee21f6e14cfec64e248664a7d6db6ca59685fce7d9ea9de64553b306`  
		Last Modified: Thu, 12 Nov 2026 20:58:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:35fcff3c4df0f51a2472c4fc3bf6af6019430d80c80ea438274c966352e81c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 KB (639723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75fa067a5465a66e4237be5e7613e433756bb9a43e5419d5b38d221fcd73525`

```dockerfile
```

-	Layers:
	-	`sha256:c169a652c10b75cd12dea3a8f11dbbab9f77edbc8a0be1782934af48e267617a`  
		Last Modified: Thu, 12 Nov 2026 20:58:33 GMT  
		Size: 598.0 KB (598036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e28e400aeb38b5e1c26e7172ba26fd2c1bd6ee8bcb0725d4cc02472a7227987`  
		Last Modified: Thu, 12 Nov 2026 20:58:33 GMT  
		Size: 41.7 KB (41687 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:91219fb8460ad6f922e63c9cfa78c2b7745e41082d69588e49a0dda995d8791a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113536001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d15bb7928edc149a0f6af47b1dcbf7d30a4c0081cff283e2698c7c7d0e27578`
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
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:52:43 GMT
ENV PG_VERSION=17.12
# Thu, 12 Nov 2026 20:52:43 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 12 Nov 2026 20:52:43 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:59:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:35 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:35 GMT
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
	-	`sha256:6d13b26ab2c29bb408429210aa3ddb062f08dca97a514cd8ce7724025fba6160`  
		Last Modified: Thu, 12 Nov 2026 20:59:50 GMT  
		Size: 109.1 MB (109095423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271c406b0a669f287a8fdfb7cc19a3b3a17c8df10e407b2e0eacecc91e780f9a`  
		Last Modified: Thu, 12 Nov 2026 20:59:47 GMT  
		Size: 10.0 KB (9996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd0d6fde5e3c2cf6e343b95b01ebc7c1c0a40d691c489407d3984c45bd425e3`  
		Last Modified: Thu, 12 Nov 2026 20:59:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706feb8b1d3be51aac37770c5248c9e7f507fdba5446f679ddfb787530b08a50`  
		Last Modified: Thu, 12 Nov 2026 20:59:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1eff42c28c269a6825aaea76da3f7edff12584aeacffeefc2c269d5f287798c`  
		Last Modified: Thu, 12 Nov 2026 20:59:48 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c347300e15144d52fcab057c3a61e3282d1f6892edbd3d6f641a957181fe4e4`  
		Last Modified: Thu, 12 Nov 2026 20:59:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:62d330e0b9b0c0c39f5c6f44b8d2045c3d7b273b58ca42e5cb2ac238740b2cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8a478e43252cc72597ced5e2aedead58623987d99d13c74fc2fa1ab5318903`

```dockerfile
```

-	Layers:
	-	`sha256:6c37a5f022d999edd1e879db7514c7acb566fadbbc16abd8a103f0fbb53f13ca`  
		Last Modified: Thu, 12 Nov 2026 20:59:47 GMT  
		Size: 41.6 KB (41643 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:403a69215416e38fe215b46f4ffbf8bb8f7a4f62962ccef635e502c8d7e4e8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107231069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a620371a8fb55487dcae70c8cb07f7b9804872681a792ea196837623cd14745`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:10:31 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:10:34 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:10:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:10:34 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:10:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:10:34 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 21:10:34 GMT
ENV PG_VERSION=17.12
# Thu, 12 Nov 2026 21:10:34 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 12 Nov 2026 21:10:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:13:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:13:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:13:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:13:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:13:51 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:13:51 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:13:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3cb2d1746b0bc9697eac4816a8a0175cd45752994805a5e2425dd4e1211b24`  
		Last Modified: Thu, 12 Nov 2026 21:14:05 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa999530961f348cf2c282f063105ab72a75c022ce80100cfb742716cddcc60`  
		Last Modified: Thu, 12 Nov 2026 21:14:05 GMT  
		Size: 864.5 KB (864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc5a105505ff0401f31c1b47b880af1cac7b8eeb24f912881fc223d224efcad`  
		Last Modified: Thu, 12 Nov 2026 21:14:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58383caa51eb1d2d5f9507d0c79dac0849f51ec97daeba384d6f6b22581c0e5e`  
		Last Modified: Thu, 12 Nov 2026 21:14:07 GMT  
		Size: 103.1 MB (103081141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032e7d54f4640485822b56c9327889b031967a661014d07943f91294ee12cd35`  
		Last Modified: Thu, 12 Nov 2026 21:14:06 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e585f628af0b9df73c5b048078cdb8fefc352c9fb0a4750f3930618e3b52fb`  
		Last Modified: Thu, 12 Nov 2026 21:14:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f1924a9c907073b57f13b51bfd01f224fd3673f67b2ade4cf85b79c18d1ff1`  
		Last Modified: Thu, 12 Nov 2026 21:14:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3636b879c9dff205af730b477f2de04afb49890fc406d6bc361a54d40f1ed531`  
		Last Modified: Thu, 12 Nov 2026 21:14:07 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba94cac75e4cd8bb08e96b6c43539a1ecd8e571ac09f2f130037a0a21fd7388`  
		Last Modified: Thu, 12 Nov 2026 21:14:07 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:e02c683b4cea2a2ed4ab41fce275e80aae6200d68dc5f070c93ac04c25ee8f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.3 KB (639280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105b5094ac007d81fef555b6d60dbda088410e29101281ca198e895865818af0`

```dockerfile
```

-	Layers:
	-	`sha256:f9a2d69fe20908cd678a08617ac21a18f82f825d703fbb61fb617306d117123c`  
		Last Modified: Thu, 12 Nov 2026 21:14:05 GMT  
		Size: 597.4 KB (597422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e41f6465ad2688baef0b1c8863edab1eae733f8a322e7a56035c1e221566768`  
		Last Modified: Thu, 12 Nov 2026 21:14:05 GMT  
		Size: 41.9 KB (41858 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:93f3c32bafb7d4d20965c4df530899ae40923f0ccd63deede2f36681fa0aeceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115182047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97106b46c3da2dcd9bcdb89cfb4b9dec61ff62a6f17e77bee6c5487145696e46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:02 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:54:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:54:02 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:54:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:54:02 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:54:02 GMT
ENV PG_VERSION=17.12
# Thu, 12 Nov 2026 20:54:02 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 12 Nov 2026 20:54:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:56:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:56:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:36 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:36 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1103dc4f4a8c680f7dade4cb13f6bdd6a710df41e0f9801902d04379449a2b`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61cec070bc8ad322f7f978cb35326465f0e6f7f7fe88ccbf87c0b4389a5d6f3`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 852.1 KB (852053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb7e5f7c1e263dee07c0766fb6b5401c3217e9791f2d667a1f5388ab9afef26`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d2b4da9164a23081f96525988f4957e711fbf530302afedca4e83c203fa11c`  
		Last Modified: Thu, 12 Nov 2026 20:56:54 GMT  
		Size: 110.1 MB (110121725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efed2fb4d513b05c3f696e997706cd35a4990c274361d1554508cfefb9849bdf`  
		Last Modified: Thu, 12 Nov 2026 20:56:53 GMT  
		Size: 10.0 KB (10000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4cf4299f4e4ef2fd3492e3fa23b30d7b8365eb252acc036c017515262201e9`  
		Last Modified: Thu, 12 Nov 2026 20:56:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1587904a1db485f7dfe03dfb086a8c07d37e88969ff31cbc7b04a5ba14e6723`  
		Last Modified: Thu, 12 Nov 2026 20:56:53 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a08f65577d5fb5344dbdcb0de4ab5b924a55e4bc3cf4c549f9e7524a1f46b09`  
		Last Modified: Thu, 12 Nov 2026 20:56:54 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417d13870bbc47aca00ab91317102e3193a348a9920f91fcdd4db85a13519cbc`  
		Last Modified: Thu, 12 Nov 2026 20:56:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:8f688e69fe1bccd5b366f77806add766f9b5d17fd820de5420d40fa31d3b2486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.3 KB (639343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9582b307b8ddb25acaf8195f8d9b750836780d6b13fcf4f504dd7c263ea9ee1`

```dockerfile
```

-	Layers:
	-	`sha256:1179e39b1745bd2da35513073aa0381519ee9998146c4abaa62afb5a92364212`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 597.4 KB (597442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:982bf395944685692cd09c15000593ee89293a1fa73a274574ab75ac5a1b92fd`  
		Last Modified: Thu, 12 Nov 2026 20:56:52 GMT  
		Size: 41.9 KB (41901 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:4b78b1659fa1df724512a906c0fe23bf47a0181d84150f7d8b250bfc62b613de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124076879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a5661ab4808b9576dba62def9dd808f05e10fb834db993aaaec2c5b8ee5a7c`
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
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:53:35 GMT
ENV PG_VERSION=17.12
# Thu, 12 Nov 2026 20:53:35 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 12 Nov 2026 20:53:35 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:59:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:20 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:20 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:20 GMT
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
	-	`sha256:0c689eb82b2f5db2b7bdffa1dee1dd4ef8786f4d914003122333985ba4af2f57`  
		Last Modified: Thu, 12 Nov 2026 20:59:38 GMT  
		Size: 119.5 MB (119510822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1087619dd58781fda538102495f5ade7a5f450a5498a5125860e04ea9077928`  
		Last Modified: Thu, 12 Nov 2026 20:59:35 GMT  
		Size: 10.0 KB (10003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1bc0143a5984db7d162c5176b8ffcfd1137a934981dac1e8d4fb7293983ef1`  
		Last Modified: Thu, 12 Nov 2026 20:59:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56406233aa38f640783348a9f22d79528054d411954c27b15c22eddea32649a4`  
		Last Modified: Thu, 12 Nov 2026 20:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab9242b49480ed7a64cfd1d64ce2f1dca021c00f42558479df02566aad5901b`  
		Last Modified: Thu, 12 Nov 2026 20:59:37 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3315a44337927ef28ed6827a2b68f3fc42b8f0eda95edc5dc98d443efab409`  
		Last Modified: Thu, 12 Nov 2026 20:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:b0bb9b7069e97167762e57ad821986e825f065358a708e48fb9b094cf7296ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 KB (639657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eaf385110e954b67960b43a8d7ab0d69e4c1fc0d05d6ff40305af1130954be2`

```dockerfile
```

-	Layers:
	-	`sha256:981cce18a9a98cfb038b72e9c003de61743dfbd101ed3dfd36cd48bcffb535c5`  
		Last Modified: Thu, 12 Nov 2026 20:59:35 GMT  
		Size: 598.0 KB (598011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26bdcd1ad9e6f76f4081605a1f8c320d2177b98fcc9eca7c1ba3b38a2c0eb004`  
		Last Modified: Thu, 12 Nov 2026 20:59:35 GMT  
		Size: 41.6 KB (41646 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:b23bd1a52f3c73934f194a1026ddabffe8585173b421e748e66145e935f6c3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120157700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5540db459bef138fa7eb51663b9ad23ec0388f2c820edc6c75d694c6b91e9f3c`
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
ENV PG_MAJOR=17
# Thu, 05 Nov 2026 22:51:51 GMT
ENV PG_VERSION=17.12
# Thu, 05 Nov 2026 22:51:51 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 05 Nov 2026 22:51:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:29:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:29:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:29:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:29:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:29:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:29:54 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:29:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:29:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:29:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:29:55 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:29:55 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:29:55 GMT
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
	-	`sha256:ffe3ff045f689bcc70e02c66fe490ec0054956c6dc903635eae18ea9374a5ce1`  
		Last Modified: Thu, 12 Nov 2026 21:31:15 GMT  
		Size: 115.5 MB (115460895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1adc6214fdd81826f6b4189fdfcbb356d4f08459a954712f8e840b5252de46d3`  
		Last Modified: Thu, 12 Nov 2026 21:31:12 GMT  
		Size: 10.0 KB (10008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab70cccfa2e774013b23cffdde93975c1c4e9e7818bde3d86139a5369701fbd`  
		Last Modified: Thu, 12 Nov 2026 21:31:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978c390ed0d8774525c41e2a5296ff2caf9e4fecde608e24d49ddc61ae6f52c1`  
		Last Modified: Thu, 12 Nov 2026 21:31:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8994af2c1838d419729f36ae7642af01947087a698841644380ea21b303463b`  
		Last Modified: Thu, 12 Nov 2026 21:31:13 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a53ebbf2d14e93dc5cfa93764c518285a584dda9eebf266f0012b9cb55afe0`  
		Last Modified: Thu, 12 Nov 2026 21:31:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:026d75cd82cc3ebd2902b9881761efe27b1e86195481d83b9bc27e555b22525a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.5 KB (637507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279217cdfec329bed3835cbab3612e9e8554fcb0b282b8102d52b7c9f70f4088`

```dockerfile
```

-	Layers:
	-	`sha256:0d707cb57047432ddde7a8e30d7fccf2b61b8fd3f7966b2088b0453637c6a1e4`  
		Last Modified: Thu, 12 Nov 2026 21:31:12 GMT  
		Size: 595.8 KB (595757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb537ad43a4295ec1b20610a598efaac10809168146ca2139daa1bc8334489d6`  
		Last Modified: Thu, 12 Nov 2026 21:31:12 GMT  
		Size: 41.8 KB (41750 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:10e5819b6a127a37ed5cb39b3ae7e5f51a3d0ea70df3530a9a54718237313026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119481416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbf260bf2afc89415e9290fef01d3598bbc6d07b367f86fc69be3904a025ed5`
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
ENV PG_MAJOR=17
# Wed, 11 Nov 2026 07:20:41 GMT
ENV PG_VERSION=17.11
# Wed, 11 Nov 2026 07:20:41 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 11 Nov 2026 07:20:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 11 Nov 2026 12:22:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 11 Nov 2026 12:22:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 11 Nov 2026 12:22:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 11 Nov 2026 12:22:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Nov 2026 12:22:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 11 Nov 2026 12:22:57 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Nov 2026 12:22:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 12:22:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 11 Nov 2026 12:22:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 12:22:58 GMT
STOPSIGNAL SIGINT
# Wed, 11 Nov 2026 12:22:58 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 11 Nov 2026 12:22:58 GMT
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
	-	`sha256:96c6a0fa45d12153f9077cdbd901ef285103d557cd6213b780b9ea72a3b28239`  
		Last Modified: Wed, 11 Nov 2026 12:26:28 GMT  
		Size: 115.0 MB (115038410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa1abf4f0639c0fc43c279b745a5c189275091c614eace8e77c90eac4650b4f`  
		Last Modified: Wed, 11 Nov 2026 12:26:11 GMT  
		Size: 10.0 KB (10008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af161243377ec6563883eb8975fd98ed65b0e531ae655b3819ef4139d5bcd502`  
		Last Modified: Wed, 11 Nov 2026 12:26:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2134359664abe756d8a6776712aedf308fb9f1d047c0e353b3e3d17d683fa0b9`  
		Last Modified: Wed, 11 Nov 2026 12:26:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e48da062e34f28da1f95fb577279b3718971019656a68f6cccb4e591d1e3588`  
		Last Modified: Wed, 11 Nov 2026 12:26:12 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29c6efcc03c42fb078d3a3862ab2c8203beedfa36a95cb1af531b1ffe5d50c4`  
		Last Modified: Wed, 11 Nov 2026 12:26:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:a21a084ed44d61da10525bcf7a9f6de1c5267b7a67cc04aacb139844f0424fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.2 KB (639165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d889717b79a66f60d44ba4b4d6c87ef1516c11065b9086b9f16d1a6226d1eb`

```dockerfile
```

-	Layers:
	-	`sha256:15fc8a01afe271a39294f474389d678d10f337c92d4ebfd501b60ac360d210b7`  
		Last Modified: Wed, 11 Nov 2026 12:26:11 GMT  
		Size: 597.4 KB (597415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46a4d592d9abc7748883f248b4fa032bc043e042095ae87bc8d6d0001609b1ad`  
		Last Modified: Wed, 11 Nov 2026 12:26:11 GMT  
		Size: 41.8 KB (41750 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:78bdcca3af7b8ad9d91ecf35e938bc71f713d9431285bf5f24a8c140acb6c81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123890843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21777747fbf334ae973424fd69a94900a1b52bb7dca6126a03c3cfda4583af`
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
ENV PG_MAJOR=17
# Thu, 05 Nov 2026 18:53:56 GMT
ENV PG_VERSION=17.12
# Thu, 05 Nov 2026 18:53:56 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 05 Nov 2026 18:53:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:05:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:05:29 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:05:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:05:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:05:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:05:30 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:05:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:05:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:05:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:05:30 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:05:30 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:05:30 GMT
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
	-	`sha256:c86ab4221e5ab132aeaf51be15a7d80dc07f3629363d5038dd8fcc2d2e9ed4e2`  
		Last Modified: Thu, 12 Nov 2026 21:05:57 GMT  
		Size: 119.3 MB (119278274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4204f67d53e7c6247d72a3b86184640b72a6d036f10855e7c94d1704f810abc4`  
		Last Modified: Thu, 12 Nov 2026 21:05:55 GMT  
		Size: 10.0 KB (9998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0138fa66841ebedb75b2cbd47a18568dd35155b6acc2a56c677fb9ff483097a9`  
		Last Modified: Thu, 12 Nov 2026 21:05:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dd1198c3bc55f854cc0218d67186473ce7c716739d45b8c270339478f69290`  
		Last Modified: Thu, 12 Nov 2026 21:05:55 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8a888f2cd6a83dc7199e4a05d9a3d599fae17ef819efd460950b923fa826a8`  
		Last Modified: Thu, 12 Nov 2026 21:05:56 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30aa533aa265942c1add162125193792f1f27af9c784a5552038c3b95930176`  
		Last Modified: Thu, 12 Nov 2026 21:05:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:eb7bca9ea342819f6e0762e530f9729559daf35e712af7c40b1d685552801592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.1 KB (639072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab32a81278cae394efea70dc7bafcb49e8c7a5e5344fc46e66e3ce3195e93e3`

```dockerfile
```

-	Layers:
	-	`sha256:c8497d81d0da2853191ac6c4b112dddc5b055536d37bf8ced0d8346af5503966`  
		Last Modified: Thu, 12 Nov 2026 21:05:55 GMT  
		Size: 597.4 KB (597385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3cfff442196e022fe6b92e2df825bcb17456fd10a47733f2ed0a71ee6bfc6bf`  
		Last Modified: Thu, 12 Nov 2026 21:05:55 GMT  
		Size: 41.7 KB (41687 bytes)  
		MIME: application/vnd.in-toto+json
