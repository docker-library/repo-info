## `postgres:19beta1-alpine`

```console
$ docker pull postgres@sha256:105d4f3da65f8487c42a7d27b227240467c6f4335c68663662be91b68e35f283
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

### `postgres:19beta1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:2a5c19045192212771f6c47ee60c6aeac3580919adabfe2debc8ccefbc7c6fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121258034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f159cc2aac778d1919893438b7db4cf738d165c074fdc955bf732398280e17de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:53 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:53 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:53 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:46:25 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:46:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:46:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:46:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:46:25 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:46:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:46:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:46:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:46:25 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:46:25 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:46:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424e6784853cec14499c8631cf5571f8387f859603b27275883e2338d397e0fc`  
		Last Modified: Tue, 07 Jul 2026 17:46:43 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21a406a8b95033d095c2d181c716da995bcb79a75cd720b982bee062d83a5e6`  
		Last Modified: Tue, 07 Jul 2026 17:46:43 GMT  
		Size: 900.3 KB (900258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c7ab08213a5015d974855b32d47fa50e2b5adf3610d90c17dba779c51f3a01`  
		Last Modified: Tue, 07 Jul 2026 17:46:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05df64e1c695ef23893b5c5e9ac9cdca4f8c92f57f7b55cb8d2b92324e8b52d`  
		Last Modified: Tue, 07 Jul 2026 17:46:46 GMT  
		Size: 116.5 MB (116482869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bb8932ecd21cf99b2a24fcd90dfe6e70d9024116c166f11d71ac06e018f1a9`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 21.0 KB (21007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9190152c1f2077a769416577effe6be4f4c7346ba22e3950811a8e35e0c11e`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037c34e74b8d6b05d06c1d261cef9dc71dd8d44125d4bfb53a864c500d7974be`  
		Last Modified: Tue, 07 Jul 2026 17:46:44 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89dbee0db707de9b3d3c42c90fb53b09370122f108069792c577a78ac90fc9c8`  
		Last Modified: Tue, 07 Jul 2026 17:46:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:9cb520c6d9bfb3587efbcff927bd79ee57d90aae400fda6669e5542f0a0b3be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30784f21b8add5a3b29a1d5bd2611f4fcece010695321bacee4fc95a51548ea3`

```dockerfile
```

-	Layers:
	-	`sha256:79add051e2a09a36381b80298642e9b71d988575d2ffd1c5c848cac28196a76d`  
		Last Modified: Tue, 07 Jul 2026 17:46:43 GMT  
		Size: 616.0 KB (616048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:950e23074f578f7fc153f6be1ce2ba4535c3128f56bd78e7604971539fb61df7`  
		Last Modified: Tue, 07 Jul 2026 17:46:43 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:3a674f6de54782fa9f0a20011899a8b2e3ee16fcdd8516050561c8939e39cc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117463853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c319b26f3d105c6e47d9e6926a54423256d87158a776bb5a80128ae003e93d67`
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
# Tue, 07 Jul 2026 17:42:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:42:51 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:42:51 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:42:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:45:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:45:55 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:45:55 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:55 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:45:55 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:45:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:45:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:45:55 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:45:55 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:45:55 GMT
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
	-	`sha256:dceee4f88fbe6d9a7a259de7e91642de73b00aec4e30343f9c1004af5869d742`  
		Last Modified: Tue, 07 Jul 2026 17:46:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefc68f8422ab7aa61a0bcd97d64c0e4ad87387ed81b91c47920b9a7d9189ea0`  
		Last Modified: Tue, 07 Jul 2026 17:46:12 GMT  
		Size: 113.0 MB (113017272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51c941e513f65bede82ce2132ead272bf7e08e83517544c1045d079391bb220`  
		Last Modified: Tue, 07 Jul 2026 17:46:10 GMT  
		Size: 21.0 KB (21004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ffe5cb0598ec019eb97d5180ffaaf22746760998e743d6595760dd5c120e60`  
		Last Modified: Tue, 07 Jul 2026 17:46:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7075aaebe04a66b205f79aa897ce3a7e5df8348f1a99c6a4c6e230ebf19abd26`  
		Last Modified: Tue, 07 Jul 2026 17:46:11 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446934da36498518a3049f6dab5116b7d8be401ac01ad6aa76349bd3c37c404c`  
		Last Modified: Tue, 07 Jul 2026 17:46:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:24fcf602fbfb3ccfb6e6fde682eeb353e8f34d29d28e6048e75a93110a5f0b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 KB (39767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a78bbde729487f9900c8129dd6f9be5f6635166a9c8474200d3761d633f01a`

```dockerfile
```

-	Layers:
	-	`sha256:11d8558ace15e325392161e4ef1ff0fa97a2c2f000fffb027afbc7651fa23977`  
		Last Modified: Tue, 07 Jul 2026 17:46:09 GMT  
		Size: 39.8 KB (39767 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ce121f6123ca78e993f2cefa1bbed440c5b6878fd39da708a553a220f5bdcfb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (110998915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcc52c6e4f13b55fa6b0dc9d2c7e7a29b3c4b8c1fc09fa2513eff7879acc1b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 18:06:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:06:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:06:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:06:52 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:06:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:06:53 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 18:06:53 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 18:06:53 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 18:06:53 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 18:10:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:10:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:10:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:10:48 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:10:48 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:10:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:10:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:10:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:10:48 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:10:48 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:10:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7406580cbd274a41de1d7ee8e632c8fc22d8e96b84dfc8420ed2dc33cf8ba4`  
		Last Modified: Tue, 07 Jul 2026 18:11:03 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd83a59729cde4771e539af65cc4915ce197e6941cb44fe2e108e221fc13d53`  
		Last Modified: Tue, 07 Jul 2026 18:11:03 GMT  
		Size: 864.6 KB (864631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207cb667e3d3720e6bf98d991749d251d4683794b3c582a1e6b3aa8531463bfb`  
		Last Modified: Tue, 07 Jul 2026 18:11:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37544d8b7505033347af416c0fbf6f077b8b5a377c137d6338d4783f6ad08b4e`  
		Last Modified: Tue, 07 Jul 2026 18:11:05 GMT  
		Size: 106.8 MB (106845169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eef8d87565ecbcd9676d60448a558dfa5bea0e8fefe49059bbad9013a13eee6`  
		Last Modified: Tue, 07 Jul 2026 18:11:04 GMT  
		Size: 21.0 KB (20999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ce50338a3af7b5b63c086d0ac83705abbe2dac815c225c3be7f9fdf527915b`  
		Last Modified: Tue, 07 Jul 2026 18:11:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc806f15d4a02e44dcb84eb75f01ae20650d28e8e84167c2223492ea4d06ae34`  
		Last Modified: Tue, 07 Jul 2026 18:11:04 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac08de714653b49086c56a31500236a957af4126cf12ee3703c03be3a2e605f`  
		Last Modified: Tue, 07 Jul 2026 18:11:06 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:df8e2fd7e314fa54b7e3d976906568539b837b2464d212f6b800ea25e3e14a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061679f04e166f3258571c3ec87e47e3885a93da9fd186cbbd9295d326c0699d`

```dockerfile
```

-	Layers:
	-	`sha256:43629ad32a89ca5425ef077d321e8423a04c847dfd66c22c7ab3825e207ef7ab`  
		Last Modified: Tue, 07 Jul 2026 18:11:03 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab363f52a6e3357dd0b546156c386fcf547362707d7769ff8cd94e6e1cd7b29d`  
		Last Modified: Tue, 07 Jul 2026 18:11:03 GMT  
		Size: 40.0 KB (39982 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:6c07e7daa50274efc53b2b8ab3c894cbf977491f6ffbe9ec4432e66c71069527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119032897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6ab805a76425b132b20f4acf45b614e623e88b65501628955a3c8aac10aa7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:14 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:14 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:14 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:45:46 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:45:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:45:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:45:47 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:45:47 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:45:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:45:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:45:47 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:45:47 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:45:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881f9706e0498866c44a779cbafea08ef427392d7dc5eacbc077727f4f34662f`  
		Last Modified: Tue, 07 Jul 2026 17:46:02 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441298c0a2d77544b03465fbe2b3472ae1622b84aa6b099dc980df4e101f06cf`  
		Last Modified: Tue, 07 Jul 2026 17:46:03 GMT  
		Size: 852.3 KB (852271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683f4ccd9222f38ccacdf07d0b9546492a54602afa1b916d60a0b29a020dbb5e`  
		Last Modified: Tue, 07 Jul 2026 17:45:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34cbcb0617bd4d9f8df877879022cda2ddc74e14c6d17af212e8928e9a5bd22d`  
		Last Modified: Tue, 07 Jul 2026 17:46:05 GMT  
		Size: 114.0 MB (113969077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487d6a073a80dde15101381abe34c26d317d544fbd062882186aa95358987453`  
		Last Modified: Tue, 07 Jul 2026 17:46:03 GMT  
		Size: 21.0 KB (21005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94692cf6c9b238bd96a0316fdda66ed4f62037b6f9d00ea44969444e5bc2a09`  
		Last Modified: Tue, 07 Jul 2026 17:46:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1167f2329c170fcbb5e00324cb40aaf4c55ca314e083b341a09eb190a7e491`  
		Last Modified: Tue, 07 Jul 2026 17:46:04 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa5925013bcef327ffb171c87aa015fe3dda2fe0b7a0f086b6a0776b8f576fb`  
		Last Modified: Tue, 07 Jul 2026 17:46:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:7dab073d4fa1dd997bd33529489f6ccf96a1ca09202a31805a66a55f61ce3c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f9cff552b97d53f62b66ec3f80398673e639f625c31c3c06c19d193edef625`

```dockerfile
```

-	Layers:
	-	`sha256:fe0d2fbcd57f81203a1916bec405106f2f4ccc25b4f905ae10e24e17d8e0ed4e`  
		Last Modified: Tue, 07 Jul 2026 17:46:03 GMT  
		Size: 615.4 KB (615430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d5c4380a201af6deefb49c4da202d306ba21844bc694dfeeaf217d04f7e4acb`  
		Last Modified: Tue, 07 Jul 2026 17:46:02 GMT  
		Size: 40.0 KB (40010 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; 386

```console
$ docker pull postgres@sha256:465fc67c742f75d96a9d268ea526c8789477fe79d6e59eca292d4251cff8a784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128188049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12e01ac0975b296cfd6f61e676a2371cb4b51f55240e3302fd5e2e8fe1297aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:54 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:54 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:54 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:54 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:48:18 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:48:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:48:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:48:18 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:48:18 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:48:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:48:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:48:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:48:18 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:48:18 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:48:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5732f575c5629cdfd1a6ad4a245a9c47eadba1f0d8b9e677047e9793a5b58e47`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c0a721d973e032574c8db720f62773bd0b2e885cc60f125c45407c14a5be9c`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 868.4 KB (868430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7e107e9684a90ff525f40b726cb1ed15c80d8c7405e6ac46b2bac59499d15c`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8839304bae86f2f74e7fa409d9d19881288e37a7308dfc0b146ff8bc498c99be`  
		Last Modified: Tue, 07 Jul 2026 17:48:39 GMT  
		Size: 123.6 MB (123620961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228897e495935d3e22a0379c35325326984354b95561c53d6893543580be7a99`  
		Last Modified: Tue, 07 Jul 2026 17:48:37 GMT  
		Size: 21.0 KB (21008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bffd1c2e4a904ef29f16518810503a574a25412236eb18a8b8f2b388ade39f`  
		Last Modified: Tue, 07 Jul 2026 17:48:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033cb9dd99b81e75f6dec0a7a5e8664cf6540a908f1a8078beae73d597e297fa`  
		Last Modified: Tue, 07 Jul 2026 17:48:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1f32cf419da0503fabcb2c40aa2b98eab369406c11c357e73597c7631990ce`  
		Last Modified: Tue, 07 Jul 2026 17:48:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:2f5b1d7b1600de4792294b252a08e74453acc402500ad7937b92b54ef3632526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ebbec881f2bc9d78443fcd18dee3d987cb7455105f9e6eea6d60495815e710a`

```dockerfile
```

-	Layers:
	-	`sha256:6baf38078c1198b4b4c66485379826daad84a565b2a81cb9c7b2e155dd57fde8`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 616.0 KB (616033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3faba6849f4605efca0af92ec637f568b29882791d983536659097658704633a`  
		Last Modified: Tue, 07 Jul 2026 17:48:36 GMT  
		Size: 39.8 KB (39806 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:39deeebcfcb69b38afb1a2e13e3e8356d51968e0864f691abdb4b7523b5ee8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124314486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55341c47269b2dc8025c88faf390d42b593b79bc9e8fa90ffb7d1a31d963f6d`
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
# Tue, 07 Jul 2026 17:44:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:44 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:44:44 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:44:44 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:44:44 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:49:47 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:49:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:49:47 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:49:47 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:49:47 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:49:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:49:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:49:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:49:48 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:49:48 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:49:48 GMT
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
	-	`sha256:b4f3b36adca9ef6b2a90d1c5b0bdb68e421c6c0e8625e90785e1616f7506ffbb`  
		Last Modified: Tue, 07 Jul 2026 17:50:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee77a03aa9520a2a22478fee46a5526e91f3c3d130583827a98264932017c313`  
		Last Modified: Tue, 07 Jul 2026 17:50:26 GMT  
		Size: 119.6 MB (119615114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c31ac5cef883020236b205acec7c6259eea355d39910c370ce8adcb09d17001`  
		Last Modified: Tue, 07 Jul 2026 17:50:24 GMT  
		Size: 21.0 KB (21014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d412bb39a5602e0787377a68077c5a8781a1559b158868adbd1d88f8d978d589`  
		Last Modified: Tue, 07 Jul 2026 17:50:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a38ccccb3ad7372b318459cabc4de3ce6e116d4456a217bf26d4e80d920ad`  
		Last Modified: Tue, 07 Jul 2026 17:50:24 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8947eae25278a4fcf37039d6ccf2680ac7318464f27325257b972db66dd15f`  
		Last Modified: Tue, 07 Jul 2026 17:50:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:b2826f1efdcc5a32576e41e2c1c11fdeb27e0c38a2d4c76147e06943f0e9565e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148885e4933e86186b3f2126c58b9b214529fc162e763d84d09dd8cc58166e8b`

```dockerfile
```

-	Layers:
	-	`sha256:e93809299a3ac2c3f28f723aacace50ba9d09d63085b45d457cca33ecbfaba7d`  
		Last Modified: Tue, 07 Jul 2026 17:50:23 GMT  
		Size: 613.8 KB (613757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92f4bfc49bbc9505689c970457acbf37dc9757d2558409d6402d22bb07b58849`  
		Last Modified: Tue, 07 Jul 2026 17:50:23 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:279f6ad16a8bee883ef1206260b785b0048b330df9e8371baee567fa470dbc24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123925025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca690a5dfcef4519d02e2a615ab7a95317943c3b5afabd56a4e1191e3380fac`
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
# Wed, 17 Jun 2026 20:22:13 GMT
ENV LANG=en_US.utf8
# Wed, 17 Jun 2026 20:22:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 17 Jun 2026 20:22:13 GMT
ENV PG_MAJOR=19
# Wed, 17 Jun 2026 20:22:13 GMT
ENV PG_VERSION=19beta1
# Wed, 17 Jun 2026 20:22:13 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Wed, 17 Jun 2026 20:22:13 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 17 Jun 2026 21:14:57 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 17 Jun 2026 21:14:57 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 17 Jun 2026 21:14:58 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 17 Jun 2026 21:14:58 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 17 Jun 2026 21:14:58 GMT
VOLUME [/var/lib/postgresql]
# Wed, 17 Jun 2026 21:14:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 21:14:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 17 Jun 2026 21:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Jun 2026 21:14:59 GMT
STOPSIGNAL SIGINT
# Wed, 17 Jun 2026 21:14:59 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 17 Jun 2026 21:14:59 GMT
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
	-	`sha256:b37c739103d625ef104f1832bc1629a5055aa3b92c081dbc223595e504ae6f8e`  
		Last Modified: Wed, 17 Jun 2026 21:18:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a46a3549eb6e48a92fc5946618a38aa83ddcffab97ec14902565d767fd46a5`  
		Last Modified: Wed, 17 Jun 2026 21:18:23 GMT  
		Size: 119.5 MB (119477211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4e2a80984de56bc6c0da7a347c4db7a2e7f171809c9b814acb950070d93ed9`  
		Last Modified: Wed, 17 Jun 2026 21:18:07 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74f1695af595fef4e310d295f936af01f7ff0874076ef51a23496be2dc4984e`  
		Last Modified: Wed, 17 Jun 2026 21:18:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ee63d5324f10be04f5f7343410807e57b2914b56fa57e33eb267ec44816126`  
		Last Modified: Wed, 17 Jun 2026 21:18:07 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60800a5028e5d9be2a6d4343f343030b64cc44e018012e001cf02f62fe92f180`  
		Last Modified: Wed, 17 Jun 2026 21:18:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:3a080340cc572fb825f7b9974ad3d63858d27185688d22c6c67850b8f88f637f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711a06a78f2771bc18fdb673c955e76434dd937fdafb89fa339b7302723a77fc`

```dockerfile
```

-	Layers:
	-	`sha256:eb48750fcd13303cc95bce29a487c7bad76fd13aa98ce09dba5a284b58394603`  
		Last Modified: Wed, 17 Jun 2026 21:18:05 GMT  
		Size: 615.4 KB (615407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c200be48bcad35ee8c2539f0c9bcfbdd1b713381816f15636183d0da03ccd06b`  
		Last Modified: Wed, 17 Jun 2026 21:18:05 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:21ca0ee99639514186fc772b4717167b6c68c5c02e0d8fa2839c9548981a4847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127844032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac37906e3b3b009f36010ebe57c4b11df1f8e09c1ebe43a39a81d6c13013843`
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
# Tue, 07 Jul 2026 17:43:16 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:18 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:18 GMT
ENV PG_VERSION=19beta1
# Tue, 07 Jul 2026 17:43:18 GMT
ENV PG_SHA256=d8c8d3e18c12e9fb792b3e927049900d40571f4ef6167017a23e5bbfc40d30ee
# Tue, 07 Jul 2026 17:43:18 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Tue, 07 Jul 2026 17:51:21 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:51:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:51:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:51:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:51:26 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:51:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:51:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:51:30 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:51:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:51:30 GMT
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
	-	`sha256:4635df43478dcbbfbe74c3e2275a5ab38929b9060df003e0a630ccc5c3a02838`  
		Last Modified: Tue, 07 Jul 2026 17:53:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef95a6a76ed7d95d11d1d6b150545e12c67b5d3c9208eebe3a81ba906869542`  
		Last Modified: Tue, 07 Jul 2026 17:53:19 GMT  
		Size: 123.2 MB (123231691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250cfd6a4e6641c74e904250792143d1ac13150e903b913f2550c2b1b85b15a8`  
		Last Modified: Tue, 07 Jul 2026 17:53:15 GMT  
		Size: 21.0 KB (21013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4debb767b416ccbfb56ec3d1af5ce83bf48db05dbd12ce50e9062e4e88af1e`  
		Last Modified: Tue, 07 Jul 2026 17:53:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a9255c5a04563ed029573d251b5b096c534afddd9180747a50130dbb262e77`  
		Last Modified: Tue, 07 Jul 2026 17:53:15 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adfde423b6d309b9d56321781af64c9899741aeb16109f3d29090e7a5d3c9be`  
		Last Modified: Tue, 07 Jul 2026 17:53:17 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:018ecc4d648f7e5756a01d5ed8a29cf7e3d0fc7eb615083251453d791037a4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d7c96a6abc340c31ee725d699363482ef32c3bcab39eabee1cc9aa87f3962c`

```dockerfile
```

-	Layers:
	-	`sha256:4c5af18cc7df94c83cb5b9519406b3b841dc2e331dfd4bc5d606ceecf5cf27be`  
		Last Modified: Tue, 07 Jul 2026 17:53:13 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68aeba3f20e8b71fc2f7ebc0518c9c0cf82d38ea0587513c2b12945c422c9786`  
		Last Modified: Tue, 07 Jul 2026 17:53:12 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json
