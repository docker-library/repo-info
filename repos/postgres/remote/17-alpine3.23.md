## `postgres:17-alpine3.23`

```console
$ docker pull postgres@sha256:8189a1f6e40904781fc9e2612687877791d21679866db58b1de996b31fc312e4
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
$ docker pull postgres@sha256:c529722b47431f2478e5bef927f61bfc60433c8fa04e3d011b545192068ec677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116649305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d612f69c8b54228ef0a3ff3af3bb9df2f4348836ec03cebafe063e0cdca80ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:44:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:47:11 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:47:11 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:47:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:47:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:47:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:47:12 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:47:12 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:47:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a09c10db362498cce2a6a2fab887c0d80078091e9ef4d1fc41d31e699172fab`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841dec6c4c30017e59e3468428371f47e7cd26bda4b34fa62e98c49514934c6c`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 900.3 KB (900263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02500ebfa877bc45d0105557c5c48e5f954b940b017c288923149a30a61daa3f`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2441001522f5ad2b94c162f091fbf84e2dc490a6502cd4f541a6b7ff4d79783d`  
		Last Modified: Tue, 07 Jul 2026 17:47:31 GMT  
		Size: 111.9 MB (111886991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98ac8d00c5e823a4aae403e56677ab5bec0eb2737af8cd1dc93d9eb5adf34a3`  
		Last Modified: Tue, 07 Jul 2026 17:47:29 GMT  
		Size: 9.9 KB (9950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f9227c54992a1799c357ef0a96902ab3d4a1532e4ccdac75303b1663690e76`  
		Last Modified: Tue, 07 Jul 2026 17:47:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df85f55d33d1bccb569892f8a07642beb6ccb7e09388f581d8bd21b0a8988ec`  
		Last Modified: Tue, 07 Jul 2026 17:47:30 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c628ae46b0b6e5fe1d15574b5deb9033e19624255c7874b7c85895825f3f9bd5`  
		Last Modified: Tue, 07 Jul 2026 17:47:31 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa277c7539e6be99bf9b5bae50ebc8b5cf1d30b521aca3ca43fbd6fcbb27ec9`  
		Last Modified: Tue, 07 Jul 2026 17:47:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:aec4fc8ad2bf01d591faa184eaecdb25c94e18aaf45d991908fbad70891a6aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae043e8a279d98b999e814032da7df0a4fe632445c495502992506ad6c80017`

```dockerfile
```

-	Layers:
	-	`sha256:ce264702cdf0eb666980a396cab5672bc2e279b1e6e01d21efb0d93b1d3e82f9`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ad8a8cd3e0f5adaefefbcc21fb32296a0006e7a5c3a08c84fc2530572274582`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 41.1 KB (41065 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:adbc1998527378b039aeeae8c8b653101fa76f6a48404858f0edc0afcab04132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112848899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f234325daca5dca3deafacabbe9f77938b648d638dcdba134947cd9dadf6e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:46:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:23 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:46:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:46:23 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:46:23 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:46:23 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:46:23 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:49:34 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:49:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:49:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:49:34 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:49:34 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:49:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77794629267405f556688bffd631920e8f4b04ecc2b2afcfa54e092c876a1a86`  
		Last Modified: Tue, 07 Jul 2026 17:49:46 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c789cbe181189ed61439c8a627e0b9056dee412b3d20af15a76edff4b45900f`  
		Last Modified: Tue, 07 Jul 2026 17:49:47 GMT  
		Size: 864.6 KB (864628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbaccaf63401d78db65cc029e485b4ea18a088d2eb5cb791b61bfe6b10f8a1e`  
		Last Modified: Tue, 07 Jul 2026 17:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab4b013ebf5868b604e2013cfd658698748a5ae300c23a3a38844d42665cbf5`  
		Last Modified: Tue, 07 Jul 2026 17:49:49 GMT  
		Size: 108.4 MB (108414049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8335b791dac47b31324efe06bdfeefe4f688b223e483975003e81d44604ad699`  
		Last Modified: Tue, 07 Jul 2026 17:49:48 GMT  
		Size: 10.0 KB (9951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a2296f5625fab6e74f3c8b6e68ed39b5816704361e704f3b0e867c5af92637`  
		Last Modified: Tue, 07 Jul 2026 17:49:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2017c04f6e7cebc12c03b2a5ba8ac55ffaa34f58264aec4de5629b26c667ed32`  
		Last Modified: Tue, 07 Jul 2026 17:49:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8052f6c1f446af68c9e63734994c9fb4b87c7981cb8ccff04217effe35b8cb32`  
		Last Modified: Tue, 07 Jul 2026 17:49:49 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa899e36f5d5205ccecb8d707b6b26e4a561bac21f060fbb5a06ca98f98321e`  
		Last Modified: Tue, 07 Jul 2026 17:49:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d1ff9fbd4845ab511ed024dff9e86f1a7b16e21844f1f5199945df757373aa1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f03869e81acb02cb1e051069da1e3a832b410b78c95f3dff06d38697aec6b0e`

```dockerfile
```

-	Layers:
	-	`sha256:7c683a06dc22c7925757becb0b3a81fc6d99b3e57c49d247e99412d6228e491b`  
		Last Modified: Tue, 07 Jul 2026 17:49:46 GMT  
		Size: 41.0 KB (41005 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1488006d7c1de936f4b6b9df3c1e1a905f8278491532eec0488c6516a9a63b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106526143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc5d4fa72b432cc05660be8b639bb088a660143c3649ae1caa59fff8c1aa246`
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
# Tue, 07 Jul 2026 18:13:55 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:13:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:13:55 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 18:13:55 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 18:13:55 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 18:13:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:17:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:17:22 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:17:22 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:17:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:17:22 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:17:22 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:17:22 GMT
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
	-	`sha256:bd92b54a7a1a2ca1e134775d750276ce1624e82eeff01c78c0fb32c29849e577`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15f69775010df2eb0aff9c56b7ea3ce67728451cb4099b6eb18bd6a9caf574d`  
		Last Modified: Tue, 07 Jul 2026 18:17:38 GMT  
		Size: 102.4 MB (102382008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7124f1b960e79824244eb5c203bdd479f0ff69143876b296314d4bcf26b7a54a`  
		Last Modified: Tue, 07 Jul 2026 18:17:36 GMT  
		Size: 10.0 KB (9951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0c47ea943ba21f2caf0877e0e574fbc4aca2dadf7bc42e1419ae46402793f0`  
		Last Modified: Tue, 07 Jul 2026 18:17:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97869fb34a4cd9be81f2a014923a9aa554809dae55e6baf22edf7bc7abcae72`  
		Last Modified: Tue, 07 Jul 2026 18:17:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0411fa0eac9a9255522852bddd295e97e1efb893409be4321ae87d6df51d8c`  
		Last Modified: Tue, 07 Jul 2026 18:17:38 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397e0364afceb710808ec7d08d49e81e00b1e1f8bf94cbe88852b7a0b486d679`  
		Last Modified: Tue, 07 Jul 2026 18:17:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4f833f35bcd6ed5db6bd41814ca0440f830cadeb5e70922677a637ea8015603b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.0 KB (638048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb28b5612c949273863e47d95def6b0abb2fa4c8102aca18fbc73237ec59e29`

```dockerfile
```

-	Layers:
	-	`sha256:a99f26f75353a4994733a445463b4e261f46494ea8b2865de8eb55fe45d7cec3`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb7e76be634b527a4c59319a80dbd6f342d473ad0e9e898df783cedb1c281776`  
		Last Modified: Tue, 07 Jul 2026 18:17:35 GMT  
		Size: 41.2 KB (41220 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d13105efe29040feb046f1c5fc9f0a98e58d8980c85300306a325c80df9a45c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114462596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcf50ef46a65d49a541ea767c5c427e4c201f04b0760b085c4f1b3527f7d46d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:15 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:43:15 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:43:15 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:43:15 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:45:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:45:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:45:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:45:41 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:45:41 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:45:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec09ee96490d97aa2ba356d1ec4504f69e72e09b8be0c296f5e31a7929daec19`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9df39a7929566a25d172e7a13d400ad511a4cd887b2d84a29e99079373fa904`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 852.3 KB (852273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683f4ccd9222f38ccacdf07d0b9546492a54602afa1b916d60a0b29a020dbb5e`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ea145bdbd18106f95bdccaed13f61ed1d770b321e2b565920cd5c714daa129`  
		Last Modified: Tue, 07 Jul 2026 17:46:00 GMT  
		Size: 109.4 MB (109410827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2417773f5f8b4bc25988ccbd8f14c4ee966713385aebb3d19e0383f10611ac41`  
		Last Modified: Tue, 07 Jul 2026 17:45:58 GMT  
		Size: 10.0 KB (9954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e63ee8d55d1e71afbc72ac2a566c4b3a94a15d3b0b849d6eaf726c55ab65883`  
		Last Modified: Tue, 07 Jul 2026 17:45:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca71cc37a71552fd049c561b3307b6ab9ed37becd6ceb96f2120d1624a10b8e1`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc05086d3035deabd340bc09e8da81b3487d4f73a15086ed3178b2c0450c3117`  
		Last Modified: Tue, 07 Jul 2026 17:45:59 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e041c67bb194ed4752ffd44ca454c21f66766ca38f15c6db9cdea5e04e200b7`  
		Last Modified: Tue, 07 Jul 2026 17:46:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a03ee5f941a70ec258e69ffc86025fa61b027838fb5a2f75863f3f0447f1317a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.1 KB (638090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448e54d1aac14fe3d537285c1686284cb1e4d3a40c4510d906c53e8823c477d8`

```dockerfile
```

-	Layers:
	-	`sha256:5a658c4d21921cd80c263e345a87ae407523e8578d06eda341490487d12d7965`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f8eaa38256c6c5b71f70b57f77f09db128b57eb08ab6e6a1799e873f2f9500`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 41.2 KB (41250 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:8f05af724421bbe992ef099babc7a9ebf6996bfa8df2478de14c535662f47eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123344694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8050f58deca6821b8aae2e3943ffbc4c0f5bd71321871c18b3baa961f97a9f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:44:18 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:44:21 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:50:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:50:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:50:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:50:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 17:50:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 17:50:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 17:50:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:50:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:50:40 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:50:40 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:50:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5df143b165ad4cda4cd0ff02c2b8fb1451cdf59f1d992fd8c1177f807e8a66`  
		Last Modified: Tue, 07 Jul 2026 17:47:40 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b8ee638051a09f53d6d8458f9acff4a811361d930c222a927f6defa7ae961b`  
		Last Modified: Tue, 07 Jul 2026 17:47:40 GMT  
		Size: 868.5 KB (868459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2cadc3e81e880c8ac8a02dc12c39e51d8edee89053bdaba024d23d142bb139`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eec360d9cf2c6e81bdad8be5caf9ed174976e6ba2942dc3e7d36c1ebf89476a`  
		Last Modified: Tue, 07 Jul 2026 17:51:00 GMT  
		Size: 118.8 MB (118790615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbccd21f47f0246791cbe78e54f5b8d130ea6c99442a21c977bece0184356203`  
		Last Modified: Tue, 07 Jul 2026 17:50:56 GMT  
		Size: 9.9 KB (9949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475e98d78da71f7bd69700ce461e13fdf31fe8805b86c4ac4da2b643ed6282ef`  
		Last Modified: Tue, 07 Jul 2026 17:50:56 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ec9f273d0f7ad6e2fe308f5249762d031336acf805f62a79bff3b94ffc7fc9`  
		Last Modified: Tue, 07 Jul 2026 17:50:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616d8c2445a73c37a2c3d2a4bc43c6620fd73469f8577157e530c8bf06845231`  
		Last Modified: Tue, 07 Jul 2026 17:50:58 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a160f32e667c0849724c8071fcd14155d31feeeea2247a92871bed3ab1c9edbf`  
		Last Modified: Tue, 07 Jul 2026 17:50:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:a612538aa6cbc6a3358c3c5bbd0d8918a9468c374144b4b292ac7d5289cc17f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.5 KB (638472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b458c2f8d1cb136dcf189560088910aba5c362875a0f6ae4cc49e4251bbc2506`

```dockerfile
```

-	Layers:
	-	`sha256:0d5ab4738f32a63e77ce00d480ecdff9cc6515df5408885470abbc7274c87088`  
		Last Modified: Tue, 07 Jul 2026 17:50:56 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d99299172975f2072288252840356f59d27e7af3dda93c3bf4ba294d5b27d3d`  
		Last Modified: Tue, 07 Jul 2026 17:50:56 GMT  
		Size: 41.0 KB (41029 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:44944e8bf8ba73d8a6cfba9aaf4a681049b1a659ebe8590214c62e2078221915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119406459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b23e04becd76bd9cbb8485b965356d5d3c07fc3b50e2a20e74bf0726634c42`
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
# Tue, 07 Jul 2026 17:44:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:44:51 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:44:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:05:10 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:05:10 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:05:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:05:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 18:05:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 18:05:11 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 18:05:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:05:11 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:05:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:05:11 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:05:11 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:05:11 GMT
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
	-	`sha256:02500ebfa877bc45d0105557c5c48e5f954b940b017c288923149a30a61daa3f`  
		Last Modified: Tue, 07 Jul 2026 17:47:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6c08f52d9d4bc58c89595a670f646107281812ad9ecf804410a8400b8232e0`  
		Last Modified: Tue, 07 Jul 2026 18:05:50 GMT  
		Size: 114.7 MB (114719032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ea05f84745064facf6ef9358553d8ab5d88774c8761035e76ddba2de79c1e6`  
		Last Modified: Tue, 07 Jul 2026 18:05:47 GMT  
		Size: 10.0 KB (9959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbaf15e5650b72457d908c3f4cdd8b433c37ab3b54edcb706a4b5ccda39a6a7a`  
		Last Modified: Tue, 07 Jul 2026 18:05:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb36890927750d1c827c336327c8a6e7ef3f5c461b0edae285be5f3f3585479`  
		Last Modified: Tue, 07 Jul 2026 18:05:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808e5e15e1e423705a923748d27591a03b599a74c5bc43adca96729138fba1f4`  
		Last Modified: Tue, 07 Jul 2026 18:05:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae73fd178ed315895cb64f8c835fd4acda644e63c525210de8493117e968d20`  
		Last Modified: Tue, 07 Jul 2026 18:05:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:337563db87183c4c0508863de3a870028900cb11f6b4555f662a14c01b2f8ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.3 KB (636278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b84cc80929de94987d728c7eebb23ba5bba089456134922dd237d73724035e`

```dockerfile
```

-	Layers:
	-	`sha256:682f15504916909a28de2b8446e471993326b3487158073a624f3cfb9851e7dd`  
		Last Modified: Tue, 07 Jul 2026 18:05:47 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0e5897bed643735a2109026baf0c27ea7b2046011580a4a8d39477ebfe86232`  
		Last Modified: Tue, 07 Jul 2026 18:05:46 GMT  
		Size: 41.1 KB (41111 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:af9d498daf1504fcf7b83820667f73078b3d6b81219c85d5d56b00efc0c08cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118861079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6164be0b6789a9c9d282cea2bb74447bdba152ff1dc538d4acf770b712cc9bc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 05:20:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV GOSU_VERSION=1.19
# Wed, 08 Jul 2026 05:20:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 05:20:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_MAJOR=17
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_VERSION=17.10
# Wed, 08 Jul 2026 05:20:54 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Wed, 08 Jul 2026 05:20:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 08 Jul 2026 14:12:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 08 Jul 2026 14:12:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 08 Jul 2026 14:12:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 08 Jul 2026 14:12:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 08 Jul 2026 14:12:55 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 08 Jul 2026 14:12:55 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 08 Jul 2026 14:12:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 14:12:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 08 Jul 2026 14:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 14:12:55 GMT
STOPSIGNAL SIGINT
# Wed, 08 Jul 2026 14:12:55 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 08 Jul 2026 14:12:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8191b828233ba8639db62821d2db8c1562b57a5c6c23fabfeffec03560110036`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8628f2c88a8c9905b1c841adcb69903a2afa02c132eb5809c84813331e377c4`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 845.0 KB (844954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4100a1c7f9c6d3060ced3407c1bc8a9bb6b9599a3cd15220112a68a2dec04f1b`  
		Last Modified: Wed, 08 Jul 2026 06:15:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d166506fe19bdc27d8b8006466058a7febf67fc40704165101640872d1a8c00`  
		Last Modified: Wed, 08 Jul 2026 14:16:10 GMT  
		Size: 114.4 MB (114425236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b1676c31a6f9094c9a03baab3d83c0d57cc097319ba8dc39d0e31717ce6c99`  
		Last Modified: Wed, 08 Jul 2026 14:15:54 GMT  
		Size: 10.0 KB (9960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264193b80504161d18ab029d2a9383798b8e97601852d4b59f13ab5e1678f4d4`  
		Last Modified: Wed, 08 Jul 2026 14:15:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e222d6e416b494e87b4217d9b09a5064c01da638d4627ac6267502d4ebeb6d`  
		Last Modified: Wed, 08 Jul 2026 14:15:53 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ea3b5b8df4d5b87846cc1f059d789c5278e53037d4e39a45bfe430eddb8cdb`  
		Last Modified: Wed, 08 Jul 2026 14:15:55 GMT  
		Size: 6.1 KB (6114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e2983066dcdb3bda4ea19f1bcf1729e4161f877c6593d442956134b2fdca5c`  
		Last Modified: Wed, 08 Jul 2026 14:15:55 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:922427fedab50a7d449d6295318d7284fce751b8ee6ed2fa2f7d8e633c6b82e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db8ea6283208f0a840d5fbcc00f94a54e9558c00d2d7d638e18700d858e9479`

```dockerfile
```

-	Layers:
	-	`sha256:08c083471953c9db0f6175d4cca2e50b4d2f09c08ae428ad00d78e8daeaba251`  
		Last Modified: Wed, 08 Jul 2026 14:15:54 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1705a9e536ce93e43fb895578666be0c2c031d4d91a01203a5e8ced062e923d2`  
		Last Modified: Wed, 08 Jul 2026 14:15:53 GMT  
		Size: 41.1 KB (41111 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:e02214b348ed0cf4eb4ebca469e05c5beca95ee4864515220e81f0e964d17045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123145625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04f5bb96ec5d105dbb8e5b08a7d49036fce076fe80d56723c19be34c81604f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:09 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_MAJOR=17
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_VERSION=17.10
# Tue, 07 Jul 2026 17:43:12 GMT
ENV PG_SHA256=078a03516dcdbdb705fecaf415ea3d13a956c589e46f09fed68a06fb00598c90
# Tue, 07 Jul 2026 17:43:12 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 19:12:58 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 19:13:01 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 19:13:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 19:13:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Jul 2026 19:13:08 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 07 Jul 2026 19:13:08 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Jul 2026 19:13:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 19:13:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 19:13:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 19:13:14 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 19:13:14 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 19:13:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71583f459d7af9dbf626974c4508c34ef8ff2f23423acbd6cdd0ad249ffa101c`  
		Last Modified: Tue, 07 Jul 2026 17:53:05 GMT  
		Size: 976.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3b7cbff228ae21293abefe41a5ef7af098cb2c33987a22cef4394ef4e96812`  
		Last Modified: Tue, 07 Jul 2026 17:53:06 GMT  
		Size: 874.5 KB (874493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63966c3941952a667731ff8bef3acdcbbf73949ca02c4b7f7926d6c812604a6e`  
		Last Modified: Tue, 07 Jul 2026 17:53:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a2738b693dac5de3815220bfabeda1675f3922b5b9c79cfa58646eff57d156`  
		Last Modified: Tue, 07 Jul 2026 19:14:51 GMT  
		Size: 118.5 MB (118546235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e272369a72ef1d1e21e1cfca70c79bace5aac5e164ff05d12f702840e869f81`  
		Last Modified: Tue, 07 Jul 2026 19:14:41 GMT  
		Size: 10.0 KB (9961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20a5a36c77739593b5ba24e98064fccd073365c92b878f520e3e9f853756112`  
		Last Modified: Tue, 07 Jul 2026 19:14:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb44bb13228de51aeef9853e7b72c90e845ffe10016b352ca2641b4b3956c`  
		Last Modified: Tue, 07 Jul 2026 19:14:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae3b937688b39cafaea729ae49c392aae567c770e7127e8ed3be34bb0ccc8a8`  
		Last Modified: Tue, 07 Jul 2026 19:14:44 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa9a62b197bc7536779f5887d8f89ae4c83bbe7c9b9392662cdc55f0243bd17`  
		Last Modified: Tue, 07 Jul 2026 19:14:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:9e1fe78bb880441049b3b179dad4a7fca03d246402ef8d5038fa2af40fe77b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 KB (637870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6eacf1a47d14c50440c4994c3db9e1cb1002be66be736b044cf793a4aa3cf8e`

```dockerfile
```

-	Layers:
	-	`sha256:cc55936a4ef13391b4920295c9353c0e0aeed7de8730ca01d2e0c2561b4d8acd`  
		Last Modified: Tue, 07 Jul 2026 19:14:39 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8432a937b05c3f7012c60798475cb3ff59d06094819bf446af13e7862c83dcfc`  
		Last Modified: Tue, 07 Jul 2026 19:14:39 GMT  
		Size: 41.1 KB (41063 bytes)  
		MIME: application/vnd.in-toto+json
