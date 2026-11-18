## `postgres:17-alpine3.23`

```console
$ docker pull postgres@sha256:45e1cc85c2b483a3dbd3438821ab41e32c0386564ef3c273261e8d274bb8b31e
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

### `postgres:17-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:833be86fa9cbc2e12ca52ecf8afa306a3f20f6f57772037caeae65075aeb4616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116892881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4912da07fcf17d4d7db60cec9a436301114a961784299ea0e77c6b5797d8acd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:05 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:08 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:08 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:29:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:32 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:32 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:31:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:31:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:31:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:32 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd37647a458719d17f716fdb545aa40ef4fb5228b4582486295ee2c191e9868`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74acf4ef8b91d3b3970f8a38a7c64afa180b1ee72b99f9e698f2b8fea5beadc`  
		Last Modified: Wed, 18 Nov 2026 21:31:49 GMT  
		Size: 901.1 KB (901118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4adf08a3e40f0212e6fc4b05eb66ada73630c09aa48c57c435e4247ae4644a`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89b2c223ef5413e883c2f1cfc89a156e334ad8da4c0e83e248536c5587999f0`  
		Last Modified: Wed, 18 Nov 2026 21:31:52 GMT  
		Size: 112.1 MB (112121601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea45066dd7a6e9e5f4b3c5ce6d81c326a6e40114569cf08a6d929e059ffe2f4`  
		Last Modified: Wed, 18 Nov 2026 21:31:49 GMT  
		Size: 10.0 KB (10000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd99a04ab86a5b1ff573f4bccea11f8e79e9a0d1c32f22f9ddb0aef48ed511da`  
		Last Modified: Wed, 18 Nov 2026 21:31:49 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af1674e04e857c1b68e1abc89bcfdb83784f293a3b8eb6e03c5a35f2193f6a`  
		Last Modified: Wed, 18 Nov 2026 21:31:50 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1c13fc9af47fe469cc53310503ca81eff2827cf148433cca85dbf726a24371`  
		Last Modified: Wed, 18 Nov 2026 21:31:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4dccafbe0489912ba40ede6fa174c365a4f296063673db5bd013a52be9b0c1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.7 KB (636667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112b60dd0dbd39d084f63567e0fc6796def787be5b8be3318c2beed5983a44b3`

```dockerfile
```

-	Layers:
	-	`sha256:2261555d87933bdb2025ce3b16a426caf6a10f41e0048c864122e69591dfec22`  
		Last Modified: Wed, 18 Nov 2026 21:31:49 GMT  
		Size: 597.5 KB (597452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26526783885660cad5fec68a2372e876017177d8dada8bb76245fd89b6c23a2f`  
		Last Modified: Wed, 18 Nov 2026 21:31:48 GMT  
		Size: 39.2 KB (39215 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:747d67570f2b8cea254f43d74e0507fa02383bf38a6af45b486a21007a290ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113056642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc068f408ad674acb6dadad6510887c9360bb61b74cebfe69c4847fa348fbcd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:39:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:39:05 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:39:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:39:05 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:39:05 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:39:05 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:39:05 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:39:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:42:19 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:42:19 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:42:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:42:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:42:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:42:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:42:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:42:19 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:42:19 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:42:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52520b3e2b1318853c6d94ec08c5c04796100363c7d440e9dec7fbaeb7531d74`  
		Last Modified: Wed, 18 Nov 2026 21:42:31 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9591175be37f5576b3609239a0e3694e85dec6530c5e61ddf80d4a479a348fa1`  
		Last Modified: Wed, 18 Nov 2026 21:42:31 GMT  
		Size: 865.4 KB (865408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e1f36bb05d19138e9082bf95907312c17a8971bc447280cf707cd99c442eff`  
		Last Modified: Wed, 18 Nov 2026 21:42:30 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0f937fbd49716915d18fd316a4853d4a296a19cd343f3fba40cd0533f95f9e`  
		Last Modified: Wed, 18 Nov 2026 21:42:33 GMT  
		Size: 108.6 MB (108615415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835a8e8d0a98fa5694a2b38e12d534c08bbf059e1cf40942aef8fbde5051b91f`  
		Last Modified: Wed, 18 Nov 2026 21:42:32 GMT  
		Size: 10.0 KB (9998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008acf297e335db63f126ab0a5e0dc8a0bc1406ac9ca1e8b4285ad30b03269b0`  
		Last Modified: Wed, 18 Nov 2026 21:42:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca21c613ab63cd212ad95b9633948736c7fe67f822444d80dff8cf390eab2adf`  
		Last Modified: Wed, 18 Nov 2026 21:42:32 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf76e356559d8746d0f2292468f8b7488d060a7d4c7a0bf4c8ca0771fc56703`  
		Last Modified: Wed, 18 Nov 2026 21:42:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:ed4bd416759b4a612243f248b5449a9bf101de5f740e9fc5cdde841eae2bf656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 KB (39137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888447fe91f310e0e668a539ada021f53936d17282b732ae5ca915db2cf01ac6`

```dockerfile
```

-	Layers:
	-	`sha256:060e87cb8b660b95fdd0971dda085b7d43b18b03fbbbc97a5f089722280a8611`  
		Last Modified: Wed, 18 Nov 2026 21:42:31 GMT  
		Size: 39.1 KB (39137 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:117cef9697321501c30814425ab78716d49b3af45c5526881bf912c7603b262b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106736227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb4b1e21bec0b5fa3eb3be23284ae253d3c7764601c6b8c121d274c4a506e283`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:44:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:44:50 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:44:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:44:50 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:44:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:44:50 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:44:50 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:44:50 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:44:50 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:48:02 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:48:02 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:48:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:48:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:48:02 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:48:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:48:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:48:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:48:02 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:48:02 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:48:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b725d511c8515fe71776af9f95b6f3a561ecec0104a728ff8a8ff508663e48`  
		Last Modified: Wed, 18 Nov 2026 21:48:16 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b60bae734e5b700a4a1aaa6f15e9b5b7aaf28421bdfa67f6a5f572656c3758`  
		Last Modified: Wed, 18 Nov 2026 21:48:16 GMT  
		Size: 865.4 KB (865405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b886303b993a03a757da093a51154a0de139c2e7d4d4db06bd2ed22cd45f2d3`  
		Last Modified: Wed, 18 Nov 2026 21:48:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abaffcf38e540a444c8e4914622e802e64e9c640eddef4356cc86582d09ec6cb`  
		Last Modified: Wed, 18 Nov 2026 21:48:19 GMT  
		Size: 102.6 MB (102586432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd365232f0e123196862a9b369c7081617951f11e3c3e860acd003b0b032c58`  
		Last Modified: Wed, 18 Nov 2026 21:48:17 GMT  
		Size: 10.0 KB (9997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbf1828a9f8e5e444ea68821a0f8739481af736d5b8bbf40a728879c8b7cc1b`  
		Last Modified: Wed, 18 Nov 2026 21:48:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38206c54e6491229b5264dc4bf2d3721df1a1c648123eba8cba3551ba7d22bf2`  
		Last Modified: Wed, 18 Nov 2026 21:48:17 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f70533d10491ea6587c461d1508b76a03301f2a6ef15df92072e3c49176b3f`  
		Last Modified: Wed, 18 Nov 2026 21:48:18 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:bdd8dc033eb07bcd17afaa6d51ae5b3d3cd4b38ef7355965cd9a3384c4becca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.2 KB (636175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7e536ca0c20761a10696a0c18e885e59bf7274b41d052feeb700423881b56f`

```dockerfile
```

-	Layers:
	-	`sha256:7fb0bc29635fe7d549b96699045a17700fab66aa6fd97ea6133d5d217b69d88a`  
		Last Modified: Wed, 18 Nov 2026 21:48:16 GMT  
		Size: 596.8 KB (596822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9bd921347788752ebbeabbb735ef3f89112dbb26fb1830067bccc5637935e6e`  
		Last Modified: Wed, 18 Nov 2026 21:48:16 GMT  
		Size: 39.4 KB (39353 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:9eab96181596082226acfb6dad3027d344a2bfba41d0d358a134cde7189a136b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114702706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d7b0cc9a0c2b02499318dc6a447ee2e668859f58d74e2524cdcc8a7db84c1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:30:21 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:30:24 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:30:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:30:24 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:30:24 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:30:24 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:30:24 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:30:24 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:30:24 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:32:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:32:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:32:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:32:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:32:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:32:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:32:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:32:54 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:32:54 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:32:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075b23bcc854f08ecd28ee00ff625b70059d843b27155739a35cf340d1aeb32c`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66703e04063477091bb93b43ebc0d3228de5d59f7327eba26f86b91f917b7a7`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 852.8 KB (852812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0379234fa01522a124fe5c1aec12e13445537c7abd0d55ef98aaed7d39f679`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a256293a339f59a399bb0126b219ddd25982df5b4768e7f982ba375c45fe65b7`  
		Last Modified: Wed, 18 Nov 2026 21:33:12 GMT  
		Size: 109.6 MB (109642108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3878a50a9712c92179f33ce551bb6e16025d3327abdb4c5e1d102c1201c50333`  
		Last Modified: Wed, 18 Nov 2026 21:33:11 GMT  
		Size: 10.0 KB (10000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60f21cc1ff06dfb92065ba2b9331d4c4e032770fc0eedfbf3b79be73cb52332`  
		Last Modified: Wed, 18 Nov 2026 21:33:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241a49a7d949639bbea277f6381cf4b59030eafa93be84e2eddae3d55db60b6e`  
		Last Modified: Wed, 18 Nov 2026 21:33:11 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c754d58a0e9a0f18bec395b8a1e1056e3e4818298c9dd5ad4d4425b9cc531a`  
		Last Modified: Wed, 18 Nov 2026 21:33:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:3c041f92af7a873b405bf50f3f2671f7ecad53c9a5f8e5240c5840dfc2a4bbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.2 KB (636219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7e9ba82ff68ead13f46e6c0b86115fad8b50ae4708c749ad43baf8b1a61b32`

```dockerfile
```

-	Layers:
	-	`sha256:8d5b3378f4a099ec528feaac4d59dffd68db76aea8e49abbff6246b4e96c18a8`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 596.8 KB (596834 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81e4427a948d54bedd1bfadc94cbd41c37092737c2d3ae8e1e20ff9e8f00b699`  
		Last Modified: Wed, 18 Nov 2026 21:33:10 GMT  
		Size: 39.4 KB (39385 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:ae2899323136a358b1a686f3670c7fba53e055ef8e0646fbc067ffa376e0a2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123590292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0e4a5ea4d450411a89983d598c4b87b65595870645d764d92c83b971b5444e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:28:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:34:02 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:34:03 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:34:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:34:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:34:03 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:34:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:34:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:34:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:34:03 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:34:03 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:34:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f99188ba7219a5f1952e7cc06556195beb86f9b707a0e82247564aa8bbfb40f`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8ae4b3084a3ad66387640d145da63d00032ee220aeba1607d283641d1ea2cc`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 869.9 KB (869852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c10e1f1140f6014ae9647c28234bf579556d138df4bff6d01cc3affe432f9f`  
		Last Modified: Wed, 18 Nov 2026 21:28:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8985b6f1b0826151df76d6b694d969ef63d6bcd1382ee4fc920434348fef5e5`  
		Last Modified: Wed, 18 Nov 2026 21:34:22 GMT  
		Size: 119.0 MB (119024290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2195ab38057743679be7e55472d29d4e1bbe8d9a07ede7cb9a34fae8a163112`  
		Last Modified: Wed, 18 Nov 2026 21:34:19 GMT  
		Size: 10.0 KB (9999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4b181a8c2a606b2203c087bb760bc0c91075f3de72df11f490e1ebb242957a`  
		Last Modified: Wed, 18 Nov 2026 21:34:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ff74dbdf59febd234c6463c64f0d0ebe494cfe2fb6f740fb6ce26f552c6e56`  
		Last Modified: Wed, 18 Nov 2026 21:34:19 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34029ff28f5fc1cd4b5eedb503845628cf2cf3455554f32d2e3870eae569ee63`  
		Last Modified: Wed, 18 Nov 2026 21:34:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5a1a584963c365628e858733b5fa82259e36a7cb33870e02b1c9e7406502ca40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.6 KB (636614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63faae6950974e1a1fd21323a8bdf27c7550960fcc105a565b3166c5f9ccf78c`

```dockerfile
```

-	Layers:
	-	`sha256:8559972b4f35ba4ee2c4995849dcfd71b9d6c6d5f428c79c2353a5fc5d5cb25a`  
		Last Modified: Wed, 18 Nov 2026 21:34:19 GMT  
		Size: 597.4 KB (597437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:258c1b03be987c39793d7e5b38bad337604c2bafb3a5e4944aa8789de5b85a23`  
		Last Modified: Wed, 18 Nov 2026 21:34:19 GMT  
		Size: 39.2 KB (39177 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:a698120ed9e78e818655f29307fc02f1deb47356f87e80c317812b8e9439fbff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119641606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8179a0c6997d3ae2236338ce2ca5d8c284a6c8629af12c16bd590d52a85af4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_VERSION=17.12
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 18 Nov 2026 21:29:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:54:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:54:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:54:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:54:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:54:06 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:54:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:54:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:54:08 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:54:08 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:54:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572512faf44921b4f2e08a12ebfef96eb7e9dbf824bf6c2eaa7c08b58f33dbb`  
		Last Modified: Wed, 18 Nov 2026 21:35:34 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1562691096b268fde369c737d70906fe35f53d520ad6879d78f987fff1021524`  
		Last Modified: Wed, 18 Nov 2026 21:35:35 GMT  
		Size: 858.0 KB (858016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479fd5ff861ee3c29f828ea0dbb98cfb3a2b54e92f476906322ced8c86166a32`  
		Last Modified: Wed, 18 Nov 2026 21:35:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c569bb6275f559cb12a3fac830da5148c1d4bcf374f8faa5b21b8649160a680a`  
		Last Modified: Wed, 18 Nov 2026 21:55:03 GMT  
		Size: 114.9 MB (114947010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2017e49bee2342eee0e0937f5b9f37b5b00f18a2aeba84ce160b0ddf26a654cb`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 10.0 KB (10003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403c3862a2dcd04d82d666947b7e02a492cc5db43bd4c28fe3feff2b6e7fcbab`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c805994aa5ac00334b12fa7714e38be7931b56a8cf019cf6952229ec0bead2`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680936f59b53e93b5c58caf020fa6d4644b28936f7c99f24cdd5075012b304a`  
		Last Modified: Wed, 18 Nov 2026 21:55:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a512247f1851314fffb707afbbef0d83fb07b893d9d5a7ec61955e810b6c0a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.4 KB (634419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233f0ba96e3dab7b97075716aaed390f9cc9da0698659a73d3671a706431365d`

```dockerfile
```

-	Layers:
	-	`sha256:84c34972dea50d2853e9c494796f6d2abce8f476c88ac0d4f0d59aa2a079acfb`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 595.2 KB (595161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea0b101ee8736ac52663bd517584edc213e3ac23b6fbd22d4f7f84c1b2167b91`  
		Last Modified: Wed, 18 Nov 2026 21:55:00 GMT  
		Size: 39.3 KB (39258 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:c8ed7b3617252fe988d397c2f5eeb1c9d9ee8a3c29dc5ca988851f74dd391d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119109398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e9b6bbca043637a25c1d98b77c0b9d87c97c9066e5e988e01f0642e4a40b63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 08:23:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 11 Nov 2026 08:23:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 08:23:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 08:23:25 GMT
ENV LANG=en_US.utf8
# Wed, 11 Nov 2026 08:23:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_MAJOR=17
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_VERSION=17.12
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Wed, 11 Nov 2026 08:23:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 15 Nov 2026 07:18:28 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 15 Nov 2026 07:18:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 15 Nov 2026 07:18:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 15 Nov 2026 07:18:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 15 Nov 2026 07:18:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sun, 15 Nov 2026 07:18:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 15 Nov 2026 07:18:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 15 Nov 2026 07:18:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 15 Nov 2026 07:18:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 15 Nov 2026 07:18:29 GMT
STOPSIGNAL SIGINT
# Sun, 15 Nov 2026 07:18:29 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 15 Nov 2026 07:18:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2749923b9e8ed5f827f94ca4f0b0f0870f61011a9ae745b3916ded7e85852`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f948ca450048c06e160bf303171f98b9946df3f241215111e600f9cb1f87632c`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 844.7 KB (844720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c759d03526a7fb23dabbefd994c2c3a510bd741c4ac90890f560ee10047b3496`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9ca6d65b8017189cb8a49d124cbce600f860aac62a832d0eb1118086fb94f`  
		Last Modified: Sun, 15 Nov 2026 07:22:01 GMT  
		Size: 114.7 MB (114666863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f88bc73671aa8852da928c6d3531f7c3c53391cacc0cc027f7cf2a03123be1c`  
		Last Modified: Sun, 15 Nov 2026 07:21:44 GMT  
		Size: 10.0 KB (10004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d09b1000d0b6df3186235b3956ecccdc65c44b818cf690a513189d94f2759`  
		Last Modified: Sun, 15 Nov 2026 07:21:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc9765ee67a382f56179fd043ef55a58ac3dd1d4a11fde9871db4340cea298c`  
		Last Modified: Sun, 15 Nov 2026 07:21:44 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40c42d7d2a09ac8ab3fb27a98741b7a358e88f80a0493de11b2985082367aae`  
		Last Modified: Sun, 15 Nov 2026 07:21:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efafea284e9a209ae821d5e0169968615401056a7804816e8520e29ec6bd69c7`  
		Last Modified: Sun, 15 Nov 2026 07:21:45 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:cd03b4439ad48868bb6a6d79a59d4dcae1f4df00b0b9ee0a170e3d63a6f047b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571cdabf86bd09cf7d069e45ffa55462077403dc7bea2ba7c3e46f89d4ae5af1`

```dockerfile
```

-	Layers:
	-	`sha256:57198bfc257d10fd1020eb60e2b6d6ab975e718a94c6728db494a9f5f9c8d65d`  
		Last Modified: Sun, 15 Nov 2026 07:21:44 GMT  
		Size: 596.8 KB (596819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e94039d9be8cd18786dd6192f54846fbf57e24da1e7063bfec67f137a9aba03`  
		Last Modified: Sun, 15 Nov 2026 07:21:43 GMT  
		Size: 41.1 KB (41116 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:7eceb4db24917ed291b7edcb2ffbcf4660c74880fab1002e4e8343f4772247a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123395724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6da9090ce4f01ffbe320d0554ce5a0f02e090f1ddcaaec686ebf0e6ea151f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:56:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:56:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_MAJOR=17
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_VERSION=17.12
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_SHA256=9cf136a703d8ee2f83465c43be4e9e8e7930c82b0bfba13be7e2537be769ac55
# Thu, 05 Nov 2026 18:56:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:09:49 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:09:50 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:09:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:09:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:09:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:09:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:09:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:09:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:09:54 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:09:54 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:09:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23392f00b42ded9769f724a44617cba4f1fc3627256d4f9963958ab2b957f045`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d772e6aa8962e2e52ca1e1b45dfa9444c8eda769027973f1976557c204a518`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 874.2 KB (874226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cc501d30e5371cc3683d955500c83da4b3a7694cafbb1433dfc0fa9fcb735c`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6e326405212de1ba9608b837b4ac9d23f576f9bd2c7fccb18fc4a71aa19770`  
		Last Modified: Thu, 12 Nov 2026 21:10:33 GMT  
		Size: 118.8 MB (118785470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f6b6b0eb6fffd7cdcaa276a700bea72c92e4c962ea5457b4a4ec98c351c9ae`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 10.0 KB (10005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07a39e4d4d75826a143bf75164a8fc4b6d782148572da534de192242a47ba1d`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7468aef18daceb8080f6a483ae21e7e7db1305b4f50d696c6f36bc0b51cd6ca`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316f5b22017a8a3828bf92876ca97bb7d373f1c3930db372c3139741e6c3490e`  
		Last Modified: Thu, 12 Nov 2026 21:10:32 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206794507affd38f1139beb657218f913e5cf6f52332cfa44ff639a688d8b11`  
		Last Modified: Thu, 12 Nov 2026 21:10:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1d92e95c2ff571dd5a02fcda601ac357335b670853b12a52572c3f0ee19823d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c150ec8ffdf870d175bbbd00fbb2f4bdc95e05e63e85a3da59de154488623d`

```dockerfile
```

-	Layers:
	-	`sha256:46c529aa694118a56b7dd9a7465d97cd27f473c34dd49194d7b76e1f99a8a5bb`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 596.8 KB (596801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eef4dac7fcf8d2f729d4a10a7168332ab7969b9f4db08334471c888c8c6b2ea5`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 41.1 KB (41070 bytes)  
		MIME: application/vnd.in-toto+json
