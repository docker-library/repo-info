## `postgres:19rc2-alpine3.23`

```console
$ docker pull postgres@sha256:4238c61fb9e2969e816b6dd0e04561301258f22ebca96cc85adc95266756af77
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

### `postgres:19rc2-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:a63afda8ad2e06d77eb23fd457069872f9a0da41bd5571f1b1a254a63470d987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120806730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd97acaad0aa4c2277c92e64ab073b3858da1ddf267e6a353a19f00f26c1257f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:06 GMT
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
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:08 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:08 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:26 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:26 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:26 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:26 GMT
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
	-	`sha256:5ae446db39d99d8acbac3df743ff2a6c5ec0b939266870c03f1ebd0d2ac41b61`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 901.1 KB (901115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4adf08a3e40f0212e6fc4b05eb66ada73630c09aa48c57c435e4247ae4644a`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef2c6668c941713f84e1dc3210d08b140fd081087882f272302db465bb38b0a`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 116.0 MB (116024436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b626345ed9c6671f0c9bc597bb5baa5a0f90404d200f4e0efccbf21e80b76c75`  
		Last Modified: Wed, 18 Nov 2026 21:31:44 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d05ac4bf4a863fb88627678e4b5d0fbcc5cd79ddc247f6445bbc8cfe4d6b0f0`  
		Last Modified: Wed, 18 Nov 2026 21:31:44 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e02dc2fee3c9da4bf2b7f6a7ae24013bd2bae96d453cf607972981257c7533`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7e5ecec7810368833d6746491d50805ee7b76525feed851a593b08fd581b0334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c038fc9d45c9347e30f06b02b60225971a2898b10f40941c61e07d1aaf6d30`

```dockerfile
```

-	Layers:
	-	`sha256:ddb7758d5e8dd976adb39ab69d1381d68027c6aa693448070d2c0377e141686a`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 615.8 KB (615754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4133a0a11411a2b8a97bf4d0d8afd111ec5bcc3790583b06b9e87b612d924276`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 37.8 KB (37808 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:ddd5d67e7bafe69cf4d35a7e2160b6a77612e2aedca2b5fe2dbd261416ed6441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116994712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c8c34ab659dbbd31f4f7ac34d200b1f2115b0e0963e606c30fed7b8673f740`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:26 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:26 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:26 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd028fa41cd2875e7696d7f3987d89eaf52c8a44cdb43621c6acb3855bdee32`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5668ae2832f4ecf50d48b0b53e4805c76c442c045000b4b03b6846af9dbe4d3`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 865.4 KB (865403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc7785754370ff76a3f2bf76d1ff2b08e170bd66611d13cdc69ca4220cb6a4`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc401caec1346f5eeddba98e1f796bc445f52e140b19832a1b53562420b0974`  
		Last Modified: Wed, 18 Nov 2026 21:31:42 GMT  
		Size: 112.5 MB (112542471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c1d7d345144ca22c939cfaafbe7d639e63f6a6d51127e437cc46471a8e5fbc`  
		Last Modified: Wed, 18 Nov 2026 21:31:41 GMT  
		Size: 21.2 KB (21193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49683b34b4f32be3b689e9432af084e5bca45941332fd900c267eacbeee6c477`  
		Last Modified: Wed, 18 Nov 2026 21:31:41 GMT  
		Size: 6.1 KB (6098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f763516320c5090eb63bec80cccc7d380d8b24adbc3f8521d7f8e578924f6832`  
		Last Modified: Wed, 18 Nov 2026 21:31:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:e896940e3ff4de96da5ce188de41c805b7737297f629a30dcde68f5498ef01d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e509de70fa70b3fb30a278b42aaef1d6b3f9e9bdd59c8837a7f8af471e7792`

```dockerfile
```

-	Layers:
	-	`sha256:f6337cfdf91946cbfd7d4ca4c5468c5be0bdaf2366e6744e227070b26651176a`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 37.7 KB (37714 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ea264fbe5d800a369df5cc17aad6ebe7e5d01df6c6c0289de6ef52f32d62f3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110514280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f64d5064ffe73025f05444e41d1c745b691e8176c8ce0bca7b2ab5ba0771f55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:31:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:31:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:31:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:31:47 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:31:47 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:34:41 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:34:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:34:41 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:34:41 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:34:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:34:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:34:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:34:41 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:34:41 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:34:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e133a6f0c3efa5a31c0ca41793db9a9c7d686600406f2ca8cbb23ca15a32c721`  
		Last Modified: Wed, 18 Nov 2026 21:34:55 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b70895ecf54d70a21abb118f25653a018213e19794b74f6209b5ef5830ae1a`  
		Last Modified: Wed, 18 Nov 2026 21:34:55 GMT  
		Size: 865.4 KB (865412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13177e35627285f735eeb90f3a78f9b76cd10c5f55c2b04d6fbd8ef6a8483517`  
		Last Modified: Wed, 18 Nov 2026 21:34:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980adf197da4c980f951f1c4207a4caaab4767a3a3fa365d036bfd3d6f22fabc`  
		Last Modified: Wed, 18 Nov 2026 21:34:57 GMT  
		Size: 106.4 MB (106353443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9abec47d750554bab32291f28692bee700f551ca7353ed2276382e62fd9878`  
		Last Modified: Wed, 18 Nov 2026 21:34:56 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f020350fbe35e68d8431a9348d0ecea53ae52ce3044656dedab78e5212866f44`  
		Last Modified: Wed, 18 Nov 2026 21:34:56 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0491296313111aab8708f774df8c4329aedd0831a637ee2ee4e350817ca34a`  
		Last Modified: Wed, 18 Nov 2026 21:34:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:9ab084c27eaf90c81badfda17e3ac4b25f370c03a28772845afe806748a9f29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.0 KB (653045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b416baac7e5ed34b026c9e58bae629e31c3b43fe9819a4067bbd7863ce87db`

```dockerfile
```

-	Layers:
	-	`sha256:a876176fdc46356fd96c5e1cff11bd760e8843c125d031fc6a61f74ad2708970`  
		Last Modified: Wed, 18 Nov 2026 21:34:55 GMT  
		Size: 615.1 KB (615116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476bcfbff01a6a5fa2315c030e3628ffc51126e436295c5df0a2741937300c60`  
		Last Modified: Wed, 18 Nov 2026 21:34:55 GMT  
		Size: 37.9 KB (37929 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:75fa0837933860f272238ee4679ecbd2fa15be2d08491ef918ba7e0de9b5aeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118574427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5e512e918428e7c4bcfa1992d16983a61751b7483bc04905c1baaebb840741`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:14 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:14 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:14 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:14 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:14 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:14 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:32:00 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:32:00 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:32:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:32:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:32:00 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:32:00 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:32:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1840ea8304ee7b6e6c27f32197203fee737f38d300808b37fe9036ec12b0db`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a49c012e8d540c6ad739e6efda9e71a79f9b006013c1b6536a40facc198751`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 852.8 KB (852820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855588ba788095c61e04eb5a18f4a7ff025427d04a7f2bda7e61bd063ebd4868`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a085cbb6c6b6a48950dc102d35802425d4dd3206140c15bc06bc574be4e63a2`  
		Last Modified: Wed, 18 Nov 2026 21:32:19 GMT  
		Size: 113.5 MB (113502792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7fd4411e1661ee7a836cb9d8fe3d5a591d030430e3bd4a3274b3a8bebdf046`  
		Last Modified: Wed, 18 Nov 2026 21:32:17 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993831e7ee5448f5b61a66ba71922541122023ec97eba785ece85f15f30abaff`  
		Last Modified: Wed, 18 Nov 2026 21:32:17 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3d0cfde79361eaf89f8322299b225987eed01257f66bfa93b20ea6abf9fa42`  
		Last Modified: Wed, 18 Nov 2026 21:32:17 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6d812b8a7347a316bd80235996878c480e8415f898815e866ee48be4875154aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.1 KB (653075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdceb971f5965454c3346d7b0af23f970c5e7466331abe2456ce251dd7db2c90`

```dockerfile
```

-	Layers:
	-	`sha256:29e0ad255fc8214e20d8e0f26dce0b0edbd24c68a9a2bca1c35667e77ae00771`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 615.1 KB (615124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9985e39ffa278c0141c60196590dfcf80dc57e105cf3f216a14b2291e654c39a`  
		Last Modified: Wed, 18 Nov 2026 21:32:16 GMT  
		Size: 38.0 KB (37951 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:ab47b5dd9014b683806252cdb71811db6755bd090b2f34ed19bf25a495141fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127727728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a946e4fd7679008a6b47115ec41d1dc6cd411048ad2acdbe47ce3cf15ae92c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:13 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:15 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:15 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:15 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:15 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:15 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:15 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:09 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:09 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:09 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:31:09 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:09 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:09 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e747052d9641f813625b39787eb8a090173c2844eaf035832ecaf2e4792400db`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabef75edfe32e39f45c7828b2fea8f21d772b7a54cd1303647e2b084d95d9d6`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 869.8 KB (869840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bca0de1e83ff4564019d9f09e4ed0a03f0e121d5c398023d03370166739ce08`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a254ace561b86d29fd2df516664e100ffe592ac8d265cdda2857e857d78e35cb`  
		Last Modified: Wed, 18 Nov 2026 21:31:29 GMT  
		Size: 123.2 MB (123150713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5853d05ac84eaa094deace4944138609cdf744e9e558a550ac3fe6669147ff`  
		Last Modified: Wed, 18 Nov 2026 21:31:28 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8ada041cc0d56900d7582613cbbdcff64efc1f18fd903026aff621e48e7542`  
		Last Modified: Wed, 18 Nov 2026 21:31:28 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e8d883050de10de61fd8ffd714c4a11968dc81f4fefced2e015096a133ae2f`  
		Last Modified: Wed, 18 Nov 2026 21:31:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:82b830689ed74e0a7621e85b4201530a73d3ec7ca492ba3dc06eae2be6b8f569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.5 KB (653525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06163709dfdc73f6e723b7320bc45f8251326ec290a66011dc00fbfad3e9e8ed`

```dockerfile
```

-	Layers:
	-	`sha256:eb4af34d009fb23dc7a5f54bf820bfcf092f8decd638a77ef752188491827162`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 615.7 KB (615744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c068febde261366b9dcb945bc1e142c3a120a0200a7d204d1809b09dbfbfacce`  
		Last Modified: Wed, 18 Nov 2026 21:31:26 GMT  
		Size: 37.8 KB (37781 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:ba94c1949fde2feab1f91f1f96cedc0c77ff34b5b1f7c5e5e54e467dd3a74081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123842057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f145c917c406ef1cfb5a6c8668d333681ea260610f8834099d53a01f188a8c`
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
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:29:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:34:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:34:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:34:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:34:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:34:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:34:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:34:55 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:34:55 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:34:55 GMT
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
	-	`sha256:d8848ec1a74811d2a44211df2b3f3c593bc145b383f05605e8931427554828b8`  
		Last Modified: Wed, 18 Nov 2026 21:35:38 GMT  
		Size: 119.1 MB (119136434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0efb731aa7e6d91a4e68843b28fa77927bdf3c868c3081bf6d97b9c08b05a3`  
		Last Modified: Wed, 18 Nov 2026 21:35:36 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21d9b7134c9e45ef30aa279b667cc0986ec82be8963acc710c9350a84f64f0b`  
		Last Modified: Wed, 18 Nov 2026 21:35:36 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a40642ed72a7925889fff8f9a3a02a59a8eec9a86e5313d7a02921168ba446`  
		Last Modified: Wed, 18 Nov 2026 21:35:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b6d3f5a84c699caf620138d7d85a16cb309daaa6bce895bcc49e03b31ab3142f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.3 KB (651300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a244702cc4d2a882a92bd3d444f34af93f713e32ffadca9b36ace626453817`

```dockerfile
```

-	Layers:
	-	`sha256:85f9e2303ed83432d365109e53c59484848fbf0ca6bad683b3eb38aa36b6d0d0`  
		Last Modified: Wed, 18 Nov 2026 21:35:35 GMT  
		Size: 613.5 KB (613457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2b7f514a68f3dc5ec8fb8abafc8106261a40514cadab67e6d31e96ee80ebff8`  
		Last Modified: Wed, 18 Nov 2026 21:35:34 GMT  
		Size: 37.8 KB (37843 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:ccbbd58372a6aca4a08fc3a31e9ee0c757cbe6776e9fb851d7c73cf2fdf46469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123452736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f8b2be0e9c3f989970ddb0768309eec3753976afe3261c284e873957cb331e`
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
ENV PG_MAJOR=19
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_VERSION=19rc2
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 11 Nov 2026 08:23:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sat, 14 Nov 2026 22:18:47 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sat, 14 Nov 2026 22:18:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 14 Nov 2026 22:18:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 14 Nov 2026 22:18:48 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 14 Nov 2026 22:18:48 GMT
VOLUME [/var/lib/postgresql]
# Sat, 14 Nov 2026 22:18:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 14 Nov 2026 22:18:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 14 Nov 2026 22:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Nov 2026 22:18:49 GMT
STOPSIGNAL SIGINT
# Sat, 14 Nov 2026 22:18:49 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 14 Nov 2026 22:18:49 GMT
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
	-	`sha256:266eaf654a5eb78f87c02979a9c6991c3a0ca504899b48983546b13bcfc1e1bf`  
		Last Modified: Sat, 14 Nov 2026 22:22:28 GMT  
		Size: 119.0 MB (118999169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b02d2511d08ddc36c98cc11aad1f32868f34117fcea818049becde889ea406`  
		Last Modified: Sat, 14 Nov 2026 22:22:10 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f04fdd057dccc171fa095388c2d76c58ca94c61552d599c4a36a53e5fadf84`  
		Last Modified: Sat, 14 Nov 2026 22:22:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4afcfa74bc58de601ab8ae7b73c67e8cb9c1845f79f0043657266fde043da670`  
		Last Modified: Sat, 14 Nov 2026 22:22:10 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a574169c3de4902dcdcc67b76818b3116a03155a050e04ecb24383503870e053`  
		Last Modified: Sat, 14 Nov 2026 22:22:11 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:54952b88526bdb9a05778c01c9ecf4e4307dc92f1e78ca8ca16294ffcad47b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4083e0933c40f723f8807e9b6a90f81719a746e805771e6d531d071c2f91b975`

```dockerfile
```

-	Layers:
	-	`sha256:c6f445acbafa587be4770e92374ac4d7909c495cbf960201e14fa024c9372692`  
		Last Modified: Sat, 14 Nov 2026 22:22:10 GMT  
		Size: 615.1 KB (615115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0661bec732445ff7c8c4342a90b5d1d69a985633ad00354ad6a8d719a4563796`  
		Last Modified: Sat, 14 Nov 2026 22:22:10 GMT  
		Size: 39.5 KB (39543 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:6257da7c738552c29fd7667d39d330c9df92a545bd07f5ee2d77fd50c9174816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127338998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdf26359fce51f65c55128f59a1b050085b873bf14b30260ba4ee8644b7ef20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:27:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:05 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:05 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_VERSION=19rc2
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_SHA256=23a7bb862e4bac395c047305ed0084117b01e71255ce858b907cdcd78ce40351
# Wed, 18 Nov 2026 21:28:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:37:43 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:40:16 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:40:16 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:40:16 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:40:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:40:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:40:19 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:40:19 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:40:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f370e2cc33977fe86bd28939923c292340056ce630d49ec68fc2f14f4d0fa2`  
		Last Modified: Wed, 18 Nov 2026 21:41:17 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d725646f35c1de9485a00fc087e08bcc99ecf67ee98d4aa39c3bd0edffa261`  
		Last Modified: Wed, 18 Nov 2026 21:41:18 GMT  
		Size: 875.4 KB (875350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c10e1f1140f6014ae9647c28234bf579556d138df4bff6d01cc3affe432f9f`  
		Last Modified: Wed, 18 Nov 2026 21:28:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0646eee80d6a8e92da09cd54fc229fb2f6a76994ee78c46a18831366b61c16`  
		Last Modified: Wed, 18 Nov 2026 21:41:26 GMT  
		Size: 122.7 MB (122716696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686489369325cfd63eeb86e49c3b1057863f21619467b21975574ad468291dc0`  
		Last Modified: Wed, 18 Nov 2026 21:41:20 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4238d26e05b1c300e86d7bc2f337780e118f7119982fc2d0578f241e35b314`  
		Last Modified: Wed, 18 Nov 2026 21:41:21 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99a64549c899e10a903b9357fc026135b48061f616c7ac079c794855d807e30`  
		Last Modified: Wed, 18 Nov 2026 21:41:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:8fe5bedaa27ad74da77cac6ac48b97b6a7151446d2b384655beade8217fc9989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.9 KB (652911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7b7c41beaa16c597a34bf68fb35efc04ecfe5a1348b6e2e5b65ae52f050b04`

```dockerfile
```

-	Layers:
	-	`sha256:4879f92cf22617f7955a126d11501f40a8ac10e9d49037fe724b6f49120d73a5`  
		Last Modified: Wed, 18 Nov 2026 21:41:19 GMT  
		Size: 615.1 KB (615103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9471053f43b8ecdfbfb13c2201cc22c546051f4f90abc9715b34e60a2bbee589`  
		Last Modified: Wed, 18 Nov 2026 21:41:17 GMT  
		Size: 37.8 KB (37808 bytes)  
		MIME: application/vnd.in-toto+json
