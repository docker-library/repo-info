## `postgres:15-alpine3.24`

```console
$ docker pull postgres@sha256:57e5b9f69e672385cdf630f42b1306b5ca934c9bf8278b5f8b1948533d75a20b
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

### `postgres:15-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:cae15a3b718f23497a60b7cafdcf205216d7949680972da0584db00fb68bf3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115195375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4593c6de443299b46098151fc1ec154c882339b77a56334c7ce612c8a7be6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:36 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:46:36 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:36 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:46:36 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:46:36 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:46:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:48:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:48:31 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:48:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:31 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:31 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5392b8b24862d469f15ad1aaeba0f44a4ba2642a2d69a900ac67f40798a88eb`  
		Last Modified: Tue, 07 Jul 2026 17:46:27 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c789cfcee1a878ab23c08038ff83307a571beae30bd8130d2f9096a434b0eefb`  
		Last Modified: Tue, 07 Jul 2026 17:46:28 GMT  
		Size: 900.3 KB (900255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2196a549b66f83e3c388c2997e9da1304d6bfcc9cd490971cf434f0f5b9515`  
		Last Modified: Tue, 07 Jul 2026 17:48:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33f1df898dc0304cc0b3a0f3742817edf93db27c5a7177894c5eb842fb3d3f6`  
		Last Modified: Tue, 07 Jul 2026 17:48:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d12291c9d9787e547941c19612db8643a8c03183016edb692fc733d88138a26`  
		Last Modified: Tue, 07 Jul 2026 17:48:48 GMT  
		Size: 110.4 MB (110431423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4cf99dca47b9d3f3c9f7f1720f838ad8e10a878933ca807ee5bd002fb2901a`  
		Last Modified: Tue, 07 Jul 2026 17:48:45 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f512cfda95e05c81178bf6e9c7b1d194aeece6ea5ac6522e217569cacec6b2c4`  
		Last Modified: Tue, 07 Jul 2026 17:48:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9f94ec7f3d9f56dc1dcf053e7c56b13636ac5bd08a25857677860f517bf74a`  
		Last Modified: Tue, 07 Jul 2026 17:48:47 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f1c1f745bf2ecf41bd01a2d4adc2b989a16e47b000528f9b15bb62bc0b4b37`  
		Last Modified: Tue, 07 Jul 2026 17:48:47 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd77fe4725022a09129e6e4b21771be77b5e9a6d2721dbda42ffaeb0ba4a264`  
		Last Modified: Tue, 07 Jul 2026 17:48:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:f3cb08277cf42d7a509ea9196016bb8117c554a1d28b7b454817b7a05b6f29fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e787c5d661de6ae47fdc8495cc9c1be47b818a74165110b0c121aaba27e080`

```dockerfile
```

-	Layers:
	-	`sha256:f35b0faa8118dcbbe22232d8f4735e106d6baf15dbfd5e97c6009726eb557a27`  
		Last Modified: Tue, 07 Jul 2026 17:48:45 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f78f49e352b033d0d6fb5a789879bf33d802486c6b5768f9403bbae7cd5c78`  
		Last Modified: Tue, 07 Jul 2026 17:48:45 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:4696b64a9318907d4a8f7994152fc8d1bfb7e26a10fc8314a70edccb15ef3a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111498201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b66574995a4250e6d646a221e9dee116a75a4ebb9116fea7884b10f64f9dbe68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:42:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:49:55 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:49:55 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:49:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:49:55 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:49:55 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:49:55 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:49:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:52:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:52:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:52:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:52:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:52:45 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:52:45 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:52:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5b74889bd8500025d6d8606fd50ca3bc85bfd67bad8497b3c182e14423463c`  
		Last Modified: Tue, 07 Jul 2026 17:46:08 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f684079402b696bc21df69a0dd1e214891fc6a452a4c0df501d934b1c4394e`  
		Last Modified: Tue, 07 Jul 2026 17:46:09 GMT  
		Size: 864.6 KB (864615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e707cd6cd453e01002c860879c9e87b06a1b4bd0953ecfba2dc6d1f0e6368667`  
		Last Modified: Tue, 07 Jul 2026 17:52:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c74b443026d231e30bb62bcd501b3acbe62617fd8e4594609422ffd22db067`  
		Last Modified: Tue, 07 Jul 2026 17:52:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739348d737ad1da07d38c196bc93a2aa655bac389d88cf500f4b7e8682c341f2`  
		Last Modified: Tue, 07 Jul 2026 17:53:15 GMT  
		Size: 107.1 MB (107062826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2b91e0976549752910697864c915b3d8e0af02bc277125aa17bca5f91e386a`  
		Last Modified: Tue, 07 Jul 2026 17:52:57 GMT  
		Size: 9.5 KB (9451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23930260bb25df418b585421c66a63783866a9ec91382c823201e08ab67bc9e`  
		Last Modified: Tue, 07 Jul 2026 17:53:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa73efa55522dd5635ecdc7de372aee97d6ab65460fd69d4bdd749995b0008`  
		Last Modified: Tue, 07 Jul 2026 17:53:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaac4ff83d7acb7b1d8165f43ae1ffa0a8ddddfd3616b5ebc56e9b52310de26`  
		Last Modified: Tue, 07 Jul 2026 17:53:00 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616e90e27023d296a69b6a21247e221d94d83e0ec7e5435242c3b6f1d9af7733`  
		Last Modified: Tue, 07 Jul 2026 17:53:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:60bb711b7a724335db0171f206536f3d05edffcd152853353d01a34bf4571c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 KB (44358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e8e23b5b8f25fe0aecf5bb0a5227644f3d561471752ce1323ce76aa6614302`

```dockerfile
```

-	Layers:
	-	`sha256:2b5603e33122a24e5c4f1cf90a47238badf914be5cbc047a9bc21d622e791df9`  
		Last Modified: Tue, 07 Jul 2026 17:52:57 GMT  
		Size: 44.4 KB (44358 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:48980c772ee7f158f22ed70fd661179772baff3e6c167a587d78bb428c9b778d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105222839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55aa181884b3c8e2fff41eac1f8717d64b648e2b9d0c055ad28840b4fff35909`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:13:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:13:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:13:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:17:26 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:17:26 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:17:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:17:26 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 18:17:26 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 18:17:26 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 18:17:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:20:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:20:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:20:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:20:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:20:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:20:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:20:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:20:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:20:15 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:20:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:20:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e4fed7c5eaff0b37c809f4cb696b7634e5109a4c58c616489b1d194984e2cc`  
		Last Modified: Tue, 07 Jul 2026 18:17:16 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31d56acbf8d2c9cd81759a8b624948a46a18cce98cbde39a79fd5ffb0ed3f3c`  
		Last Modified: Tue, 07 Jul 2026 18:17:16 GMT  
		Size: 864.6 KB (864630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6aba4ad142f2b2bc6e9eb40b11f8be9536bed81d9c77412ce87161b87ce139`  
		Last Modified: Tue, 07 Jul 2026 18:20:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b9d71b81dc4e2d47d4fc9e8ec29e20e15fd850f4187a634ce6d1a7a78c1d9e`  
		Last Modified: Tue, 07 Jul 2026 18:20:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11bca534379c5a60b00a771a1476a8a1d0c3e220f13f4610f9c0e886927d789`  
		Last Modified: Tue, 07 Jul 2026 18:20:31 GMT  
		Size: 101.1 MB (101080289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f57360d2bcba1605c8a07011dc100156935df7bf39a1c6a5881a066d835f1a`  
		Last Modified: Tue, 07 Jul 2026 18:20:28 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660c43b4e32fd52ddc098f3ee6697b992f673e771eebeeab5928bef8d13ffb84`  
		Last Modified: Tue, 07 Jul 2026 18:20:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30c00faa4774ed06c069a241d5a0414405cdb8a00344507558acc3e35dbe034`  
		Last Modified: Tue, 07 Jul 2026 18:20:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe0c50819044da01394b36adf0481430ceb0c43fd16a2e09148ce183a10a994`  
		Last Modified: Tue, 07 Jul 2026 18:20:30 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476e8ee5a35d0ceb7ea086912aaa9d54cb087f0a9b785899a4ed962e9386f8d7`  
		Last Modified: Tue, 07 Jul 2026 18:20:31 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:0e7ea084bbe8a0f8ba1c37a78584d40420e9f0ab411dfccb4f5d127c622f8f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (642001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4de6b6ed348bcdafb200a623736842578eeb75da40c9c5885a6fa107e7179a9`

```dockerfile
```

-	Layers:
	-	`sha256:11d4b371c82a56b2fc290a56d14ea14a3d197cf0e406e93df5f48110e2a927d7`  
		Last Modified: Tue, 07 Jul 2026 18:20:28 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b7cdfbc5fefc3f598ed86f396c5ef357590a491a2d40cfd47299363b44d0d98`  
		Last Modified: Tue, 07 Jul 2026 18:20:28 GMT  
		Size: 44.6 KB (44573 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b462a1ee492ec44a74cef7a6ca37084c48d0dee6e4b53099acd1fc53ec997357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (113036108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25464d6a8b69ae7001dda8527e24b201f90b5391f686d6ea324913c92b81eae7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:46:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:46:06 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:46:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:48:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:20 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:20 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7650936ed54c18161dbcb8f89f073c7d5c62a15a3771d82c03a6f68628030ba8`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756bb0778e6a650cb3d34596204d13cb356289f47ea20cd5a03847485107aa41`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 852.3 KB (852271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3239a25149ee4ca98cc073f93d8e1a8fc3f427db5e57365d78808264ca06a57`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5366df1925bd1d7b52e84b3cd8182e95ff4f1119f2b5815067310737e664d4a4`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a99ee731cde59035b7aafd541fc63d19c9c1476a52361f692118e66489b981e`  
		Last Modified: Tue, 07 Jul 2026 17:48:39 GMT  
		Size: 108.0 MB (107983495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3562cf2e5ae084a48f9ca5af2df14ae6f55eb51b62749cdc782176280e7f5452`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 9.5 KB (9452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e2c34edbe8011c81b40c8baa9a072edad3e3fdaa3a11d570aac1ce64dd61aa`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743619bbd9aaf1dd75a57bf6c690a88db5bebd83ba29993d2d0e875b289b945e`  
		Last Modified: Tue, 07 Jul 2026 17:48:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b8e12b6aa176b793c01dee75b235bf98a710398a099a52dcf4547fb27ed4bb`  
		Last Modified: Tue, 07 Jul 2026 17:48:38 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a067ff72f973c6338f2a9012838764c0dd271a58a11caafbfad03e0348554c72`  
		Last Modified: Tue, 07 Jul 2026 17:48:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:aa3bc3358c27b07efdb7a42f629524cafe09c94b6452b2b96ae2480ec2274d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.1 KB (642061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f48a386ce4c3965dd31abde6749371becadfafebd7363d585da152b955630d`

```dockerfile
```

-	Layers:
	-	`sha256:b244edb4e3a23b37d3368e21f804e62a5de114d8b8783887faab490efe238920`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e359dbf94c28d8b227d3b13d0b351080c470ee6232f8f9197cf936361a76f7fb`  
		Last Modified: Tue, 07 Jul 2026 17:48:35 GMT  
		Size: 44.6 KB (44613 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:64da88c2f890d2cbb0475b95ab39ead2d3207d0d91541ff87503dd2218ffb3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121879819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4966dc1f43779d87fbaec88b737ac4e296f51109c55167f54b814221d079a757`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:53:56 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:53:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:53:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:53:59 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:53:59 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:53:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:53:59 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 17:53:59 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 17:53:59 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 17:53:59 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:56:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:56:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:56:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:56:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:56:35 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:56:35 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:56:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a298f6ff57bd228935f79c61f79c44ccf76a6eba195d2342951563463da13c4`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787516dfad8766226197353f5c4b94b1785e61717129a95c93cdab18aa13168f`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 868.4 KB (868429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa82fabe2d452c467b5624f9283937d1b2784a33fdb9f949da09636097d271d3`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6226532003265214a82f45024fe9fa39a7ff836f13975cab9747f1033fb7ec34`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d03ec80f4ac2580ed1fbb8d4a30faad261b6782fd7ae996f38dcf86488ce931`  
		Last Modified: Tue, 07 Jul 2026 17:56:56 GMT  
		Size: 117.3 MB (117323946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bcbd751b2494524cbd3d40ad93dbd8b342aab1cae06777756009956bccda747`  
		Last Modified: Tue, 07 Jul 2026 17:56:53 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e4e4031d60e2dd6d316efc65e1c480cbe5d647fdd0b75c6a8f02463e506b92`  
		Last Modified: Tue, 07 Jul 2026 17:56:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d714ebab3f787771d18ce50911e58bfb8be5d8085336a29ea59dd18cc7d841eb`  
		Last Modified: Tue, 07 Jul 2026 17:56:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487131029f824d8c43e77b712b4a8bc390e4ef7986ae339d7049f9a70487c1eb`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d270a94526916ca75d308c1e24197558eb5b1befe0362afcd2dc62d90632f1`  
		Last Modified: Tue, 07 Jul 2026 17:56:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:d5fbff51ecfc9f608d8c53609ea557369dfa480508cdb83b021320fafab36091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.4 KB (642359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3703c70a166897743ebb4bad6d711e817756fe638f680405a364401a3b2da8bb`

```dockerfile
```

-	Layers:
	-	`sha256:e4316346094a3beac1a04a3b8d72c949846c55f8dc9ff91ab7447a42d510f042`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:578f82776d1d8f64066697f7bc1d7a894567ed7dad381651ac5bed74232a6a98`  
		Last Modified: Tue, 07 Jul 2026 17:56:52 GMT  
		Size: 44.3 KB (44342 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:dd5a00dced5752207ddd6039afa247c43cbdddcdc20652fbf61de56cce6ceef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117862099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b647939bd92cb28858a7b9549ee14bb65f39d8babb02bc109a50496ff83823d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:07:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 18:07:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:18:59 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:18:59 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:19:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:19:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:19:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:19:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:19:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:19:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:19:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:19:02 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:19:02 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:19:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2176dc6e617f1c6d332e0568fa937a03c222c54a1324dd1c7fc8e74ca9ea3e3a`  
		Last Modified: Tue, 07 Jul 2026 17:50:22 GMT  
		Size: 975.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa041362842eae9b8529ef60adb288a0fbf07ccfcbd335686389af06af4c0fc2`  
		Last Modified: Tue, 07 Jul 2026 17:50:23 GMT  
		Size: 857.4 KB (857441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f23df2806a2a5d606721150187de1dbd3f698309bc1ced824c5bdcac80dbcd`  
		Last Modified: Tue, 07 Jul 2026 18:12:52 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bbf0a7b7d787690a96b8d33f06d880d7d4621a2fa58d2deeb197cacb74b322`  
		Last Modified: Tue, 07 Jul 2026 18:12:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a9e3bdca5fb9aa43311be8a7d063af5f3f84d1ffb48f554daf0c26a1ef2f48`  
		Last Modified: Tue, 07 Jul 2026 18:19:38 GMT  
		Size: 113.2 MB (113173945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f950b2ac7bd208b4a80e7cb828aeb2a218cb950c10086802889ee77152ee13`  
		Last Modified: Tue, 07 Jul 2026 18:19:35 GMT  
		Size: 9.5 KB (9452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54dc2b069a29844cf299d45a4dabcc5987255228f74dec4d58f5bdb82483cb5`  
		Last Modified: Tue, 07 Jul 2026 18:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2500ad8ddee51f4154328514098285a5203efcc70eb6286d89446488c2114c6`  
		Last Modified: Tue, 07 Jul 2026 18:19:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b83120cbb3ee7ac159f78292480dd84e49312a94dca53f99c66cdc50274551`  
		Last Modified: Tue, 07 Jul 2026 18:19:36 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018c6c1b48d8ae3d2b1c3c624f487ec4828c775db08a7396eeb5a1002fee9d31`  
		Last Modified: Tue, 07 Jul 2026 18:19:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:b43f36355913b902eae0ea2c8f1659c9d6cb18175316c73b9393253cce427d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 KB (640213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe291d8d869ded7fcfdef8f1fe72351456ee73c2ea1543e162a6eaecf45f187`

```dockerfile
```

-	Layers:
	-	`sha256:fe82d18a28b26de3b9106fbf26d2216e6a082ec4fd3d215a3687a5902677f415`  
		Last Modified: Tue, 07 Jul 2026 18:19:35 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50830bc404381b03b0d92859ffcd146e3c5a1748c10fc04d3654d368ab9cf183`  
		Last Modified: Tue, 07 Jul 2026 18:19:35 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:9172c561e4fe2caca762a3aab34420e50ff449fae87abfd3e05a74560cde91ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117179650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d14edb3bbb0d9587beab6fda0d143725c70bdec9c26473fe572918548a325b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 20:22:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 17 Jun 2026 20:22:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 17 Jun 2026 20:22:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 18 Jun 2026 02:07:29 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 18 Jun 2026 02:07:29 GMT
ENV LANG=en_US.utf8
# Thu, 18 Jun 2026 02:07:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 18 Jun 2026 02:07:29 GMT
ENV PG_MAJOR=15
# Thu, 18 Jun 2026 02:07:29 GMT
ENV PG_VERSION=15.18
# Thu, 18 Jun 2026 02:07:29 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Thu, 18 Jun 2026 02:07:29 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 18 Jun 2026 04:51:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 18 Jun 2026 04:51:12 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 18 Jun 2026 04:51:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 18 Jun 2026 04:51:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 18 Jun 2026 04:51:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 18 Jun 2026 04:51:13 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 18 Jun 2026 04:51:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 18 Jun 2026 04:51:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 18 Jun 2026 04:51:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jun 2026 04:51:14 GMT
STOPSIGNAL SIGINT
# Thu, 18 Jun 2026 04:51:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 18 Jun 2026 04:51:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63bc382ee77772838b6762efb5dc9918aac46cc99c959111411a578a706e8e9`  
		Last Modified: Wed, 17 Jun 2026 21:18:05 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac745ca8a6a40fa8931eea62c6eada5afee35c1c91aede732f42ba0aba848664`  
		Last Modified: Wed, 17 Jun 2026 21:18:05 GMT  
		Size: 844.9 KB (844939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04af9fb0c1657dde4ed06cad73e1f6f1f88358f9c40e7b29d9a9811383c526f0`  
		Last Modified: Thu, 18 Jun 2026 03:02:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6162e785d2f8fd62f901324e82906cc4940fd02456304143ec1c4fd9f62f07`  
		Last Modified: Thu, 18 Jun 2026 03:02:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a04deb891798bd66c5d5e5451659706d93ac0b1313f14b1ae67b2c066a91bc`  
		Last Modified: Thu, 18 Jun 2026 04:54:29 GMT  
		Size: 112.7 MB (112743049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8c61136c57792848cb4338d234d316d1ed386df91ba191bd8188b3634f7f12`  
		Last Modified: Thu, 18 Jun 2026 04:54:11 GMT  
		Size: 9.5 KB (9453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e326025dd8e2f9842f3f59ccc05f3f11ad55735d7e42f3e68becff1a35116e`  
		Last Modified: Thu, 18 Jun 2026 04:54:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d5992f5ef88b10f7473e79d1d6c74b6007976e2730a15fd582acde68291dbb`  
		Last Modified: Thu, 18 Jun 2026 04:54:11 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331f14155218bfc723eba8719389dca3397d7a17857345d55d8f041d3ec42b14`  
		Last Modified: Thu, 18 Jun 2026 04:54:13 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e244f207046f419b1c0a01d039983c5fc8e96c299c4f5c5ad53d3b12c22714`  
		Last Modified: Thu, 18 Jun 2026 04:54:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:71791669a4fef945c284bc9c82f37791e5d9b3f5183fde14f1d1a6fa1cdcbf1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413bb4645ee480bd9c901cfb65e2beb8a78ae349b60bca15104b5901fee9454f`

```dockerfile
```

-	Layers:
	-	`sha256:d0fd7e3a0cb128f48aa01e6af1e7f57a78300dcef742580286d70667c4bd8789`  
		Last Modified: Thu, 18 Jun 2026 04:54:11 GMT  
		Size: 597.4 KB (597413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24d7742525ae91af6ab0aef2de481d9410542cdffc88ccc5ff5a9ee51d8a560f`  
		Last Modified: Thu, 18 Jun 2026 04:54:11 GMT  
		Size: 44.5 KB (44450 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:c9245f846d11f73e94069f996f3f645f0c2719e7dda4d7a5547fdfc967002b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121694209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d848dd56152225b0d3fa3d9d24518222d32a5a381eb73656bfe62b337cdd111c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:05 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:16 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 19:51:08 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 19:51:08 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 19:51:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 19:51:08 GMT
ENV PG_MAJOR=15
# Tue, 07 Jul 2026 19:51:08 GMT
ENV PG_VERSION=15.18
# Tue, 07 Jul 2026 19:51:08 GMT
ENV PG_SHA256=11df0df97fe3ea4ba9a791faaf39cee1d2fe571e78885b5b55d8517d27c323b4
# Tue, 07 Jul 2026 19:51:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 20:02:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 20:02:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 20:02:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 20:02:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 20:02:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 20:02:59 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 20:03:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:03:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 20:03:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:03:01 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 20:03:01 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 20:03:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15ad15d99b7ebc438c6899bb86ff8185917cbfaefebb7635e9c54b36e5a7f82`  
		Last Modified: Tue, 07 Jul 2026 17:53:12 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fac6711fb3dbee93396bc64d55af01ed65c7582c637c0a1b8599b5632d4056`  
		Last Modified: Tue, 07 Jul 2026 17:53:12 GMT  
		Size: 874.5 KB (874497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa2c00703d00dbb65791c6276597f8717054e00352398f6988de02c6c701000`  
		Last Modified: Tue, 07 Jul 2026 19:57:54 GMT  
		Size: 178.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622ac81ae32af52233b7213976523affd42c04ce5657a2949285101477454268`  
		Last Modified: Tue, 07 Jul 2026 19:57:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e6fadb1163df315fabb96cc3fa9dd0e8b82155e1f1d6ee18a5c9a72d29c167`  
		Last Modified: Tue, 07 Jul 2026 20:03:56 GMT  
		Size: 117.1 MB (117093081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d7a896049b4877dee5ce3860f1b1b69f7d8be4251b2e2f1b560a24233a4e78`  
		Last Modified: Tue, 07 Jul 2026 20:03:52 GMT  
		Size: 9.5 KB (9452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b824e448e36ddbed2aeefa5276ac82f5f1eb7281b9c7b8ae7572b2f2cddb25a3`  
		Last Modified: Tue, 07 Jul 2026 20:03:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cc195168e3656742bd69f356443c52a008d7518651df823b8feb937a3ec701`  
		Last Modified: Tue, 07 Jul 2026 20:03:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28bb735b7c6ed44cced50df4e697fbf9061b85f9d071408668d4c211db9caf30`  
		Last Modified: Tue, 07 Jul 2026 20:03:54 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fba2baa2c6eee27956a92616cc2e9012249edc2ab79ea703f7998147a17462b`  
		Last Modified: Tue, 07 Jul 2026 20:03:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:96908bbfd03014f7273890dcb1b35ab4c42d551701d472ad7e1b72507169d72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.8 KB (641781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5763acfa92bf2452afc27446fb16e46ec5485f8c9ade629bb9fef39a371dbe7b`

```dockerfile
```

-	Layers:
	-	`sha256:3e8c5d69c3f6eb4cb1c935de3c56d92b0f1401dc9ac7c6f163e038c8a3604699`  
		Last Modified: Tue, 07 Jul 2026 20:03:52 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b9559fd50fc92dfe20caf73839992057b6d0be2621703c32cf5f9e4cc57c0ca`  
		Last Modified: Tue, 07 Jul 2026 20:03:52 GMT  
		Size: 44.4 KB (44390 bytes)  
		MIME: application/vnd.in-toto+json
