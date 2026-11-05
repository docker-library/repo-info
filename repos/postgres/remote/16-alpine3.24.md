## `postgres:16-alpine3.24`

```console
$ docker pull postgres@sha256:e0e53cfa0884f3cc216a621033e4f38dceb49e52218ac77facc8e48f02973093
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

### `postgres:16-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:cbf42f0edc946c0bc1b8eeed62403734e1f25dc67a3491455d07a92fdb558b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116064374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2e324ebe59af6031c4c1cd96c1d5072c2ebc36563d2196365e43b8297c062d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:55:04 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:55:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:55:04 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 22:55:04 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:55:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:55:04 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 22:55:04 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 22:55:04 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 22:55:04 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:57:10 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 22:57:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 22:57:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:57:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:10 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:57:10 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:57:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768bbab50810d11401e028c068aaefc439af84b053f956e8233e6c142b107f83`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d982e6c592c4677398eef6e65ba4d557d9cb4c66a889d89fed47f0281b56b46e`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 900.0 KB (900000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a735dce412359cc7cc7f123b1bf8d1c819afee822b2c5e0ec3ed5950b947740b`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42065dcfea930b4131768d84a944bebfa9d620735a2fa318a3839e45823065e7`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f121f7f3dec1fdf206172551ab964bf71d01b13fe0e6224e8aca8e3d0ccaa232`  
		Last Modified: Wed, 21 Oct 2026 22:57:30 GMT  
		Size: 111.3 MB (111293747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea8819886f9eecea3223b5b091e4387fc8a585c4b3204967f493448b18bbb69`  
		Last Modified: Wed, 21 Oct 2026 22:57:27 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f6cab92edc17207dc29985d9679c960ef8c91d2d573ea4a21ad5d63fc2e185`  
		Last Modified: Wed, 21 Oct 2026 22:57:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911527e7800cf973353c9098cf5680123fed12f77e7b0581b2a6e7b3ee480e77`  
		Last Modified: Wed, 21 Oct 2026 22:57:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22df74fd53232dd86da76eb10a151fbba095ee5ee729ecf52a63bfd1b96fb003`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f477227db4895106871fc5323877e8ad0fe3a8544e52b06055558d3e8c4dd42`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:f33523a06b7a040b9b05bf9625ddc9fc945debfbbd47f5b19154e48376596193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b57ae2fa9777fec4ac0f012f3093c9a08cf6403eadb8fd86402beaa98aca57`

```dockerfile
```

-	Layers:
	-	`sha256:9f4aa3a445411f542f5d2871ef00b0c7b2c53c867a879b1ca6d14f9c9e63f028`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 598.0 KB (598042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3e0ec4a3ace3634dd9de3e9c9a089efb8bcec3136e03f5c59f3d054b42fc4bc`  
		Last Modified: Wed, 21 Oct 2026 22:57:26 GMT  
		Size: 44.3 KB (44306 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:797142c3f706f10efa512cfa9f7a16de72d07587aa5d8b27648e9d107f1f265d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112279120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff89e21e3722528dc70979939c0d7dbadb983e320b978b470c87715da2f714ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:42:45 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:42:48 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:42:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:42:48 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:42:48 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:42:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:42:48 GMT
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 18:42:48 GMT
ENV PG_VERSION=16.15
# Thu, 05 Nov 2026 18:42:48 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 05 Nov 2026 18:42:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:45:43 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:45:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:45:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:45:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:45:43 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:45:43 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:45:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb7d3c3d297659a33797d66dec055e242aaf7c95baa54cb72e9ba566ca2f471`  
		Last Modified: Thu, 05 Nov 2026 18:45:56 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b9d362e82173421823ed2f7b8f62b91277fb50b7d306a44aeb26aad0df27c4`  
		Last Modified: Thu, 05 Nov 2026 18:45:56 GMT  
		Size: 864.5 KB (864509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e448f7768c56281167e70a0806f931ee64f05aa00ac05859e209b69ee00b5170`  
		Last Modified: Thu, 05 Nov 2026 18:45:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2194f1ca2a96b826131f1e0b50988957f10528de399d154a231352bb8bec8c24`  
		Last Modified: Thu, 05 Nov 2026 18:45:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce3d1ca088fa0656295ace8bba942f3f64b4125f1ff96a8a879466744e4ea65`  
		Last Modified: Thu, 05 Nov 2026 18:46:00 GMT  
		Size: 107.8 MB (107838701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a876eec94b5f8edfa85ded4c0c2b6cebcd94066e309379715caa2ed2a0c54f89`  
		Last Modified: Thu, 05 Nov 2026 18:45:57 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cb56a315911f866601244b1fcaa1f639246235fdeb39f769df96d15d434b78`  
		Last Modified: Thu, 05 Nov 2026 18:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92f8ddb0f3b2d4f4571358fd34dd6d964c7b93107804ce0648b02661cc29aa1`  
		Last Modified: Thu, 05 Nov 2026 18:45:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc363727210349acd82199e6591ed1c27364b6ccdef817a66f885a70909fad63`  
		Last Modified: Thu, 05 Nov 2026 18:45:58 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3091b5d404b502e9a9d88535af6b1d4ccf959cd73356baad9e6821ce94b12967`  
		Last Modified: Thu, 05 Nov 2026 18:45:59 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:edb13f828d7a334bac92ef97bbf771b663dab1d16efa326f9119acbe7cc2a33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 KB (44275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80beccc209581561f1db7ab3663872e2eac383e1fe94f305e2c1460162e1cee`

```dockerfile
```

-	Layers:
	-	`sha256:7f37a0b9562cc1c771995f699e39b6b30bda710c415742b89eedc2042aa38bcb`  
		Last Modified: Thu, 05 Nov 2026 18:45:56 GMT  
		Size: 44.3 KB (44275 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:099174ec99c158dda10a609f6c63363038c8b2f95cb3334614eac8fa2105993e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (105991204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ce5750e769bbf6b5a41c174eedda3ba62f8445ae6dbff82fa1da46b0cbccf5`
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
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 18:40:08 GMT
ENV PG_VERSION=16.15
# Thu, 05 Nov 2026 18:40:08 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 05 Nov 2026 18:40:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:42:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:42:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:42:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:42:58 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:42:58 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:42:58 GMT
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
	-	`sha256:bb9c74b37b2023c0437a9a0a5f2801ebf22231ef97c29976f1885d133e7b2e55`  
		Last Modified: Thu, 05 Nov 2026 18:43:15 GMT  
		Size: 101.8 MB (101841430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1f7e9c89a8eb78bfb2e9d76a042a6b7857ebc64834845342045789004617e7`  
		Last Modified: Thu, 05 Nov 2026 18:43:12 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d02150d18e55c846e7272761e9cc0416fe3db21791750c1d4c1f3cd9975ef4`  
		Last Modified: Thu, 05 Nov 2026 18:43:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70139f6bc944c3d5b72f122b1680f20bddbd8c288b96935f77e7ba21c6053095`  
		Last Modified: Thu, 05 Nov 2026 18:43:13 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec49ff287d51101feeccbbb6c689ba37e2eb4b5cd66c1f48a0eba132d5845e4b`  
		Last Modified: Thu, 05 Nov 2026 18:43:13 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d363364bb07867f54f9d956eb4de474c92dffa029c5f421eb5cb1a84db8c72`  
		Last Modified: Thu, 05 Nov 2026 18:43:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:d4a4d7202f09d40d30a147d382d66a9ab963b7ed4bb2c3d98c76bcc93b2a9689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3936a877376aafb2bf248e2f40d4799537ca4b375d62f4c8749808884e693b2`

```dockerfile
```

-	Layers:
	-	`sha256:6fd66171d46498392dbfa5f7c2f75d84bbe2e2599474d9aabf2e8107e975805d`  
		Last Modified: Thu, 05 Nov 2026 18:43:12 GMT  
		Size: 597.4 KB (597428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9796be5850971e35d126729d3afa63ec6be35f3fa211b0094da0b3561e528cf`  
		Last Modified: Thu, 05 Nov 2026 18:43:12 GMT  
		Size: 44.5 KB (44490 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7a8050e52090c5f77effbe7e0cbed4a0587306776c3f26dc99933a63c619eaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113883909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54a696c68013b2f8f42f479e00a2b6ad24c5ef10ee31cdfb8972cec3dad7eb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:17:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:17:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:17:02 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:17:02 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:17:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:17:02 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 23:17:02 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 23:17:02 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 23:17:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:19:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:19:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:19:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:19 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:19 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12eb05ec409b14f5b3044e02b20cae34a9311dd1157c9b5ada5c3f4d4909c8e6`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c61df2d098fce80e516282e2b131828ce40a921d5fdbd8d312228e7932bd140`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 852.0 KB (852036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ec84c7f8a99f1a9ac26c8a49cc68b58c40c912e84b273c5771c1fba534177`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3159dc2110dd33d8e7a5fb9848cae3930a566849e268c5b1effe08b43512285d`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a0667f02af2d09f826dcd2cc1aa17ea19cb17d3d8442139363c7262c0e0fc1`  
		Last Modified: Wed, 21 Oct 2026 23:19:37 GMT  
		Size: 108.8 MB (108823866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17bb49abe227e30fcd27707cb0b4fcde54067c857137bb3e4f2fe4a63c3f72c`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 9.7 KB (9672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b991b88e79ce7406f6d621610f0154b0ea188fefa7e80509ab2ed3c0bd685b`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f775f9c8b66dd3ea8ad13598e59086a797475dc9d23ff273ee2647408e1a630`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340c083268fda557e22c583963fa8d3c136ee2e9828432ef96681749730c4878`  
		Last Modified: Wed, 21 Oct 2026 23:19:36 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42df618ae2f690c199f1b79e16e74838e92147f89d89db6d5e4dd5d89d9872c`  
		Last Modified: Wed, 21 Oct 2026 23:19:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:fa57022d0a923f9f123894200c63de39175b833e4054a2742d3b2c9a67e78f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (641978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2aea87c9bd985d915eb97d2c0d455aba04047773e3bd3e2b2ebc611190c352`

```dockerfile
```

-	Layers:
	-	`sha256:d335ff64513c95b2c280bd2053f3197a17a5af5bbba7c65a0d37503637b13428`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 597.4 KB (597448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156554aa89fca85f1c8f375ffaf56af28ff9b8e1d06f4090380afa33b2464791`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 44.5 KB (44530 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:b207bbbf6ca7b0b1c7216730d1553cfc67e8501bb005ba9c3b25a79a62efd291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122724002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaef3ff5c790c8eab88ec83adcdd60d8efc8da390841c374bf71bc7d290af180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:27:07 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:27:11 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:27:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:27:11 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:27:11 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:27:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:27:11 GMT
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 18:27:11 GMT
ENV PG_VERSION=16.15
# Thu, 05 Nov 2026 18:27:11 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 05 Nov 2026 18:27:11 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:29:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:29:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:29:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:29:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:29:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:29:52 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:29:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:29:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:29:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:29:53 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:29:53 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:29:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e49d9d52c622f266f43348cfe7321632a833520051e1d5c35b4cfe8e8cb74c`  
		Last Modified: Thu, 05 Nov 2026 18:30:10 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f877510ccab06aaad79f7497bc9a09d3e8dc447fa2bb9b7c06bfdffd18e41cb7`  
		Last Modified: Thu, 05 Nov 2026 18:30:11 GMT  
		Size: 868.0 KB (868010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bd12ea79de806fac82a460324599708647093a6b5c01f1846bf1dcc590a575`  
		Last Modified: Thu, 05 Nov 2026 18:30:10 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fda3799506bece00486404c5fe30d8fae2dfdc0f9c36837a70ee6b5f0e4984a`  
		Last Modified: Thu, 05 Nov 2026 18:30:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce7e68899e1db589f2d77b22743c726907134a6749bea78cedf8c77528163c`  
		Last Modified: Thu, 05 Nov 2026 18:30:14 GMT  
		Size: 118.2 MB (118158117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1170e7638fab3e5063d6a4ce95fac5b82d308d71fc56698bc9ef77057149143`  
		Last Modified: Thu, 05 Nov 2026 18:30:12 GMT  
		Size: 9.7 KB (9671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130ced512e8006029440102b15c9a28fc95f13017237e269f2ffc0c2ad38d7db`  
		Last Modified: Thu, 05 Nov 2026 18:30:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3639baeb37e5ef13ccd3166a3b07b2b206dff7c535fd872babf3c63648efd3b9`  
		Last Modified: Thu, 05 Nov 2026 18:30:12 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09678906c312f7af4e45bdb73e0c748d883ab2c1da84f5e90339de8b1501b5bf`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5289ae5111d141ec9070f7d9dda447a590cec2d6a2fb0e12fac1dcbb6d4e42`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:642caeead2522ea6b5b945f34d38298e849f6328c41ac1c08270899d4dbbddb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04ad5dfecc924601d9a22456cc7abe4776cd82ee2a30cfb512f4c67882bc802`

```dockerfile
```

-	Layers:
	-	`sha256:e5ef5f0b83779eef25f09153b47bca1647a71b90a77e298e41f6ebe96d849116`  
		Last Modified: Thu, 05 Nov 2026 18:30:10 GMT  
		Size: 598.0 KB (598017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94e3a34066fd537a10b13eb7789e8a65f8a6e504481f69e562fc2dd7abce96a8`  
		Last Modified: Thu, 05 Nov 2026 18:30:10 GMT  
		Size: 44.3 KB (44258 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:5e493e8ad3e38645a1f93fd545651f827068d1f13b5df97c5e10890984ea9b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118751395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f6abcf989317bcbf29639a11655d2bb5c670a9f2e2370ce06fe34371f4b6fa`
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
ENV PG_MAJOR=16
# Thu, 22 Oct 2026 13:06:17 GMT
ENV PG_VERSION=16.15
# Thu, 22 Oct 2026 13:06:17 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Thu, 22 Oct 2026 13:06:17 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:10:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:10:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:10:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:10:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 22 Oct 2026 13:10:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 22 Oct 2026 13:10:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 22 Oct 2026 13:10:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:10:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:10:42 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:10:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:10:42 GMT
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
	-	`sha256:366bf7061479cdd8331e06cd20888af234c2e7ab780d79086acae4266d8efafc`  
		Last Modified: Thu, 22 Oct 2026 13:11:23 GMT  
		Size: 114.1 MB (114055843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a532ae31e26196f9fd46d20ef286ccb745c095d9a0a5fb67c4cb2a0231d547`  
		Last Modified: Thu, 22 Oct 2026 13:11:20 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e598361c1a07413bc8415dc042956c9661a7cfd269c5fcb55c0f4a3c793c98f`  
		Last Modified: Thu, 22 Oct 2026 13:11:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca70590d8678e21040d92cd50b6491acc7f63fa24d5cfd41a4dda2d60b15311`  
		Last Modified: Thu, 22 Oct 2026 13:11:21 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab87e93beaea7926e13ddcb5ecc09e5198a09d76c3d85236e6e12101070c34ab`  
		Last Modified: Thu, 22 Oct 2026 13:11:21 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba8b9238488cd40f8f24046d56daf3aa67a8295f54335d86c3fa879080778c9`  
		Last Modified: Thu, 22 Oct 2026 13:11:22 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:4cb89eb293357f00bc513e836a40c13eeb6b7e7a60ec762b52bea35bd5d03d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.1 KB (640129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a043007dffb589b78541dfb617469f7ee18b8d2358ad2ef35f40c23723218351`

```dockerfile
```

-	Layers:
	-	`sha256:bf836e5ae7c614f085c579304428c800c4d3b6b3ac862839251a4df08997467c`  
		Last Modified: Thu, 22 Oct 2026 13:11:20 GMT  
		Size: 595.8 KB (595763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6aab7db7239818a6a28699cc2b63f188d7e5da2f6cb663f8d3d422814197b6`  
		Last Modified: Thu, 22 Oct 2026 13:11:19 GMT  
		Size: 44.4 KB (44366 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:369bad896afe6d0155d24047bf8ad6905e2139b87364641e2825ee402aab05d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118148122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcb871a49723b3f9486befbe26d9d33dd1d46b760b29c22d6420d12e198b9c1`
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
ENV PG_MAJOR=16
# Mon, 26 Oct 2026 04:51:48 GMT
ENV PG_VERSION=16.15
# Mon, 26 Oct 2026 04:51:48 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Mon, 26 Oct 2026 04:51:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 26 Oct 2026 05:45:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 26 Oct 2026 05:45:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 26 Oct 2026 05:45:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 26 Oct 2026 05:45:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 26 Oct 2026 05:45:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 26 Oct 2026 05:45:42 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 26 Oct 2026 05:45:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 05:45:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 26 Oct 2026 05:45:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 05:45:43 GMT
STOPSIGNAL SIGINT
# Mon, 26 Oct 2026 05:45:43 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 26 Oct 2026 05:45:43 GMT
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
	-	`sha256:012a35f9653553e36f0054235f73fb62d5d9426c13901050c1168a94d29c836d`  
		Last Modified: Mon, 26 Oct 2026 05:49:12 GMT  
		Size: 113.7 MB (113705225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def8293d6fbc7d1bc11fb4fabb40ecd9f52181ef6ee6f0523c2e659ffc430cb5`  
		Last Modified: Mon, 26 Oct 2026 05:48:55 GMT  
		Size: 9.7 KB (9678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77393d15699d21c76eae895c2e29d48772868049fb27bd220b15da811751cbb`  
		Last Modified: Mon, 26 Oct 2026 05:48:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca91198d3fdd31c46ca91d6d5c05aa12a3b3ac68b522f8985891bc06b88f2a3`  
		Last Modified: Mon, 26 Oct 2026 05:48:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f8ab45ccd5eea8d14e90f0af3d7f88b2cded328ef01501f82a9b15e65a039d`  
		Last Modified: Mon, 26 Oct 2026 05:48:56 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf7925748ba3057ff30e8da76d7081ed37b40c86cde3fa73162a3ab5628a75`  
		Last Modified: Mon, 26 Oct 2026 05:48:57 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:7aea366965470318c8a82c5f71ae8672b8132cb5a554b4073bd0077345c65888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.8 KB (641787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89baf97cbbaf04c7e06d6974d2391145d218fb6d10ac0ddc4e0a5bece681de22`

```dockerfile
```

-	Layers:
	-	`sha256:18bc1e3a4782a906ef9aecb316d9f09f2a36f28f2a247cc2d1a2dbc3fcf19ca8`  
		Last Modified: Mon, 26 Oct 2026 05:48:55 GMT  
		Size: 597.4 KB (597421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b25e2cf5691032a18369ea4d5df62295ec333d8092e160ceb579b7abc7e302c`  
		Last Modified: Mon, 26 Oct 2026 05:48:55 GMT  
		Size: 44.4 KB (44366 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:4497c97217dc36d47e0a0051edfc8ad79f4941d4ccd83d15c5fc72ae3146a708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122568467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3759a2d77ddc5bb94eddd4176428278a78551b5400ef89850a6cb28053ffec26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:33:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:33:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:33:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:35:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_MAJOR=16
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_VERSION=16.15
# Wed, 21 Oct 2026 23:35:53 GMT
ENV PG_SHA256=c1575341fa7bd40f5274ea465b34390f4dc64cdd0770af327005caaeb9f6b7ed
# Wed, 21 Oct 2026 23:35:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:38:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 23:38:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 23:38:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:38:48 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:38:48 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:38:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b436f5b6f518b6e82c16a02d39c18707e7edb16769fe7e4e229512ef879939f`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3ed657ed02cabb7d0004fb34f9ea8a7c700c079ecad245a57e0a9716fde5db`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 874.2 KB (874208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b347a62eae9238b46b4dce01c98961a49227437861236c68d2c456698d89a0a5`  
		Last Modified: Wed, 21 Oct 2026 23:39:13 GMT  
		Size: 176.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaf30dd217dad8e8990d04eaf2ebc841b47aa9f6d6e6602cd82e151352d6e24`  
		Last Modified: Wed, 21 Oct 2026 23:39:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7e6ce4fb9cd1890cf5d6767cccadd259f485fc0a0038e723f6ca23f93ca349`  
		Last Modified: Wed, 21 Oct 2026 23:39:16 GMT  
		Size: 118.0 MB (117957025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a573b3c7290a0f9f08c1811b2e89e377aefd56b8900b6083a0d9267faf20e9a2`  
		Last Modified: Wed, 21 Oct 2026 23:39:13 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6895f4017b0677f7f1dbd8967fddfbc0daf133ade120ad2c96f5042681b90f57`  
		Last Modified: Wed, 21 Oct 2026 23:39:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442ad62821e58c9ea8e8adcd3ef21ac368f5e0ff3f2864ca858865f4d0af242b`  
		Last Modified: Wed, 21 Oct 2026 23:39:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573807bcf3865c582e3f14b2491f1c857906001462d992564e82b8daf5675dd2`  
		Last Modified: Wed, 21 Oct 2026 23:39:14 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c834a9a12eb09502695b36e8256fa9ed93ed4cb9cea1862b588e4c5694670f`  
		Last Modified: Wed, 21 Oct 2026 23:39:15 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:f7d5d54815fb6d357a066392aeca1f29408ae6ea4e880e468a49db36ce8df039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc5bb383e896ee57d68087c2413f24f13020eaef73e490546a39dad4f029ef3`

```dockerfile
```

-	Layers:
	-	`sha256:e8f02924e5fcfcbaaeeb851531a6d7da71ac69b0574b8de0ed7a9fd6dc5dd3b8`  
		Last Modified: Wed, 21 Oct 2026 23:39:13 GMT  
		Size: 597.4 KB (597391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1a63971ec0957268e7946d5366811e17976b2a3c5b913515446a14b5cc059a`  
		Last Modified: Wed, 21 Oct 2026 23:39:13 GMT  
		Size: 44.3 KB (44305 bytes)  
		MIME: application/vnd.in-toto+json
