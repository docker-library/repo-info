## `postgres:17-alpine3.24`

```console
$ docker pull postgres@sha256:eee6c6e1b0894fa4fe0075eb054af9fd1cf39a35321c2d4110626cfe506411fb
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
$ docker pull postgres@sha256:e4cb93687b062cd25a0e8f672d85a7708235009d70d31f8a7698d9370092a9c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117192593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab20e934b27ba3ff927c1b4c9ff8cf6c32f315f743efe68dd3441182a87fb085`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:54:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:55:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:55:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:55:02 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:55:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:55:02 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 22:55:02 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 22:55:02 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 22:55:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:57:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 22:57:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 22:57:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:57:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:32 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:57:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:57:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9098654d337792c4c42bd3a73896b70a6c248259ccfc5f684857a3fa19fd93cb`  
		Last Modified: Wed, 21 Oct 2026 22:57:48 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddde5442af41c3b2874cdc2863276d1f33277da66d1975001cb5fb390de9a7d`  
		Last Modified: Wed, 21 Oct 2026 22:57:49 GMT  
		Size: 900.0 KB (900009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5e490e3893d7bb6a7df997363332968f49564a1611dababd7167839c3e9dc3`  
		Last Modified: Wed, 21 Oct 2026 22:57:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694a01b64034f0992326512adbafc93dd0b318fde13b91ba7b59f3af999cb169`  
		Last Modified: Wed, 21 Oct 2026 22:57:51 GMT  
		Size: 112.4 MB (112421798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a82a00c713d2e6c6d07e73d5d08f852985a3a3fe4a2be1a32049b122ba5c40f`  
		Last Modified: Wed, 21 Oct 2026 22:57:50 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e09b1bfe5f8e510b39401758b39f0772bfd98fa267bc7064f99dce925d7535`  
		Last Modified: Wed, 21 Oct 2026 22:57:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e018eb860c5e472edb8e38c5ed9bb5ddd5b9d979da4dd2b31729d167b56d4b03`  
		Last Modified: Wed, 21 Oct 2026 22:57:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e975d661d7f5f28eed5fb0d019fad8adf14789168c029a65c9da779e518835`  
		Last Modified: Wed, 21 Oct 2026 22:57:51 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf1ad711f76c3f7ba71d3bc71bd9f7535692290948731b61e44b6d96b23c4e`  
		Last Modified: Wed, 21 Oct 2026 22:57:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:a0efbbe371503ceb9e55a5a8b6647f85a643e255301f06a498a50ffe27c9497e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 KB (639729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685baff1d543f179d7715db19ae9d409d225779b7448811535aaa2e4688d4325`

```dockerfile
```

-	Layers:
	-	`sha256:e22336567ca82bbce70c59b0a1108e540e7e10f0fa9bc03f44e52a2c89f5121b`  
		Last Modified: Wed, 21 Oct 2026 22:57:48 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:112f26c8faed00123003307665b68a22933235bdef123e8c527ffa535e28f80a`  
		Last Modified: Wed, 21 Oct 2026 22:57:48 GMT  
		Size: 41.7 KB (41687 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:7f5072e1d42dd60828444377475874453ba6c77f69bf46b1421901864f3c8003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113386126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1472fddd1cba2d86ab72a818a64a08758cc90822ead371477434e939638d3c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:24:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:24:37 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:24:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:24:37 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:24:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:24:37 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 23:24:37 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 23:24:37 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 23:24:37 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:27:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:27:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:27:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:27:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:27:53 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:27:53 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:27:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b834cc2b0ed9d7ff85e0ff13182aee0f5d39ce9d7b56aa75c7f359ebeae461b`  
		Last Modified: Wed, 21 Oct 2026 23:28:07 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba32b80d86db0d78c6f532d0c874c0410c60b92ed9d3d98b2501506a9b0fc0ed`  
		Last Modified: Wed, 21 Oct 2026 23:28:07 GMT  
		Size: 864.5 KB (864499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abb8727e2d1bb8e1d17be5f61482606b85399c0f87c6fc289eaca340c8d939c`  
		Last Modified: Wed, 21 Oct 2026 23:28:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a728f58f6a75571c72d21a0d5e449237412a42772420be9ba3c1b033ba220c48`  
		Last Modified: Wed, 21 Oct 2026 23:28:09 GMT  
		Size: 108.9 MB (108945668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc218643726d653be764c1d4165009625f404a9c5f6bba8a430d75fc2524c50`  
		Last Modified: Wed, 21 Oct 2026 23:28:08 GMT  
		Size: 10.0 KB (9998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f79de87b93462a63c58378f4320cdf993a44f54b1c796688a3722fb50a6249b`  
		Last Modified: Wed, 21 Oct 2026 23:28:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdd39b888ea923a634decc53c99c6cfa55217c7f01b2bdbf59e4f179a280480`  
		Last Modified: Wed, 21 Oct 2026 23:28:08 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6069bbdaeb50bd64e1567581b6a13ee9d727a3bc738722f865b95368aeb99d23`  
		Last Modified: Wed, 21 Oct 2026 23:28:09 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a079e2c0d8eed97a414cf4db64f788f28ce45884c9c9e156a79c261301c1641`  
		Last Modified: Wed, 21 Oct 2026 23:28:09 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:def70ef1a060a2719d4f9c8c96d4280e533e3a3404fb17be919f777d3cef8497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513e606b86e323d10a17bf441ce2ed8eda6c02eedd360dc03bb77dc74cde63b3`

```dockerfile
```

-	Layers:
	-	`sha256:ce845a569ef9e1e826b02d542828ef9d679c5ca0158e504c49381ef2158e791d`  
		Last Modified: Wed, 21 Oct 2026 23:28:07 GMT  
		Size: 41.6 KB (41643 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:78123beb4fb45d8fc32b7d72157675fedce12c23c4d121fcdb10e8370034460c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107064817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a4fb2cd01ce04c7124c4c298c1e51165acdc1c517d082a09628fe9d381c384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:38 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:28:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:28:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:28:42 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 23:28:42 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 23:28:42 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 23:28:42 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:31:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:31:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:31:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:31:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:31:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:31:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:31:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:31:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:54 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:31:54 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:31:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e27b1bb02ac1f47085c5f94261966ef4eee2ebde5adc8631d67a5ccdb6fef7`  
		Last Modified: Wed, 21 Oct 2026 23:32:07 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b38f1aada207330e8e638e689df9300232a8de1e3f278a1b87422f352f5824`  
		Last Modified: Wed, 21 Oct 2026 23:32:07 GMT  
		Size: 864.5 KB (864519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29afa0abdd66898d1f4ccb4678ac8bc3b5e14c5a91f28a574cd22c9649250af0`  
		Last Modified: Wed, 21 Oct 2026 23:32:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f3a8da9f75673b221a3d5059067cf1b970be0c01b8c60c3940d03d6daacf12`  
		Last Modified: Wed, 21 Oct 2026 23:32:10 GMT  
		Size: 102.9 MB (102915961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea4786c6b682db6609ed1471b9da5376c77b7dc0a6fc6f83f4a39eae6a68bc9`  
		Last Modified: Wed, 21 Oct 2026 23:32:08 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57d554e32ee9fc2a872e48b6c5de33bbdca4da94288f64eb60b8d87baaade0c`  
		Last Modified: Wed, 21 Oct 2026 23:32:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db1c833e9fe15526e7e0c3d7775c6584d919769c3ca412caa5bbae1111dd23`  
		Last Modified: Wed, 21 Oct 2026 23:32:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3169318178cd0ce19774da2102690e0a178b0d8af8b525d08845c11f8d3bc37b`  
		Last Modified: Wed, 21 Oct 2026 23:32:10 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b3a554b28cf81cb7c5027a934568e8355c5177484bc64398664f4409095b6f`  
		Last Modified: Wed, 21 Oct 2026 23:32:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:c2641da1f691a5b4c4a64999a742fc6733a7d3204dd508006ece488eb40f8c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.3 KB (639286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea55ae5f4f72c1545586f188fdb1578e2461dde580004325fd61f69a4c1bafe`

```dockerfile
```

-	Layers:
	-	`sha256:90ff50df94d44d7e8885744a9f0298cb72879f32ab71256b20b75ca80dac509b`  
		Last Modified: Wed, 21 Oct 2026 23:32:07 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eaaea53ebb6436142ecbfccd4b1c6b29e067eb640703c7fe08c842e3887d26f0`  
		Last Modified: Wed, 21 Oct 2026 23:32:07 GMT  
		Size: 41.9 KB (41858 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a717692f944862397bd102c6abee9b3f7927adbf7ee5f3a93e50b65aea0c5396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115022321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9355df27b2506973cfc421408623435f15298511c2cdadc502b7aa580efe611f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:16:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:16:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:16:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:16:58 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:16:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:16:58 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 23:16:58 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 23:16:58 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 23:16:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:19:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:19:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:22 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:22 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c7f3691cfdaf3ff607768743fbc4f6f6f820be789f5d462f9773c8f945e365`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdff7ba04ec2a369a6249a8daeb395e782f814c836b4bbbf3adc8ad1598bc6be`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 852.0 KB (852046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0726ede4e612a6bc1b1248597179ebdb9a96b680aff5f5ffb82860e99492ffc`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8579990231854b358bc8604f733497269ec474405037ce3227618fc385362edf`  
		Last Modified: Wed, 21 Oct 2026 23:19:40 GMT  
		Size: 110.0 MB (109962104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de04653bc6d3523c997bc8c1ba2a1f96d69bfe507f7ee1e1b71e68c87b3219b1`  
		Last Modified: Wed, 21 Oct 2026 23:19:38 GMT  
		Size: 10.0 KB (10001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcdc69e2fc2bf9276df9d7060af101d0340b571d5c142dfa6fe5339e3fe9b9a`  
		Last Modified: Wed, 21 Oct 2026 23:19:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25a734515da751d980312431cad9b245fb1fac9d2bd3a65fdb4db5a64a39389`  
		Last Modified: Wed, 21 Oct 2026 23:19:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8b41da5c5d8d428d6a8b319fe3fa562eee4501f38745170c5491745cafea14`  
		Last Modified: Wed, 21 Oct 2026 23:19:40 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0701f72a22359a6bf4c9ee030c01c37273d456272d459bfb5b1ce308de0d7d`  
		Last Modified: Wed, 21 Oct 2026 23:19:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:1aecca65c66f7e071a16d017c87fcbf34b6483f4f93b441adf6c5aebb6460b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.3 KB (639349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31aaa2da537660b4b9df775d5fd5dc8696845e5c1b445ab16a710f43af876d28`

```dockerfile
```

-	Layers:
	-	`sha256:3331a1ebee6ba9acad078b267a3d8a7857fe633cc79a38a51683ab4255d0ed01`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e1f90ee18159e20f27be1eb3a882742dd67aa95f96fc624e5d256b876de2d8`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 41.9 KB (41901 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:4200544fbcd9f8251d4cd0281b0f4ca699f152fdde6a024bed8390d6c80cf079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123908026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48e353fea559e6fb188a1b2ff73570c3f273d6768b4b826e2380648bf3c0645`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:57 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:18:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:18:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:18:00 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:18:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:18:01 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 23:18:01 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 23:18:01 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 23:18:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:20:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:20:51 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:20:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:20:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:20:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:20:51 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:20:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:52 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:20:52 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:20:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e315b77841490dcaa542d8fcfba618d01bb35748705f2b722dda9329210229`  
		Last Modified: Wed, 21 Oct 2026 23:21:09 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023be0c855690f7f905f5fc8866fbecbc15604faf5ab87b2b6fe3d28c079db87`  
		Last Modified: Wed, 21 Oct 2026 23:21:09 GMT  
		Size: 868.0 KB (868016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108fd90e881c32fc40fb3d276e88fe1c73ab34f997e9204440ca67e8cc0fafd2`  
		Last Modified: Wed, 21 Oct 2026 23:21:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51934b083a90cde949a48366940b4e48daa803422cc9714d42cfeeed69faaa99`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 119.3 MB (119343342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720d29f7899566ca79df1ecb150f57656f6fefe4d893e6577b034788125e6456`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d8fe9be4a77985debd5a4ee26feff80d5006777e72063f33226a542b6df352`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4625868c4f18d64c4ea2d169fc5f5bd388edf34337c91a738b02f5e74c460bc8`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b079034fef8ee5e466f531f2fcd1deeb167760984e1217b1e8b72edc4c190ac`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c63b2fff20f4d1c76b4c5b8a3be07c8108e7472448591d4466a6cccbe0f6765`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:28b7df621baa1afc77124967cd5b8b15f446ac3ce8f01528e3ef8fff6a9f8dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.7 KB (639658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75b9cfc3a0f5e7498f6e46b4c11810c7a7066ad651d58bc82ceb2376ad0d1ac`

```dockerfile
```

-	Layers:
	-	`sha256:82c524f72ead9ba28c2a6540d893120a20e8ff14ae9a271b1ea245aeace914a5`  
		Last Modified: Wed, 21 Oct 2026 23:21:09 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:175c6703f1b09031f45c14440856d249e4900ee20bc44d0bf4b46124027e64b3`  
		Last Modified: Wed, 21 Oct 2026 23:21:09 GMT  
		Size: 41.6 KB (41641 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:89249094fe7391fd08376c5bf05a14f6bf115d023a9c8dd2ac1df7430ac211bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (119962243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402f3f0833d7e0d1e11e7cbf1cf339fc199093cd2a6de8edc5db09d6cda7835a`
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
ENV PG_MAJOR=17
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_VERSION=17.11
# Thu, 22 Oct 2026 12:40:44 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Thu, 22 Oct 2026 12:40:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:05:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:05:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:05:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:05:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 22 Oct 2026 13:05:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 22 Oct 2026 13:05:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 22 Oct 2026 13:05:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:05:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:05:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:05:17 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:05:17 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:05:17 GMT
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
	-	`sha256:6930df6dbb6e0b6af7a2ba10dbdd9d5820f6f4faac6eacc3dd7625db5a8962a6`  
		Last Modified: Thu, 22 Oct 2026 13:06:01 GMT  
		Size: 115.3 MB (115266535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c400b1b7058b5de0116a5a1752bb73ed2c76e56db1e31d67594a9598edde2bb1`  
		Last Modified: Thu, 22 Oct 2026 13:05:58 GMT  
		Size: 10.0 KB (10003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a2c2355d2fa65a721990c43c5b505f785f93f12aff963e8992b66539e2782f`  
		Last Modified: Thu, 22 Oct 2026 13:05:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0956ac04bc12f30a7f766da09960565de2981512eaf1250e0a66a4ac2eda62`  
		Last Modified: Thu, 22 Oct 2026 13:05:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6089c9527bc144ce4b01724225c908ab94928750fad0c4e7f39c7510de447c`  
		Last Modified: Thu, 22 Oct 2026 13:05:59 GMT  
		Size: 6.1 KB (6114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102ec34081a2f940a9ae98b6e473e6e4fb0bb4a1e7a9e1e2a868d6b9e637c6a2`  
		Last Modified: Thu, 22 Oct 2026 13:06:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:040a8fd05d29f824d7a2b3202cbffc8eeae65ad0b332a2e6b8ab9aa136dbfdc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.5 KB (637512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f06a2441203c5d98699f948c77bb9e80176fa12031d0a961f4db5b467ca26bb`

```dockerfile
```

-	Layers:
	-	`sha256:3bd5d27cdc4cabda5215361760af934abd5bb835eb31b9141f781d9a42f6fb7a`  
		Last Modified: Thu, 22 Oct 2026 13:05:58 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a759f7a42ddd4b3dff91d340441813a595568a8d9dd86dc8d3351d91280fea99`  
		Last Modified: Thu, 22 Oct 2026 13:05:58 GMT  
		Size: 41.7 KB (41749 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:8c0b0c721d8eeb21dc9f7aaed7a9c25a93faa867f2f4e8f4f773b97abc03d311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119422450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb4acebfa0da6d53923617da390a19aa6cd3e383d155d59b3a1cf4e99bcd0c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 19:32:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 19:32:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 19:32:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_MAJOR=17
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_VERSION=17.11
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Sun, 20 Sep 2026 19:32:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 21 Sep 2026 00:22:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 21 Sep 2026 00:22:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 21 Sep 2026 00:22:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 21 Sep 2026 00:22:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 21 Sep 2026 00:22:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 21 Sep 2026 00:22:16 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 21 Sep 2026 00:22:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 00:22:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 21 Sep 2026 00:22:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 00:22:16 GMT
STOPSIGNAL SIGINT
# Mon, 21 Sep 2026 00:22:16 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 21 Sep 2026 00:22:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e8f6cc689b5a966301671334e29cbee0f06b74064549ee24393aec57187b2`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec9352b57bff085fb0a8f2fcff7e1c43c56221519b792aa6ea943bdea75820a`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 846.3 KB (846279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f38a78ad5cdc11334a5a5244b4ce336823fa996ba02ae7b8209481ae5772819`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c163595adc4b204a38a101a63fe478022ad93990a88f19862cf25fe3dc0efae`  
		Last Modified: Mon, 21 Sep 2026 00:25:35 GMT  
		Size: 115.0 MB (114983107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746e727a4f6ccefa78c41007712d6303faf825d50bb0588b4528b511031907b1`  
		Last Modified: Mon, 21 Sep 2026 00:25:17 GMT  
		Size: 10.0 KB (10006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91751b2b675ddd15e16fe3664286ec12c44b2d7424438e785395c46f3158d1bc`  
		Last Modified: Mon, 21 Sep 2026 00:25:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53dc6274dfd7a39d79b01315ec02c3d4b2e5d147812aed2431dad0046089bec`  
		Last Modified: Mon, 21 Sep 2026 00:25:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a7cd6ea07be1abd12f11361c9e6de53c46e852868ce43016beb7a727398efb`  
		Last Modified: Mon, 21 Sep 2026 00:25:18 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1b9647b6b76ecf1eabe4b5e770a14aa49623a902519fe0fa33d5a3c2f2fb1d`  
		Last Modified: Mon, 21 Sep 2026 00:25:18 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:dbf91911a93e27551f9a2488e691e942e3dc954385cdd76a61219bdf338a7bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.2 KB (639171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ed0bbd29c0c7a5d7a946fd95cb1b6f0c1eae86361dd82d45e77d5d286eaea0`

```dockerfile
```

-	Layers:
	-	`sha256:33ef5ffef683e7eb14641a2e9789a2e957f3349ebc3ade0f4951eba898c78722`  
		Last Modified: Mon, 21 Sep 2026 00:25:17 GMT  
		Size: 597.4 KB (597421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b71c151bb54b7168b339736b8a6b40eed64a18fcc450b9bde0d55cf54161ff7`  
		Last Modified: Mon, 21 Sep 2026 00:25:17 GMT  
		Size: 41.8 KB (41750 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:410855b25d37876cdfe20ddd33b4e97a865bc066f1021acc27ef55e141fc6a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123715969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a092e8ce52fa75537cbc71f1b1e9ccdb815e189cc14e97f50744c239ab6cdeb`
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
# Wed, 21 Oct 2026 23:34:31 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:34:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_VERSION=17.11
# Wed, 21 Oct 2026 23:34:31 GMT
ENV PG_SHA256=dd27f2b3c59e73ed14aa3324901242bf69a032a6347805f274e6260322d42979
# Wed, 21 Oct 2026 23:34:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:38:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:38:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:38:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:38:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:38:58 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:38:58 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:38:58 GMT
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
	-	`sha256:ff017e0b2be5f2cad1c02d2db1420c70ef7dbba5da324182b530ed4322ebe985`  
		Last Modified: Wed, 21 Oct 2026 23:37:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c8a76857df609dea57c4044bd0e91e720ee3e3f6b85e4c548c74c64dc28abe`  
		Last Modified: Wed, 21 Oct 2026 23:39:25 GMT  
		Size: 119.1 MB (119104364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb67c0d0f79fd7083bb9ca5526b8f97d552d759d1aea749bf99221e358b9dcb`  
		Last Modified: Wed, 21 Oct 2026 23:39:23 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786a8fb3cc2b35758ce028a0d073ac46e9297ebdaf6c80a72aab610e89c936e8`  
		Last Modified: Wed, 21 Oct 2026 23:39:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aade519804b020a981491aad1847829b20af3b23e2bd7dfe6df3a3cd12f2147a`  
		Last Modified: Wed, 21 Oct 2026 23:39:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e9839270a1bac8607ae73ff51ec7bebce91d7948eaef18dd146b33d812d5265`  
		Last Modified: Wed, 21 Oct 2026 23:39:24 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7260acc0778203b218d82f41b5cd17279930ec6da2b4468c5a65a978c9ea843`  
		Last Modified: Wed, 21 Oct 2026 23:39:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:3577c6343ba0498e87fb2dc4942f67fb646bb5c4c5a92b7766f60f32b5733cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.1 KB (639078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e14035a6e3240ccc4428dfae1a9dc028f2904765c6e53f38347a85056396198`

```dockerfile
```

-	Layers:
	-	`sha256:32c323d87b199553ab0ea01a007b689b1b6a80735b828bf4749e0527a1f56c81`  
		Last Modified: Wed, 21 Oct 2026 23:39:23 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509774d9b9576ef2651a455bfe54e3f189b4129d9e5082daae4cd4eaa5dab8bf`  
		Last Modified: Wed, 21 Oct 2026 23:39:23 GMT  
		Size: 41.7 KB (41687 bytes)  
		MIME: application/vnd.in-toto+json
