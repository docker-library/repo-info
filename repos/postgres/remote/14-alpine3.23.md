## `postgres:14-alpine3.23`

```console
$ docker pull postgres@sha256:9b912489299970e9fb18207cb36c3ff70337736582a67bd0bd838aaebbd7ee68
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

### `postgres:14-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:d66222eac9b41db49accd54f3d9b5efc2e7c8fda3f11bbd29c3b525bf66c32af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114108424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192b5cabdf961eac548aaa21d41f9a1aa789f7e444c4f5238b2db9b612d6f5d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:46:57 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:47:00 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:47:00 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:00 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 17:47:00 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 17:47:00 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 17:47:00 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:48:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:48:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:52 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f500f168e18ad5402aa332bb4bfce0c96fc64afb4f8b40d70bbafc03841381`  
		Last Modified: Tue, 07 Jul 2026 17:49:08 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fdb981886745fc2e15eb47ef936518f1345fe764933d527cf5a9e7d5ca3cb8`  
		Last Modified: Tue, 07 Jul 2026 17:49:08 GMT  
		Size: 900.3 KB (900264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35fb6437c0a577307f8d100f85ffc475fd69da2d65d8afe7ed8e8d38df26574`  
		Last Modified: Tue, 07 Jul 2026 17:49:08 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c835b56f95f6dcc60e8995992ffbd0bd8c2fa640a6971ac4d0d41e44ce785f`  
		Last Modified: Tue, 07 Jul 2026 17:49:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b523090f0693e0ed88c5731b8524a7a331fdc34b17baf4210c90ac48456949c`  
		Last Modified: Tue, 07 Jul 2026 17:49:12 GMT  
		Size: 109.3 MB (109346678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65549df99c178c580c66fda4d0140188e02a751659dac302743e0b8707e97b4`  
		Last Modified: Tue, 07 Jul 2026 17:49:09 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d08f72f2df8f287b56d361d95d397c52b160e9e002833b357d3afe1c4580175`  
		Last Modified: Tue, 07 Jul 2026 17:49:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cba688df34f4943fc253fa3459155a5416705c6c1a265298fb1be777e8d3f9c`  
		Last Modified: Tue, 07 Jul 2026 17:49:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f39a24cc260c922a57d114e1d82b7d46f11b6b159a63e3d83e7842b397df2bf`  
		Last Modified: Tue, 07 Jul 2026 17:49:10 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69915800483a079cdd9d9268d6b004f95811bd3ec3412e520fb6c97db401a46e`  
		Last Modified: Tue, 07 Jul 2026 17:49:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c298aaeaed256e112436f6e3d2706c22d3d9c9761b8088e45680ab68fe6cb8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.9 KB (640907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5434100fda62add35b02872975ea01bb231cb0258391f0bdb7e733ff01dcb4`

```dockerfile
```

-	Layers:
	-	`sha256:598ce4bec0a1ac84354eb59b593d07387c8491f7e67ad56d8140af53ec3fed46`  
		Last Modified: Tue, 07 Jul 2026 17:49:08 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e29e4e140ed539d4d5c6655d17dfff2c1755ff3e4111d9b80d63751237a9e3f9`  
		Last Modified: Tue, 07 Jul 2026 17:49:07 GMT  
		Size: 43.4 KB (43449 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:639adc4dd0a89eef1951a6c072614ad7bdea7a1266f80f8032b4cbe1dbabf0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110417483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33091db15c2f99319ee4c150485f1fa5096a39ae0f186c1eae55c4be27911c56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:57:03 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:57:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:57:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 17:57:07 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:59:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:59:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:59:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:59:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:59:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:59:54 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:59:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:59:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:59:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:59:54 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:59:54 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:59:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b17ed9920e846cf521406b75d19bc564dce9493b0b10782b2af1e4a12534086`  
		Last Modified: Tue, 07 Jul 2026 18:00:11 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856c5d70b362daa8258a46bcf8aed9418205302243caef82c12421abd0959b88`  
		Last Modified: Tue, 07 Jul 2026 18:00:11 GMT  
		Size: 864.6 KB (864628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c2599a4556541eac4eefedfbf5249ecc457035e43a158ee055a1bda98a4463`  
		Last Modified: Tue, 07 Jul 2026 18:00:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addb8ad80170cd046054e33f4879d4d593b9a4fdd19ccb04a38307e83db48bad`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f70f89dd64ff45d137f3269c25d8cee12712c4dae81cf30f246b3afcf0f2ec`  
		Last Modified: Tue, 07 Jul 2026 18:00:15 GMT  
		Size: 106.0 MB (105983203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60454ed4fecd336d5fb0faeff7a7f4e30e7a5d86ddf4ce14c4a3d23d6b0804cf`  
		Last Modified: Tue, 07 Jul 2026 18:00:12 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434de2fdc7f817c12d8e8683c2342e96ec531dabf9f54b5dc7c29bdaa654ffd2`  
		Last Modified: Tue, 07 Jul 2026 18:00:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4bb2faf8a103e1a43d3a5d473ed8990de1343b33e73eeb7acb5a8bb0288081`  
		Last Modified: Tue, 07 Jul 2026 18:00:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b26048e3686feb5f4ebb506174dec65111358cc873051bba96d0de560a2068`  
		Last Modified: Tue, 07 Jul 2026 18:00:14 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7aea9c23cdb2bebe0efee7a56a6fddd94512f02cc7b17a03c7b8803ed1a4044`  
		Last Modified: Tue, 07 Jul 2026 18:00:14 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:27d6e8d8f5db82357e45d544d1f4d8fbe8f2e50d17291a5fced68cb6078037fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 KB (43401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5041d10b6129b1588fa68747859249c3a459343e8a772ef2e86d00308867c586`

```dockerfile
```

-	Layers:
	-	`sha256:9c43e21cb06e37ead5e9dff945d0dbe999e68a1fdab3b1892368045dc1e2560f`  
		Last Modified: Tue, 07 Jul 2026 18:00:11 GMT  
		Size: 43.4 KB (43401 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4067a25567e07084cee1ce4c0b854d98d32cbe6396087128544b82b04566b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104151977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecea5bcb53cffc8906a7de88eec3cf42e848d81cde53764e5d7f8d6cc2f6301f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:13:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:13:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:13:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:17:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 18:17:44 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 18:17:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:24:33 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:24:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:24:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:24:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:24:34 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:24:34 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:24:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5542d14a5f06f41eec556bd8e851c162dc22069b9c15859809176494be7670a3`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7de479aed845759edaf3cbd3b719415635476e5614c27cfb9e78ef222d93825`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 864.6 KB (864643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae64d507dd153301382e84193f3906e10555a0a8f05911f445d1820cca3662a`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7425d83439b07df616d2f0acf6bed813a7943600f5bce4a7afa0dfc24954316`  
		Last Modified: Tue, 07 Jul 2026 18:21:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67809c5e83ed09de30097f1dfb3c558d99bc1259a7f94cef081aaaf4d4b8034f`  
		Last Modified: Tue, 07 Jul 2026 18:24:54 GMT  
		Size: 100.0 MB (100008413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6269431e16141f56f66feb21310dee7d950f8ff2a6c93b1b60503d3a47794b6`  
		Last Modified: Tue, 07 Jul 2026 18:24:47 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50b80f95a0fdbe229094a60ece7444837af90971d3ede229d30df4e1d81cda1`  
		Last Modified: Tue, 07 Jul 2026 18:24:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c84209d2e30e7c4aa20476faa627036e6bc167a5f0facdbf1c299ae2cc9ca58`  
		Last Modified: Tue, 07 Jul 2026 18:24:47 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c60a69f4200d8d3b008477d8f683c3e7aceee038dba4dd7e9dd7e745cb2083`  
		Last Modified: Tue, 07 Jul 2026 18:24:49 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c0888292d13c7b87aaf4e7bf70afa834162a66d1e8197e5190b054979ecdb4`  
		Last Modified: Tue, 07 Jul 2026 18:24:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:fc5f2be05c453bf4856f443b5510d4ffb487fe5eceb4a5e01a7900af6e8d7cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.4 KB (640445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf866bea4ce4fa4613e749cc5c0ffabc42be0ab145ecb712a7fb51fbcc1f6cc`

```dockerfile
```

-	Layers:
	-	`sha256:551eb6532f8786f9a44e0c2c136f8b3c1ac577ee0470746f9672e4e58cbd2f77`  
		Last Modified: Tue, 07 Jul 2026 18:24:47 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c4e89fe86fa8384f1689618488449d23bd77946edd0edf982690df2c7f46587`  
		Last Modified: Tue, 07 Jul 2026 18:24:47 GMT  
		Size: 43.6 KB (43617 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:879a9498f5d34bd2870b947204af4a5d396cf43b5634f87464b33d1d3c8f15fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111961111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a851cebe31b94f6a26e10d1dc335470478f465f5df32134ec2402b9d697baf9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:33 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:35 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:27 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 17:46:27 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 17:46:27 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 17:46:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:35 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:48:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:48:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:35 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:35 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d09e774dd1543c29ba0b092d1b85650f0d69886239883c8666f26d0a67c9b4a`  
		Last Modified: Tue, 07 Jul 2026 17:46:18 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624176527f9170b6258c2c28f2af5cdf43afa5ab3e26afdf36f6912f9e10d18c`  
		Last Modified: Tue, 07 Jul 2026 17:46:18 GMT  
		Size: 852.3 KB (852273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c10774207272495d28703324829c7902ddb5c6028fea9f86844f3e020bc5fc0`  
		Last Modified: Tue, 07 Jul 2026 17:48:50 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2d96a38ce1b7c62c2311fb8abec1dd318f880c972825a55bca0abe88472c40`  
		Last Modified: Tue, 07 Jul 2026 17:48:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119a8d15001ce4627150475165974c60410230bf6cb0a5af25a6d31e52e4342b`  
		Last Modified: Tue, 07 Jul 2026 17:48:53 GMT  
		Size: 106.9 MB (106909918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd23ceb30780fdd92ef5e3f974f8152b1dc7736a22db7847890619b31db86de`  
		Last Modified: Tue, 07 Jul 2026 17:48:50 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23de2a3c3a448376246abf45e1b5795f0e620e53ff00ec10e6b7f99e05322ca7`  
		Last Modified: Tue, 07 Jul 2026 17:48:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8c7c06d6fa742f31390675d7b493dd244297f45335c0f50982f365c6902ac0`  
		Last Modified: Tue, 07 Jul 2026 17:48:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c0b9cdcc8b40c1a5031d89658083a39571dc434856472128aa2b1a0c2a57d0`  
		Last Modified: Tue, 07 Jul 2026 17:48:52 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0455749e5b4b74735e302516ca73afbafb12e5896cb3222496a99ef4b7c993c4`  
		Last Modified: Tue, 07 Jul 2026 17:48:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e86cb4133656ef889502fe900ba363acc110c8621b11066685d6a7a71a3bbba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.5 KB (640488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5703ddca0eb494a092087979a9888912cbaa1cbc1f57a62ce3c698558d31498a`

```dockerfile
```

-	Layers:
	-	`sha256:5049ba11f2c0ec67381029eb6630013671896871bda1ab140ac56f8fe2747668`  
		Last Modified: Tue, 07 Jul 2026 17:48:50 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5dd4ceea6383a1bee26979ac3e969b767384d51c8e0b2a5d41b5dce11751fc0`  
		Last Modified: Tue, 07 Jul 2026 17:48:50 GMT  
		Size: 43.6 KB (43648 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:8724aeb8b9e7c6e141fa3a918ac8becaf00ef345b38cdec1d1d78056abdec499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120765960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab24cca65ed2562d43acba853ad6d2d75019dc8008019de0fdb100c1d3c626c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:57:03 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:57:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:57:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 17:57:07 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 17:57:07 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:59:37 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:59:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:59:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:59:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:59:37 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:59:37 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:59:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0928e42f8e62fd24c044281e117a60f00d98ea94a5ce25f97a128a299dffa23f`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792012bac601acc7a74b95ef1d7c7ea266b667157fdb9dd18d537f1b2aedf54d`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 868.5 KB (868450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a75c65c143297c18eebdc7870072f586b94e910185c3e8c7200defae3db540`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addb8ad80170cd046054e33f4879d4d593b9a4fdd19ccb04a38307e83db48bad`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b08205f4d50b7ec8f38989bb1e0c9100e507f91635123a3f6c4ad65843f41bf`  
		Last Modified: Tue, 07 Jul 2026 17:59:58 GMT  
		Size: 116.2 MB (116212460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d10af9470226d973a72f0a93d8e080a03f56e98e366405d076ba94cd231dfd`  
		Last Modified: Tue, 07 Jul 2026 17:59:56 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5b88a466964230dc6ff3a7c42dabe4c41d75d6c65772f1a0d52e8591d4285`  
		Last Modified: Tue, 07 Jul 2026 17:59:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dff2b8998efac4ffbe244ad3bdb3ecb8e373f711cfb1df3de6f364c0c9aa92e`  
		Last Modified: Tue, 07 Jul 2026 17:59:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b1302f30400a0bfb4fc14161205a5bb2ddabb7ea81405a4e44cb42c854c940`  
		Last Modified: Tue, 07 Jul 2026 17:59:57 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e3090215956f02a9a69cde012626a2c2857cbfb951b884943cd6a7e6023bfa`  
		Last Modified: Tue, 07 Jul 2026 17:59:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d2905ea4f790f76ad095df2348a4aaecf00fa2250f9cefbbfd39f85de497fbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.9 KB (640854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77dd409ddb3f26563405d741cc3fbd51ab51a19c0bcce71c088f89b686fed5b`

```dockerfile
```

-	Layers:
	-	`sha256:f5511420fbd365307bd335447e6df415335984e1969775e24908de7d9f2427d3`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7844865d1a34a220e197acc6874af9dffb92a56fd4a68913ed5f6292cc8382b7`  
		Last Modified: Tue, 07 Jul 2026 17:59:54 GMT  
		Size: 43.4 KB (43411 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:d25361b1c5aa67916153087f721ccd3d144b73ecd963f4273a3fdd951f907ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116709303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ab674d24027fe66e32af997a385a7c061d3853648e8e8b70b99f12e6e5f6eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:07:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 18:07:47 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 18:07:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:25:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:25:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:25:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:25:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:25:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:25:48 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:25:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:25:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:25:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:25:50 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:25:50 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:25:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2be8e1d56936cf0a694ebfac95a86877af3563e28b6843df76307a91d70af04`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcea6e4c5e5916bfc18cd1639d6a37a387821d20b06c444f82a48b577e8ec340`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 857.5 KB (857489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21e5268298a67923dd0178bbb3114f4758b56d0aaf932d880ee04ba433ddd0f`  
		Last Modified: Tue, 07 Jul 2026 18:12:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bbf0a7b7d787690a96b8d33f06d880d7d4621a2fa58d2deeb197cacb74b322`  
		Last Modified: Tue, 07 Jul 2026 18:12:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d7d9150d728a28c4183a8400595b4782edd98f93fd331fd82efb3a5b8da86`  
		Last Modified: Tue, 07 Jul 2026 18:26:33 GMT  
		Size: 112.0 MB (112022448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa665dad74c42e5fb31f5e63e93451189cfd29c0c0f2d8498e53210cf825e784`  
		Last Modified: Tue, 07 Jul 2026 18:26:31 GMT  
		Size: 9.2 KB (9211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04e03ab02c05cbd0f33e87b9a10cdb7143e60f709986a0c4b21a9b30526839b`  
		Last Modified: Tue, 07 Jul 2026 18:26:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da366e2cd8f18df4c4d1eb74fcda22637ec509ef531a34e846a6551e6c81cc0b`  
		Last Modified: Tue, 07 Jul 2026 18:26:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9ced53692115205dbc42b0fd8420a24d0a336dc4cb29f6a4494621278f08aa`  
		Last Modified: Tue, 07 Jul 2026 18:26:32 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03acd93bd951f573662b28e9096d6850f0b36aac2b2a3ae971797b12494b2f71`  
		Last Modified: Tue, 07 Jul 2026 18:26:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4cf9d2ae74f13d7b23dd0f50043d5ea67d754a23340c2c28294bb0c0865717a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.7 KB (638664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cdd800d6526963c204264c0b89966a4c6b862a6720e89ac426660c207be4e5`

```dockerfile
```

-	Layers:
	-	`sha256:0d90e9e462fdd9603702766691705a2373345fde31bd723b4c4b01bae2bbfa38`  
		Last Modified: Tue, 07 Jul 2026 18:26:31 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e64311a4b56488dc6ff67398a805af396aa6cc4146a9cc88b7ec3ef8024182ac`  
		Last Modified: Tue, 07 Jul 2026 18:26:30 GMT  
		Size: 43.5 KB (43497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:ebb942aff9ca2929fbc97dbc6534e2be5775b1f452418169bc19d6d899f4307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115979040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21508cf8fc4d43dc3a58eb565763c5d1006ab4a7b04cf7826c9f211c017cea2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 07:15:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 23 Jun 2026 07:15:22 GMT
ENV GOSU_VERSION=1.19
# Tue, 23 Jun 2026 07:15:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 23 Jun 2026 10:03:15 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 23 Jun 2026 10:03:15 GMT
ENV LANG=en_US.utf8
# Tue, 23 Jun 2026 10:03:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_MAJOR=14
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_VERSION=14.23
# Tue, 23 Jun 2026 10:03:16 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 23 Jun 2026 10:03:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 23 Jun 2026 12:37:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 23 Jun 2026 12:37:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 23 Jun 2026 12:37:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 23 Jun 2026 12:37:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 23 Jun 2026 12:37:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 23 Jun 2026 12:37:33 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 23 Jun 2026 12:37:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 12:37:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 23 Jun 2026 12:37:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Jun 2026 12:37:34 GMT
STOPSIGNAL SIGINT
# Tue, 23 Jun 2026 12:37:34 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 23 Jun 2026 12:37:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cac45ec548c7ccf65b7ccea57c257bf6c8aa845b1f52c0e944db730d107a7f`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca51690a6cbab005a488d9d289f0dffb8791e9037c65b7bb2f724816ea103`  
		Last Modified: Tue, 23 Jun 2026 08:10:42 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd8df36bc5f23a75817a1f7b76f219cdcb6437a8900fa4766b5375584844dfe`  
		Last Modified: Tue, 23 Jun 2026 10:56:35 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c821a46d9f863a203d39d66c8acc631329a61d26cc6fc1082d82bc9da9feb384`  
		Last Modified: Tue, 23 Jun 2026 10:56:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9bb94f520e73574f4bf6c423ab62fa2cd76988a8ec81140be3fc9f2ffda618`  
		Last Modified: Tue, 23 Jun 2026 12:40:44 GMT  
		Size: 111.5 MB (111543802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b656a77d9c6ef3ba8fce9c45f62b37cd398629a1b3dfed4e2b05437df41ec1c0`  
		Last Modified: Tue, 23 Jun 2026 12:40:26 GMT  
		Size: 9.2 KB (9210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b752abb10c0c5fe78840bd25ef2236b016d8fe76a0fdf31c7f06cf05aad450c7`  
		Last Modified: Tue, 23 Jun 2026 12:40:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65388a46a3000d554c91964ad9ac7a6c696657a71f9859f8c5a199d72569e66`  
		Last Modified: Tue, 23 Jun 2026 12:40:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ef0fe6543ac0e7887098086e9beef35d9b220d98e1153f9dc444b753114347`  
		Last Modified: Tue, 23 Jun 2026 12:40:28 GMT  
		Size: 6.1 KB (6099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fc11f78c44b4c20db47137ca8df80d871f31c22a1a9402005fd4ec80158b64`  
		Last Modified: Tue, 23 Jun 2026 12:40:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:48e0f939aa0e74d12e01a9872e103de7efbf7c71cdf14eb392ef9fe64eeafb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a40e7a528a55514cd56c65c9e1d7c5dca0f1b874c672ffb434b37aa7d321892`

```dockerfile
```

-	Layers:
	-	`sha256:495d0fb015078c54bc0f0c1c4da973572181e2f5707ad5d85201b17e1b7e9b5b`  
		Last Modified: Tue, 23 Jun 2026 12:40:27 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d70ca75953438d1b46461327d49924947ed6264f0762c846021ff0414308e345`  
		Last Modified: Tue, 23 Jun 2026 12:40:26 GMT  
		Size: 43.5 KB (43496 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:87918a998ae2a0690b2b95b625f6c95b8b22b0c199b3d3632157bc6a558f1edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120594019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d661be1ffeefe3767bcbcbbcb7bf43b06e8ee3e6b4913262fbb993dbb00ca66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 19:51:24 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 19:51:30 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 19:51:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 19:51:31 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Tue, 07 Jul 2026 19:51:31 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 19:51:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 19:51:31 GMT
ENV PG_MAJOR=14
# Tue, 07 Jul 2026 19:51:31 GMT
ENV PG_VERSION=14.23
# Tue, 07 Jul 2026 19:51:31 GMT
ENV PG_SHA256=cc7216822b546330e29c2f91e123c8734a4c41795082145bb962aa712e8c94a5
# Tue, 07 Jul 2026 19:51:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 20:22:21 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 20:22:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 20:22:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 20:22:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 20:22:21 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 20:22:21 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 20:22:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa978a98f329cd5a9272846c6277efffcca668397daa19fb7bfbfbffecdbde52`  
		Last Modified: Tue, 07 Jul 2026 19:58:05 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b248b10250edcb405aa178910efb2fed52bd617f01ecc4552d75d6209fc548f0`  
		Last Modified: Tue, 07 Jul 2026 19:58:05 GMT  
		Size: 874.5 KB (874498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e503f50438ed660979d2a8a8ceff525412b86b82f3225cfcfe25e65f1aae30`  
		Last Modified: Tue, 07 Jul 2026 19:58:05 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b098466d565f2bb8bc54d4a3566e71ac636c6763c22fa940a0a9b6d54af25ea9`  
		Last Modified: Tue, 07 Jul 2026 19:58:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f9b2971220f2a4f527490ef5c1b57edbb881bd2b28b7bbba1fd3dcb3309a73`  
		Last Modified: Tue, 07 Jul 2026 20:22:49 GMT  
		Size: 116.0 MB (115995210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4804cd2d82e63ab3dd04cd46ee674fdde7c11539c664727780ec6be683725354`  
		Last Modified: Tue, 07 Jul 2026 20:22:46 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1437d45f6f70b0c05f1d4da879f7fbacc4cb6878c44e8c8119d11e5bc2e29ba`  
		Last Modified: Tue, 07 Jul 2026 20:22:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db24e4fd2222cf6c1a3f4890384dda3cade62f403a4e547207876520337a7bb6`  
		Last Modified: Tue, 07 Jul 2026 20:22:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa73ea513e56a546f420f4b3f8649d0e20aea8411577759730c76d3fcbf8d491`  
		Last Modified: Tue, 07 Jul 2026 20:22:48 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7939a6dd8a6451a2cb7416ee38748011501c03e07c6f48223c14f9ded8af9e1`  
		Last Modified: Tue, 07 Jul 2026 20:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c014098d67f5f0fb2a3eb14cf3b60eaaebb9c70a3538248703a05827ccb9b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.3 KB (640255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953c7c63d3afa3d002a1b9c7d3312507f5ec85a3b00a728368e2283b0e99ac51`

```dockerfile
```

-	Layers:
	-	`sha256:b227c492354f4ca752db18717bc5d127d8a90f31d80401e3195f419005f271de`  
		Last Modified: Tue, 07 Jul 2026 20:22:46 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d4da8120e9592774c09fde811a99296774fdea2ea10982d0fe7f56dd4d9652`  
		Last Modified: Tue, 07 Jul 2026 20:22:46 GMT  
		Size: 43.4 KB (43448 bytes)  
		MIME: application/vnd.in-toto+json
