## `postgres:16-alpine3.24`

```console
$ docker pull postgres@sha256:f377d590e5474681d4d7838635031a2b50647923b7abfa803ce9b5ff35d5c663
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
$ docker pull postgres@sha256:a2f7e20374cd8fd8ed4a588b79549e10589bea7b1686e77922f5ac741b80b8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116235896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbd775daa28461ef484ed88ca1e5a5a72ff126e196deeebce6fec764edf1200`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:58 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:54:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:57:44 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:57:44 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:57:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:57:45 GMT
ENV PG_MAJOR=16
# Thu, 12 Nov 2026 20:57:45 GMT
ENV PG_VERSION=16.16
# Thu, 12 Nov 2026 20:57:45 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 12 Nov 2026 20:57:45 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:59:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:59:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:59:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:59:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:59:48 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:59:48 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:59:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea98517a315c9eff2223482c79ad6bbc06a00819ede91cbb8f4a6c1e18547a71`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41713cbe7496446a113f3e753c9ae429dd7868be345eb208a7f7a8ebf03f2912`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 900.0 KB (900014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5788ee6f91dc309334667a3a4abdf95282fc9408f51c462cc839fba1e5df3e5d`  
		Last Modified: Thu, 12 Nov 2026 21:00:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f997efa53d88f61ea4d5d94ed47bb6bc7bca58db91da9aedde1ee58a41064901`  
		Last Modified: Thu, 12 Nov 2026 21:00:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d17f5b24d5fcd5f718b49f4ce9f43aed2dd5965f378fcb838a1b72ce9f7523`  
		Last Modified: Thu, 12 Nov 2026 21:00:13 GMT  
		Size: 111.5 MB (111464690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85a33377d8388c4e8871a71581503f06f3f9e005a1ce42b2531647020e28261`  
		Last Modified: Thu, 12 Nov 2026 21:00:08 GMT  
		Size: 9.7 KB (9673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cc7190d1c04b37539fba1380740b9ca74d5af27f1ab5caab7f2d5e99ef4a47`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5959c7ea857a448dc7a856103bc795d4906d756282dba68d289ca1bfa49cb7da`  
		Last Modified: Thu, 12 Nov 2026 21:00:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bceb0db2fd1588e102414777737b3b2e3ef47d3e75ee7a116d9fbb165b56523`  
		Last Modified: Thu, 12 Nov 2026 21:00:11 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7106f8586ee7537fae24d66cbf1912740568230225c88612dba4c2359f6d989`  
		Last Modified: Thu, 12 Nov 2026 21:00:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:71b2c2b9afc6e607b9f3ec71c7e3cdca4201c38ba4aba58a8f51f93adfe5ca56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0924990ac72cc614d6d66a2f4379c18d47b11a3bc87abafe0047033d2d1061`

```dockerfile
```

-	Layers:
	-	`sha256:df1cd84c95ef34ef1df18ca474ac8e234e51ae5c7934c2757631bc02724c1abc`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 598.0 KB (598036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89872578f4c5706939373e325645fa69a6f68db92f781f01020762eb71c58625`  
		Last Modified: Thu, 12 Nov 2026 21:00:10 GMT  
		Size: 44.3 KB (44305 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:b8733491112b7bf54a4ac49bac2b864174f21732152fbe176f301d02be7c293e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112450799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607dcaa25a204aec6e30841e9c43e05791fe248759864c907940fdf33954dd7b`
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
# Thu, 12 Nov 2026 20:59:56 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:59:56 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_MAJOR=16
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_VERSION=16.16
# Thu, 12 Nov 2026 20:59:56 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 12 Nov 2026 20:59:56 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:03:00 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:03:00 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:03:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:03:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:03:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:03:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:03:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:03:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:03:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:03:01 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:03:01 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:03:01 GMT
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
	-	`sha256:4122f7ee7871f094876ccce10cffe1ba3d8d6274a9e99e9ee9dce386237ff388`  
		Last Modified: Thu, 12 Nov 2026 21:03:13 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d7f71620f8c3747ae50a92153dad0cf105bd35a4bbcf4f460336d83e0c51b1`  
		Last Modified: Thu, 12 Nov 2026 21:03:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d84b07d48b89d951ff8c8d4bf7c7f81c5bf82ed104b1809617c4a96304217ad`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 108.0 MB (108010371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604dd2f308692f3323e25f6988100861b24976f3080e1ccedb07fb54fa63896e`  
		Last Modified: Thu, 12 Nov 2026 21:03:13 GMT  
		Size: 9.7 KB (9669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbff0a160675b89d171350e301c0dde597746ca3d0a46b8e42e8ad8f3c3014d`  
		Last Modified: Thu, 12 Nov 2026 21:03:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26904e0d260cf93387104fc45afa763f1ee6eba5cd4170140d336e473362de06`  
		Last Modified: Thu, 12 Nov 2026 21:03:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d943d899435c2f8f4e8a7fa9b390154c4898c7589e66d7b389c5cf782cebfc17`  
		Last Modified: Thu, 12 Nov 2026 21:03:14 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089ebba5b825c20662c52e69ae1c5b816afc9a71fe5c988109eff1e57789eacb`  
		Last Modified: Thu, 12 Nov 2026 21:03:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:fff5acbae67eb606184e2a5b96b752e3b61c312bfe706496eeda8f8d95438f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.3 KB (44275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed4fb1292c9395ae89b7f9592834b101a90f091f0b8549ad1b0fcf2c6b8f67c`

```dockerfile
```

-	Layers:
	-	`sha256:64a70adc773b6fe5d7e67b61996d313f52dafee91d07fdee01594ae4e8922407`  
		Last Modified: Thu, 12 Nov 2026 21:03:12 GMT  
		Size: 44.3 KB (44275 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:7e773570fa7fac3af08fa55ee49b01923ad25bbc4750c6a8ae9f16b9d8076912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106158904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cb3e11d24c76a905e71580b28f8c9002918dfeda15e289cb602d886925ee55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:13:56 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:13:59 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:13:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:13:59 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 21:13:59 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:13:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:13:59 GMT
ENV PG_MAJOR=16
# Thu, 12 Nov 2026 21:13:59 GMT
ENV PG_VERSION=16.16
# Thu, 12 Nov 2026 21:13:59 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 12 Nov 2026 21:13:59 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:16:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:16:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:16:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:16:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:16:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:16:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:16:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:16:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:16:49 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:16:49 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:16:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5958ec74f6e1707743d1e7f5158275f9765f3ce88fadc555647ff083c6551d`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed146515cc34d849ccd3dfbf1c5a79e98dc0097c623e1d214d2da6716597cbc`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 864.5 KB (864520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5499953213abe80daac5778952a05163e85b8ae8feb783869ccb0ab049e3bce2`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7370fe648cd6f2a29993a6b69e97aff575f82a4522f90c5af6e58171bc3400`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c751c6e2f09aa1d84ea95d89da893182fed17d536fdaf643076d7c3669dd3512`  
		Last Modified: Thu, 12 Nov 2026 21:17:06 GMT  
		Size: 102.0 MB (102009133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a9cd9c77177b63c64ef43f3302b2d78087114c1ce984b673a3f3e6ffb04383`  
		Last Modified: Thu, 12 Nov 2026 21:17:03 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4d5579c8e90dd113cc10d640b140d04063064907f14e475e63f764ecd44dfd`  
		Last Modified: Thu, 12 Nov 2026 21:17:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02306dee23e029dc521c880d8715447d02e9263d72a73a787c040c6a54d51527`  
		Last Modified: Thu, 12 Nov 2026 21:17:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90b693cc74de94fc04254fd857b426bc1c6b8340563aa38653f26988686e8b9`  
		Last Modified: Thu, 12 Nov 2026 21:17:05 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df264f3fef60d7aa2203d1f9755bb5c9dcc29af702a519fe5f8167a9c8cb3e1`  
		Last Modified: Thu, 12 Nov 2026 21:17:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:7a0b70c234525a97464dfc578067a1bf87ddcc5a1c7d99078719733f8fb6ea7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6015a16a71320aac1ad785755e55ad651a47c2709b42684b7dcc487933aa83d`

```dockerfile
```

-	Layers:
	-	`sha256:a2fa7e69a9c150d72c4715133de69d2571c1b4e11296b3522163c8b393ad73f3`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 597.4 KB (597422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1eaf70c796c6fd77c3c95c33ae3a7045d5eaa9a72a6546ee4b27734b39d05c9`  
		Last Modified: Thu, 12 Nov 2026 21:17:02 GMT  
		Size: 44.5 KB (44490 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:40e58641410e030f5769096bca8372f68f243e1859c8ecdf11f227da390d514d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.1 MB (114061852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc638cdfb3aa32b6ff16a84de36d866b2c9f1089da8b6f23b060f874d3e1e8ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:52:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:52:28 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:52:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:55:20 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:55:20 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:55:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PG_MAJOR=16
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PG_VERSION=16.16
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 12 Nov 2026 20:55:20 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:57:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:57:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:57:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:57:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:57:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:57:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:57:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:57:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:57:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:57:40 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:57:40 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:57:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cacf9be5dad7511f8e8788f5582704d4b76403a5bc0e89ec2cac4bc6ccf588`  
		Last Modified: Thu, 12 Nov 2026 20:55:11 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878e7af1dddb4fe0b0b0ac3186a8157cb9f019d27e60b2b91e31eb05549657a8`  
		Last Modified: Thu, 12 Nov 2026 20:55:12 GMT  
		Size: 852.0 KB (852031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea896e1f4c2efc708b0b006f7d5d0ace48d9f721e0c4e347393d7d659cbe930`  
		Last Modified: Thu, 12 Nov 2026 20:57:54 GMT  
		Size: 175.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e024254179ce856a2112b948346046b86c5957428e3152219b3b61896c2c0b56`  
		Last Modified: Thu, 12 Nov 2026 20:55:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca31ecabd5f84e32b3a6e46a441408c1bbede371704938824aa543893c97bf0`  
		Last Modified: Thu, 12 Nov 2026 20:57:57 GMT  
		Size: 109.0 MB (109001701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116aba44e6983bdd2d9b6e420bb543d2fbdf7bf1a3c9f65287430d033fb72060`  
		Last Modified: Thu, 12 Nov 2026 20:57:54 GMT  
		Size: 9.7 KB (9673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634c496a8bd061c70d95d9ccac4adb5d081d3702ac37dd60a71ac3781a3dbe6b`  
		Last Modified: Thu, 12 Nov 2026 20:57:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e0a0c16b9178bdc9afdad8a11569bab45d4a16303d536aa410bc9fec5c4108`  
		Last Modified: Thu, 12 Nov 2026 20:57:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87147c53673ca1d0af29ad5cde43eaa5dcc0ec3b4480bcff5564e1ba83f098f0`  
		Last Modified: Thu, 12 Nov 2026 20:57:56 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6690321c17a1598c65f75d8a8bb0db0ece97c3fc5a168b4482af46482321b1a3`  
		Last Modified: Thu, 12 Nov 2026 20:57:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:b90a435da7833ee11551c279d237fe243edefce8b0c72bf0e81c98b48fbceea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.0 KB (641972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43308a2d0e51470e2abd7439663ee6a9fcf002f4d05385913e25d29efa9c8e4`

```dockerfile
```

-	Layers:
	-	`sha256:aff7fa37dcbf37dceef4ce089f85f9683e7f59a0dc036ff8276c248e7137f8c1`  
		Last Modified: Thu, 12 Nov 2026 20:57:54 GMT  
		Size: 597.4 KB (597442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab20ef18a1b3fa2a90fd363f32d9be39601ef2d247282c7b9bec654cf023d50`  
		Last Modified: Thu, 12 Nov 2026 20:57:54 GMT  
		Size: 44.5 KB (44530 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:5c107cfd46d0e9bad806fe6c316935683a700181b529c881b0b18cb242ed66eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122905056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ed94f45c678e2d6b8292b772f68aaf65774616186f85fb0f644f7248377b2`
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
# Thu, 12 Nov 2026 20:59:44 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 12 Nov 2026 20:59:44 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:59:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:59:44 GMT
ENV PG_MAJOR=16
# Thu, 12 Nov 2026 20:59:44 GMT
ENV PG_VERSION=16.16
# Thu, 12 Nov 2026 20:59:44 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 12 Nov 2026 20:59:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:02:05 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:02:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:02:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:02:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:02:05 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:02:05 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:02:05 GMT
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
	-	`sha256:0a47edc7ceed85bbaddaf9337a99d90ccd21d5f22b7ea72f502cdfd1acd0637d`  
		Last Modified: Thu, 12 Nov 2026 21:02:20 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a23fe7c4b9ebc64158ddb67b1c11a6cd97c832ff58d3d2cef0f5e9141a3da3`  
		Last Modified: Thu, 12 Nov 2026 21:02:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309a29bb39cbec13920147c89cf6ffb9280c24a0197cf33e19f3066246916d91`  
		Last Modified: Thu, 12 Nov 2026 21:02:23 GMT  
		Size: 118.3 MB (118339154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc2dbe7befed3ec20491aaaf8cf0d6444db5290ccb38a4c5533c05ca6c00f48`  
		Last Modified: Thu, 12 Nov 2026 21:02:20 GMT  
		Size: 9.7 KB (9672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16106d9e820a0db78bcb5234a72c702ad8b89d9b5cd88b842015e84acd53e1a`  
		Last Modified: Thu, 12 Nov 2026 21:02:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc76765bc875cc62ea776b153e9747374d825046dd76ed874af2fdbc0d4cd4`  
		Last Modified: Thu, 12 Nov 2026 21:02:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be169699affdc31f0225c1370ea45497c34aeef2efc1d96f327937ee268016fc`  
		Last Modified: Thu, 12 Nov 2026 21:02:22 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9e381095c7dec2ffe6dada8bdd268c3751e79052ae652dd191c89b29baf715`  
		Last Modified: Thu, 12 Nov 2026 21:02:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:47f996156d54a56d61de97e9513a52dd7e643c7bda2b8bf8e56f8597d604cfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e9acddc7ab27a420ba490686bb0ba1233eedd10f51082738fc8d424b823336`

```dockerfile
```

-	Layers:
	-	`sha256:9fc17cfb08a154077a7df33eb0548ff7a14202e0b8d2c51d894df120f71b04dd`  
		Last Modified: Thu, 12 Nov 2026 21:02:20 GMT  
		Size: 598.0 KB (598011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5acb460d0fe6a34155eab015959a13bfad408bb2a37033074feecc26dd0ecae0`  
		Last Modified: Thu, 12 Nov 2026 21:02:20 GMT  
		Size: 44.3 KB (44258 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:8f568078aceb9d6bfc63cdbc60c1a04a57adb2eb7fb18af5c8eda8c33e4e2cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118944931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fed8b064b9e69404b67f81410c136f812407c5e490f05f5d14542c12af67a84`
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
# Thu, 05 Nov 2026 23:06:42 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 23:06:42 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 23:06:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_VERSION=16.16
# Thu, 05 Nov 2026 23:06:46 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 05 Nov 2026 23:06:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:42:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:42:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:42:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:42:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:42:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:42:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:42:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:42:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:42:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:42:38 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:42:38 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:42:38 GMT
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
	-	`sha256:d8d05a0a4eecb34d940db1ef7627c66ac4fe58438962cf107026e70e68b944dd`  
		Last Modified: Thu, 05 Nov 2026 23:11:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3740b6f37b9312c7c6b56243dd2c45dbd2305ad6d33e7a6a1dca72b550515353`  
		Last Modified: Thu, 05 Nov 2026 23:11:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4ca362f52744886ec1dac9c9b8a200345a46ef751fe3ff1a53c53e8cca1fbe`  
		Last Modified: Thu, 12 Nov 2026 21:44:07 GMT  
		Size: 114.2 MB (114248289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7190b8c3227f4f4c674ca3d3523f76e87a116e2be5806d0ed9cabd3a0cf4cc2`  
		Last Modified: Thu, 12 Nov 2026 21:44:04 GMT  
		Size: 9.7 KB (9675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffbb6adb936ec0604a1f32f5bdc0362d62400a86b26738ed63d4e5224c941cb`  
		Last Modified: Thu, 12 Nov 2026 21:44:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ce424550a1bd7848fe6e2ef13d165db48d985326281a36cf626a75a507cd6`  
		Last Modified: Thu, 12 Nov 2026 21:44:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36443ea3535b839187e09508be2c8057897ca2120bcdc658405580c61fd6ef5`  
		Last Modified: Thu, 12 Nov 2026 21:44:05 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dd7900e78f77b29b6cd3c783371beaed459330c81d18ca947a5e6dda683504`  
		Last Modified: Thu, 12 Nov 2026 21:44:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:0b2fe2d48a571cb79a91bbb18a17373fbe7e6778acc598b118faa7eade20e3c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.1 KB (640121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d07ab307d728406cb75ff784685a813a6aabbe54add02d7d8e92e18d66f25c`

```dockerfile
```

-	Layers:
	-	`sha256:0e1bae9d4511ecdeeba53414900d26c38a821a25b49f6307813f44e50accf59b`  
		Last Modified: Thu, 12 Nov 2026 21:44:04 GMT  
		Size: 595.8 KB (595757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38653fdc519388a7d6ed3e5c98ad7ac5ac85802c7ddd414bf347ef57b38be0d7`  
		Last Modified: Thu, 12 Nov 2026 21:44:04 GMT  
		Size: 44.4 KB (44364 bytes)  
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
$ docker pull postgres@sha256:9fb8f2c95cfcea26100c54e22ebcd33fbd632c25989083f36e21b98a802c9957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122748931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6444f11470cc2f245dbeb46916e667389e5d60181cca2289fb3e1163ea46f`
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
# Thu, 05 Nov 2026 19:04:16 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 19:04:16 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 19:04:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_MAJOR=16
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_VERSION=16.16
# Thu, 05 Nov 2026 19:04:16 GMT
ENV PG_SHA256=9d5cd8633043b75740d5d59749c6b7365e6aeb53c47098b1a5e80bb18f87881a
# Thu, 05 Nov 2026 19:04:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:10:27 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:10:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:10:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:10:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:10:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:10:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:10:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:10:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:10:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:10:30 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:10:30 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:10:30 GMT
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
	-	`sha256:dd24cfde2294195bcb82d717105abddeedd234fbfd44c33e0e148a1c36b2a979`  
		Last Modified: Thu, 05 Nov 2026 19:09:24 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34439cf192edb83f2c9b3783d2f930d9f55fb2dfdc4913c72a03caad12a447d6`  
		Last Modified: Thu, 05 Nov 2026 19:09:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9e7cc3dd32ef88d728bf85f545f62a5c8bfebec03fa88a1597b13d4e66780b`  
		Last Modified: Thu, 12 Nov 2026 21:11:15 GMT  
		Size: 118.1 MB (118136516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d694ed55939ccf322821ea2fd1418d1d1eaa92342e762bbb178239ce91bc50`  
		Last Modified: Thu, 12 Nov 2026 21:11:11 GMT  
		Size: 9.7 KB (9675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845c3ac77bee9700be108f4c33d33d93c7144d54f67a69389c10b88fa2189413`  
		Last Modified: Thu, 12 Nov 2026 21:11:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20021f57f51d2efc8b811a9f8cb2e59779927d158fd8b5ea66ab6c9ffac4218c`  
		Last Modified: Thu, 12 Nov 2026 21:11:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5025b5cc59c94832d2e53e072a8a5f209326904457f3f5dcb0d465d7e5569619`  
		Last Modified: Thu, 12 Nov 2026 21:11:13 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf82d8644b7ca7317fafde7da7a195d7c2ef853147aa3a27fd56ae5b2da14e3d`  
		Last Modified: Thu, 12 Nov 2026 21:11:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:0c19cf3185b88c99dba42ce99641c52ab22557a0bf600d59435986eb58b8ae93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d664caeebfe5fd1b91366769a584230845b3b4a771928fb4e0bd2cb7a73be0`

```dockerfile
```

-	Layers:
	-	`sha256:52431af14aa7e829cdaec11fde0b8f73b15fec6b535a15c221f938f403875e97`  
		Last Modified: Thu, 12 Nov 2026 21:11:12 GMT  
		Size: 597.4 KB (597385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a2d16d3b0998807337ce3208966815c13e746878ae808a8fe44a050df819219`  
		Last Modified: Thu, 12 Nov 2026 21:11:11 GMT  
		Size: 44.3 KB (44305 bytes)  
		MIME: application/vnd.in-toto+json
