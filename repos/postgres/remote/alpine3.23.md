## `postgres:alpine3.23`

```console
$ docker pull postgres@sha256:885cf05d376c7cf27afef02073e6bdac3841252537f16e244fd1c1e6a7c99fb1
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

### `postgres:alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:3928680cee9028902891672c0a6ce84de58ed3eb1b987588e7c9424d8f08d21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119568856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc72d79b4ea60df4943193bbeac2a0c84f4b6bd8c536680f6d4b14a94b272d41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:27:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:27:25 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:27:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:27:25 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:27:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:27:25 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:27:25 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:27:25 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:27:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:29:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:29:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:29:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:54 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:29:54 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:29:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:29:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:29:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:29:54 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:29:54 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:29:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee617705646fb5b014ccd292a934a28490a5d717f7dab003877fbe143529c4d`  
		Last Modified: Thu, 17 Sep 2026 21:30:11 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab817f883b188e24eac653d3a551e6313474a52f08e062a20f5934b91e1e0213`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 901.4 KB (901424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f35d6fd2cdc424fc5c25f3b4161ee1b7094bbd9d434723faf7622404e6469f3`  
		Last Modified: Thu, 17 Sep 2026 21:30:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6597b1f49ae1a2fd486f695b07d8597dc3aa1a65378b1d1fd5d430c99351a88`  
		Last Modified: Thu, 17 Sep 2026 21:30:15 GMT  
		Size: 114.8 MB (114792415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a7e33e0e3ced653dfda6920baf4ac3f6b75b1d0074e580402e827a0ded2213`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1062dbff1b86e62b8cb2e14e1e325e2cc65c099edc0c9cce6ebf5c4abfa93907`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322c3a77f03902334e16264ea1ead1dfab3e19128d2103449fada37fe0df0bf0`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a275c3192929d5b5ba27b1d632ca4d234563eab41921ef3d1adeb127cf46d96`  
		Last Modified: Thu, 17 Sep 2026 21:30:14 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e651986ff686fe5d69818b9c6ccbe8538b6273af8e01bbf7c367be8782da9196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.5 KB (656508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59862392519584618b6f99c972e4e808acf78311be081e1d7b3b129f7dd35c5`

```dockerfile
```

-	Layers:
	-	`sha256:8511d375de7529258252067190dfc2cbbc7c462da8361c3d142f894970705cbc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 616.4 KB (616382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1c21ddc13094e79832cbecdc2303f9eb55fc2dd7152fb422164c5c0ac28082`  
		Last Modified: Thu, 17 Sep 2026 21:30:11 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:622f79833818a56cedfe324bbb9c024d7b45feaa7a60b62b0de7022be6a0b1fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115735755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb584b0b7ddde68cf55923a463273e0257197c4441fc347855691619d72ac3ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:44:24 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:44:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:44:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:44:27 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:44:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:44:27 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:44:27 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:44:27 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:44:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:47:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:47:29 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:47:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:47:29 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:47:29 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:47:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:47:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:29 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:47:29 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:47:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d489f3ea4fdd4d0d2104e0f2c85fa0514ef9f89f9d7f9dbe4c4605f3abbae8b3`  
		Last Modified: Thu, 17 Sep 2026 21:47:41 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f684b46f6decd9ff6bdb877d540c09aaa5e5d0bcfa8a768434f4802ed0d8c8`  
		Last Modified: Thu, 17 Sep 2026 21:47:41 GMT  
		Size: 865.0 KB (865035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcba413beed36a12ce4456ab9100f2456cfbb8c1839174c65e24a7a47ce146aa`  
		Last Modified: Thu, 17 Sep 2026 21:47:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908711a684a8131b657fb20fc5d393934b0530171b4d987eb83babcf6883cf3c`  
		Last Modified: Thu, 17 Sep 2026 21:47:44 GMT  
		Size: 111.3 MB (111289286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea10f1f5a9faba22291c96dc4bfe86c795c551a05e5a1956b4250549212d907a`  
		Last Modified: Thu, 17 Sep 2026 21:47:42 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431013b8a27f8fa00820ae227993ab59ac8aae059c311009230d743c38fc976c`  
		Last Modified: Thu, 17 Sep 2026 21:47:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5388f86a26bef6686ac69f38acbe7f8edd24b46d7e0b8fe0ba9216871f29272d`  
		Last Modified: Thu, 17 Sep 2026 21:47:43 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1760d490d986c4c4534c8c3215ef36444efdd07ff9c7fdf6f1cca7acba97aba`  
		Last Modified: Thu, 17 Sep 2026 21:47:43 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c9100491a83a5198174ea23388ea5c5d8075cb13dc60aa53a5b8cd7fd4d3bafa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 KB (40059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1471b10768abe5e9ad5e5e56b6d2958da1826ea7ef3076cd9a16eba5b70e6c19`

```dockerfile
```

-	Layers:
	-	`sha256:212b7d256d4abc86f3af31f0dd5e5d9717950bb3cca38f636378e902fafc95b8`  
		Last Modified: Thu, 17 Sep 2026 21:47:41 GMT  
		Size: 40.1 KB (40059 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:e61afc1fc18c53ca298beed7591b873504a8afa177c68416a855556307729666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109294378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d073f97be4014d66e1f0e015f42f48c72535a58844e36987326b2a7180f31e63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:43:58 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:44:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:44:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:44:01 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:44:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:44:01 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:44:01 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:44:01 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:44:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:46:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:46:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:46:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:46:45 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:46:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:46:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:46:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:46:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:46:46 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:46:46 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:46:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a10d929e81d17729671433b0dd8dffda9c61dd8ea3aae292b7799326ecd03c`  
		Last Modified: Thu, 17 Sep 2026 21:46:59 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d201f374933abdf29958ca595fe886dcded8ac32ddde235dea64a32b7ff278`  
		Last Modified: Thu, 17 Sep 2026 21:47:00 GMT  
		Size: 865.1 KB (865058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a64ae5249d672a9dccd01ed51b5b647594f6d87fc3b77550f3fcf3dfbe71abe`  
		Last Modified: Thu, 17 Sep 2026 21:47:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298ac85096b8b9a5ea432e69ebd039039fb555f928515624dd37e0332cfb3f7b`  
		Last Modified: Thu, 17 Sep 2026 21:47:02 GMT  
		Size: 105.1 MB (105139890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f032e2c6d6c1ad9f2ab2e524c0caef6450406645c137589d9696ef5324141e`  
		Last Modified: Thu, 17 Sep 2026 21:47:00 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fb02b1de36080b4d85203e2d0eaf88d4b17f0e7a360e307186acc4f7a32785`  
		Last Modified: Thu, 17 Sep 2026 21:47:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8866c3c0508d709c033245b846a4197d2e3d93834b625bc60a304e5fd07e8a9`  
		Last Modified: Thu, 17 Sep 2026 21:47:01 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2531e441f34dd7ef63c1c50a2b5fe089166e67da064471690b74f6370166575`  
		Last Modified: Thu, 17 Sep 2026 21:47:02 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2778a231677684c9c5f007d47af149567ae3b63a1ee873260da38db80626b665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.0 KB (656035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7391fc12b9c28e30e5ef9719f971b737d376bfb8f20d6aacf8df047e889a2073`

```dockerfile
```

-	Layers:
	-	`sha256:5f85f01364cc5bcfb2ae6ae2312e0cb87e4ef24c56f90be4f447ff66a8acd96f`  
		Last Modified: Thu, 17 Sep 2026 21:46:59 GMT  
		Size: 615.8 KB (615760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4073daaa9ad0aa1eff2e46fe3a5b751a1f937c9a0a30caf691b7a4be54adb72f`  
		Last Modified: Thu, 17 Sep 2026 21:46:59 GMT  
		Size: 40.3 KB (40275 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1d70b0960b2d1c39a0a82cda0d19d78b9b676d64b2120efe82631cd9768d1814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117392243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:737bcf12fa73781be086d5884ac3982af953a9784e27ecc32cb8d8a97ca557de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:28:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:28:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:28:36 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:28:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:28:36 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:28:36 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:28:36 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:28:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:31:03 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:31:03 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:31:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:31:03 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:31:03 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:31:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:31:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:31:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:03 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:31:03 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:31:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf39f2f4e91d2957cd1cf98e58a4e3c58c61fb05cac19cc8f52436c2b61ee4f`  
		Last Modified: Thu, 17 Sep 2026 21:31:19 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bd38c1e4c469d00ca346d9704ddfcc102fd2759490cfc65a6f494811b685b3`  
		Last Modified: Thu, 17 Sep 2026 21:31:19 GMT  
		Size: 853.4 KB (853410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b118f2c42661699b2fd5da3aa8a72ef3dc702cf7e85f8f6424da43ca247ecf`  
		Last Modified: Thu, 17 Sep 2026 21:31:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aaacd1b534b4c3a0969e9c0fbc5e01f629e311c277ea0021828b5f6b5b314fb`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 112.3 MB (112326269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9adeca8f3b12cc53fff366725b5b6480ec7fd1c7a7fc66c19354e6ac4cd088`  
		Last Modified: Thu, 17 Sep 2026 21:31:20 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7098235fdb6ff05bfb94739d44e12149433f31bee70933135ae6dcfb5c6e24fa`  
		Last Modified: Thu, 17 Sep 2026 21:31:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc94a3d14abb32bf5096cde37d23249f35e1cc159b62e7285d3f15fe02d069`  
		Last Modified: Thu, 17 Sep 2026 21:31:20 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b9f81988dffe4bdcb95e126e960e09e81ee6822aec6c3a91338f9923de4712e`  
		Last Modified: Thu, 17 Sep 2026 21:31:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5b61784f6224c1c67c5d47e0e12931138ef89af0a399e94509ddf0058414fcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f3a9be6a64089ad85dc620ac7377f2bd0b64b0047a5491ca65136f3ebb1751`

```dockerfile
```

-	Layers:
	-	`sha256:d6c55f5a510893cc4f4066c0ebf1e07fb8ac2285fd6c86e0f120b72636771394`  
		Last Modified: Thu, 17 Sep 2026 21:31:19 GMT  
		Size: 615.8 KB (615776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5b1a2969f4bcc99ef26c9a821b08b7a6c9717d6a1e82ef95bad4235b0102e77`  
		Last Modified: Thu, 17 Sep 2026 21:31:19 GMT  
		Size: 40.3 KB (40307 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:aec54c3717b843c0cd18eb349750a11682610fa4aa51929513aac3616c4718d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126370898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f32c18ea535fad4bf48ae9f1a435cd63399aa414e888b0dbdda471cfd50a914`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:02 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:29:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:29:02 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:29:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:29:02 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 21:29:02 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 21:29:02 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 21:29:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:31:27 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:31:27 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:31:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:31:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 21:31:28 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:31:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:31:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:31:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:28 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:31:28 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:31:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba2f82026b49e0400a42de7b5c01dd1f1f241e083ea9d1eac4c2a4f2670a546`  
		Last Modified: Thu, 17 Sep 2026 21:31:43 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ef27e44711984e5057d8c7592b1ed2c92eb8bddecf108c1825e089c5277e3d`  
		Last Modified: Thu, 17 Sep 2026 21:31:43 GMT  
		Size: 870.3 KB (870310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1aa128387a4106437f42cee607226e45bfb8324007301b671af1005de3ab1af`  
		Last Modified: Thu, 17 Sep 2026 21:31:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3d50cb943615e403d1412923d8e66a21985e420de40b2709225dac92d516b9`  
		Last Modified: Thu, 17 Sep 2026 21:31:46 GMT  
		Size: 121.8 MB (121798963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbba3847dc98f82c5f83d7e98f837d6a00391a8e065dbaa996e2d1e8a7f961f6`  
		Last Modified: Thu, 17 Sep 2026 21:31:44 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d329bd50c61675df99d7745b89f94cb549695f4edffc63d3b39933ff1aa16d`  
		Last Modified: Thu, 17 Sep 2026 21:31:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89471e4ad54209878a08795eaa11694d3c9f1d55c4e965e2ca78d10dc85ae4f`  
		Last Modified: Thu, 17 Sep 2026 21:31:45 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516c7f4f59d4da2a30c7f81d41b60d18b796a3e320910cb88573b6b209a684d8`  
		Last Modified: Thu, 17 Sep 2026 21:31:45 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c055fab7216f594e38a642ae66062bc0670a59f85309ba612a294b042137924a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.4 KB (656445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a8a1d0a20e94f966cadc3c4c76941efd03e179ca98b61a5b80566c9e55dd94`

```dockerfile
```

-	Layers:
	-	`sha256:30fba5d051205b86bde8a8acbbb3a1a61167f6ae97455f4deab2a4885c87591b`  
		Last Modified: Thu, 17 Sep 2026 21:31:43 GMT  
		Size: 616.4 KB (616362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17dcc41d2b594c4f9e0f153cf4aafa02d14a513b130e2a99f4b90764a8371bb2`  
		Last Modified: Thu, 17 Sep 2026 21:31:43 GMT  
		Size: 40.1 KB (40083 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:43d2b2d2c6d9873ba61802ec0868be59a8dba476910488b9f6902b2dd877ecea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122535719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d470afc8fee46408d0478671aa84deb30020b3d009aa169931352850635f1633`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:14:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:14:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:14:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:14:52 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:14:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 23:14:53 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 23:14:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:22:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:22:33 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:22:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:22:33 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 23:22:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:22:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:22:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:22:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:22:34 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:22:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:22:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8490e968633285da4722df0a549c834b8b848638ea16b615e12ec9bce1e87`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52bec7a9608ad9121937e70d51608f40e8b92fdb40dcee763860e731251a99f`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 858.7 KB (858704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6caf251ae46b9a02b5b829deb8eabbc8cc9d7bbb5b617106a91e03b3cca3a5`  
		Last Modified: Thu, 17 Sep 2026 23:18:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423156eb3bce101811a60f0e4f962612e99f5272f4adb79d1676c15916acc659`  
		Last Modified: Thu, 17 Sep 2026 23:23:11 GMT  
		Size: 117.8 MB (117835727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c26fa31216f02c78ea28e6ad7dd3e7771a5d8def194f0b59e666c3a580b8000`  
		Last Modified: Thu, 17 Sep 2026 23:23:08 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bc5b9681b76c99a2a2ee185c68c49ac57c257d2b122d3f3ce803d90bcd148e`  
		Last Modified: Thu, 17 Sep 2026 23:23:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35bacb63ef2768c7751e620e1e1cde56d2376e6a38cc9e590f9e821dba22a3d`  
		Last Modified: Thu, 17 Sep 2026 23:23:07 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69813942ebe734588aefdda0ef82a0ed56da317ba2e943559fd55f808f3f52c8`  
		Last Modified: Thu, 17 Sep 2026 23:23:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c8976e73565425f711cbca83ed448e0d774ef477bd30f1718af702f619521519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.3 KB (654273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9514764207a7b28a595cf3b3c6f02d5b3f535c3c08a0982341c593a88ed4c4`

```dockerfile
```

-	Layers:
	-	`sha256:7004ad1ee5d55ab5cc1099d37b8478125be518e7bf9d80200cf7fbdbb2bf25f0`  
		Last Modified: Thu, 17 Sep 2026 23:23:07 GMT  
		Size: 614.1 KB (614097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bbc2406c2293dc52610f172e9f63c4154c0d033cfd171364e32fceb391c1fd8`  
		Last Modified: Thu, 17 Sep 2026 23:23:07 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:9beba17f7130eeb81e6c06bb019ce8d11614c60c9b46b99c4f96ebcf6f5964ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122030130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f054e5ebb12a167f39f67a82116dd8ff976ed34f5787d118fbded768d9b6681`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 20:31:39 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 20:31:49 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 20:31:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 20 Sep 2026 20:31:49 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 20:31:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_MAJOR=18
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_VERSION=18.6
# Sun, 20 Sep 2026 20:31:50 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Sun, 20 Sep 2026 20:31:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 23:20:56 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 23:20:56 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sun, 20 Sep 2026 23:20:57 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 23:20:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 23:20:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 23:20:57 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 23:20:57 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 23:20:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8a761f8a87c5c65a694024787ae03651c84bf52f0f42da827bee3487714311`  
		Last Modified: Sun, 20 Sep 2026 21:29:47 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb10f0f8fc86c1a789af0737c955d8428ed58f1d483b1ea7faef556bcd0f4bd7`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 846.3 KB (846294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7472805e2cf4ef16db4e5b0b13c2d045ac286c6e348ee8da3884fc799fe0cfc`  
		Last Modified: Sun, 20 Sep 2026 21:29:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65115e3bf80d8870901a798300481b36f24acf5e2a4c96855ee1ec792c5b518`  
		Last Modified: Sun, 20 Sep 2026 23:24:22 GMT  
		Size: 117.6 MB (117580983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91b04de44c71dc9c533c1c5d0c262175137bd3047e0f4ca04b7c2a5b9756868`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148c43a992ef350f8655257e4b8a0d8c2ca79e60e5ac0d10aa3b2d0d629bca45`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628fdfa4808f59e4d0702dba43188aec1f5d4b8bc21e5e6ebf7f2ef02eaafaad`  
		Last Modified: Sun, 20 Sep 2026 23:24:04 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8b0cf59775165f31015915d1bf54ffb3346d81000bc15cc81f65eb13e826af`  
		Last Modified: Sun, 20 Sep 2026 23:24:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:3cea3a0b6edcbed92ba621e3b91377d8bd7f597be828337e9a8afd15fd9dd581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf46d883eb6b57aac268e0068c9d1abec541026d8da57c4047ceca6c318519e3`

```dockerfile
```

-	Layers:
	-	`sha256:22da100a9b420c4a3d5a34398e6fe19a13fe1dc7b801ba2c7fb4dc8ae9e8474d`  
		Last Modified: Sun, 20 Sep 2026 23:24:04 GMT  
		Size: 615.8 KB (615755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4e1b781b279648ea9bea07f957ed679d2296402af77a13552e5ff04de404626`  
		Last Modified: Sun, 20 Sep 2026 23:24:03 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:c4b6943a11484c8e8933f39080b59a44bb6ffe1de3462a3da2dbef152ca86fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126158882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:707f180601c9a8842b0326bcf1fd8a4c3632c844381eb2ebeaba4ca0fff77ab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:06:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:06:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:06:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_MAJOR=18
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_VERSION=18.6
# Thu, 17 Sep 2026 23:06:55 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Thu, 17 Sep 2026 23:06:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:10:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:10:36 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:10:36 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:10:36 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 17 Sep 2026 23:10:36 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:10:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:10:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:10:37 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:10:37 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:10:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcbaa7a596793febf23ff4276c1f2163f8ebbe953ed79228303642170f8d3db`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53dfb91d02989f8bb24fd2c3a954f91f88fb914e0686c18b224e1246716c34c2`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 875.7 KB (875713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7998a8b3ac38bff3dc514f8ed744e229e0fb1810e2dbf54b7fe0e2f42df179`  
		Last Modified: Thu, 17 Sep 2026 23:10:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26614444716275c84cfd6d343e381887a91b4f14b9996b85d2ba136cd9be8a6d`  
		Last Modified: Thu, 17 Sep 2026 23:11:01 GMT  
		Size: 121.5 MB (121543394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fee28c3255f6f6538f333793ae3fb5cc37528d02c956cb72ec3daffac31a028`  
		Last Modified: Thu, 17 Sep 2026 23:10:58 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1d13409ff6aa1b132326c1a74c880639bc1a6e92f033f16ef68422243c203c`  
		Last Modified: Thu, 17 Sep 2026 23:10:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92405abbc9192746f3f0529c0a167352094837c6e87b23ea458367b7bcbb56b`  
		Last Modified: Thu, 17 Sep 2026 23:10:58 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1aae0ac5e80ea0ad6d0fbaa7651d0c1e80ed5252bb0d1650efe277f1cd997c`  
		Last Modified: Thu, 17 Sep 2026 23:10:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d52a2ed5dc8fdbffd122f78d30ade80c915f6fd2d2dae8acb0208b0b49f6f9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b441ff93095266a6520c6805e60d63977529cb5cb60e85f5a2c22a140442df6`

```dockerfile
```

-	Layers:
	-	`sha256:ef275397b7d089cf586f323b03603cfd02ae7f5e525ac557e77925e6f1ac78b3`  
		Last Modified: Thu, 17 Sep 2026 23:10:59 GMT  
		Size: 615.7 KB (615731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bfb6da1369885425c87e11439a0cf03d3d7c1872e7927ff8b9aaacfd67273e2`  
		Last Modified: Thu, 17 Sep 2026 23:10:58 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json
