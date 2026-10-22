## `adminer:6-standalone`

```console
$ docker pull adminer@sha256:251295c1cd51d3889f1c42ffa4864b24eeab51f0caf395cfe5bf4726c5ec9a2a
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

### `adminer:6-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:f2345387b7e50f03bdd74b571fb62b34fa4ccb59ef1a7ecf1a6e93221f46a35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43912409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67bda38629b1bf3eab7ea82a50c593f76c97de336c2b638c6f0b08b4db6ad3e`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 22:51:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:51:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:54:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:54:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:54:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 22:54:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:54:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:54:47 GMT
CMD ["php" "-a"]
# Wed, 21 Oct 2026 23:26:38 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Wed, 21 Oct 2026 23:26:38 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:26:38 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Wed, 21 Oct 2026 23:26:38 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 23:27:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Wed, 21 Oct 2026 23:27:03 GMT
COPY *.php /var/www/html/ # buildkit
# Wed, 21 Oct 2026 23:27:03 GMT
ENV ADMINER_VERSION=6.1.2
# Wed, 21 Oct 2026 23:27:03 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Wed, 21 Oct 2026 23:27:03 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Wed, 21 Oct 2026 23:27:04 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Wed, 21 Oct 2026 23:27:04 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:27:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:27:04 GMT
USER adminer
# Wed, 21 Oct 2026 23:27:04 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 21 Oct 2026 23:27:04 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017595bd4b1477cabd98654a7430bc5dd56644fd465a450fab575519abb23f06`  
		Last Modified: Wed, 21 Oct 2026 22:54:56 GMT  
		Size: 13.9 MB (13885752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540cbae3c49d8c5ff3feadb183a8514c40b141d755946527b09519e73c7637fe`  
		Last Modified: Wed, 21 Oct 2026 22:54:55 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bcb353c872c6bcb6f4aa3a75f504cfd7840cc59694661d588090384ac11c8b`  
		Last Modified: Wed, 21 Oct 2026 22:54:56 GMT  
		Size: 20.5 MB (20503507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e42d5661e3636baf24f0ff34d27e64c9025699602c72ee5d56d754c0125361`  
		Last Modified: Wed, 21 Oct 2026 22:54:55 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887771f28d2cfecdba89393328498a1c9d75a36a30a78ade6d0418b870868ad7`  
		Last Modified: Wed, 21 Oct 2026 22:54:56 GMT  
		Size: 22.4 KB (22357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0cb78c1bd4273c28dca39b7bbdb4408f0858400791ccf6f0b614fb3b9b44d9`  
		Last Modified: Wed, 21 Oct 2026 22:54:56 GMT  
		Size: 22.4 KB (22374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ee0c724f113d566b5343f13f5aef3fbed29e59aba8e8121722d807d6c98ffcd`  
		Last Modified: Wed, 21 Oct 2026 23:27:08 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f859cf2da3817be6045f587d78ada768870ed472e8d5f6381b430ba482e8c02b`  
		Last Modified: Wed, 21 Oct 2026 23:27:08 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118f33c58137bcfb2560ee3a409529593d33b9c9ec2781b6d1a08df7bfd39375`  
		Last Modified: Wed, 21 Oct 2026 23:27:08 GMT  
		Size: 1.5 MB (1467920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c54f2ef97a2723ad225d90c034cb60dba63decf890cf6b4b6a1e40e764ff0d`  
		Last Modified: Wed, 21 Oct 2026 23:27:09 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38cc13a4286a7fe2fbbe45b78a93814a21f062c09c32b3752a4fe32bccb64cb`  
		Last Modified: Wed, 21 Oct 2026 23:27:10 GMT  
		Size: 659.1 KB (659123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebde6f905ef671c4ed6fa3ebc37c6b634796346f8c7b1a477261623d950ce136`  
		Last Modified: Wed, 21 Oct 2026 23:27:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:75c12b5fc99dfe1df9ffbfff0ad690d978b9bf2ecff6a0bfbb3c2c5b02930b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59244166330198306a696a7d745b44970a7bc82ce3fe3c00497071e3300df22f`

```dockerfile
```

-	Layers:
	-	`sha256:0aff35628c31decf5c1ec72e8df6a5e5c814b7ca63eb9ea1fa271f59cc2c40d9`  
		Last Modified: Wed, 21 Oct 2026 23:27:08 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:471a459f7eda186ca70f374624eb3baaf8c1dda690395d8dacb64c7d9f6a62ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41576405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7368ba2255fc7c17013613ad4e1277f8d8b2d61aa6ab68aa1055e351e9b0889c`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:18:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:18:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:18:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:18:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:18:11 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:18:11 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:18:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:18:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:21:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:21:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:21:18 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:21:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:21:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:21:19 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 00:14:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 00:14:25 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 00:14:25 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 00:14:25 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 00:15:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 00:15:02 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 00:15:02 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 00:15:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 00:15:02 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 00:15:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 00:15:03 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:15:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 00:15:03 GMT
USER adminer
# Thu, 22 Oct 2026 00:15:03 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 00:15:03 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0e657367fdd76547c921b467ea6313492dbef6d73d625b18b88c6d6635e9cf`  
		Last Modified: Wed, 21 Oct 2026 23:21:24 GMT  
		Size: 3.4 MB (3445764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170532f8624d975a4c0c7a5ff22856486095e8a92fd7c487b9940fd234b083ef`  
		Last Modified: Wed, 21 Oct 2026 23:21:24 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddca9160f09c1a0bd1d08f3ff836198cd492b371fdfd7fef72388c5799151f3f`  
		Last Modified: Wed, 21 Oct 2026 23:21:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea32da0a699cc50e70ae20b1963cc24cf4f419918cd97b6abb7eed6e89e2e60`  
		Last Modified: Wed, 21 Oct 2026 23:21:25 GMT  
		Size: 13.9 MB (13885750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73cf06b37528339e0c2bdddf8693e933688ec569d1eda24e4db33dbb2dd0d90`  
		Last Modified: Wed, 21 Oct 2026 23:21:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e9f5cda2f3e3cea966c589eb9b9fc6db184f23d55c888ae846d1f3b2e98bad`  
		Last Modified: Wed, 21 Oct 2026 23:21:26 GMT  
		Size: 18.5 MB (18511454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5ac2562ec8cf5eb4cfd6a22d3b5ed808988470a060f75b197f507ed315ac4f`  
		Last Modified: Wed, 21 Oct 2026 23:21:26 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a81a3bbf29f08aa2b581fc12888d19c2478d690a56ce97218096428d02fbec`  
		Last Modified: Wed, 21 Oct 2026 23:21:26 GMT  
		Size: 22.1 KB (22136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12e7c43e6d17ffc4a290c8a4719360d803c117a9a3138a3de1d062975b0115f`  
		Last Modified: Wed, 21 Oct 2026 23:21:27 GMT  
		Size: 22.2 KB (22156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f0a106168f1ce48e04bf7b3161e07a472999c20a82a4c48139144a792f56c8`  
		Last Modified: Thu, 22 Oct 2026 00:15:07 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9a1ab932f145e7b984e201b942f9e2b1988b16e844ecf03b11113b2b76f552`  
		Last Modified: Thu, 22 Oct 2026 00:15:07 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e15ad9c2c0c23edabc318559caaf347e349711c0d68f0050aa5f9ff5752a3d`  
		Last Modified: Thu, 22 Oct 2026 00:15:08 GMT  
		Size: 1.5 MB (1464003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de03ead19b94b3856589bffcd758cdb2e019563f5f2abd0646b0a17532eb1bf`  
		Last Modified: Thu, 22 Oct 2026 00:15:08 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b276d3bb45d939cba5e353eaf062749086e469ce462f123f11efe1fa5eec6d`  
		Last Modified: Thu, 22 Oct 2026 00:15:09 GMT  
		Size: 659.1 KB (659119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b9b5486da9bb110653d202b013ba7000001e27f87ea0d6368fc874a0f6ba46`  
		Last Modified: Thu, 22 Oct 2026 00:15:09 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a8772e6ecdadbad8af1c424757e7820d06f767dbaee19ddad4607c0dea84d842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba65b550faa0e365d057b957df7edffbd840692d246456836826569aec5bd8a`

```dockerfile
```

-	Layers:
	-	`sha256:58f00a0c5a62df63e4d57d20441630516672993bbebb4fe29fa7892a1c994f59`  
		Last Modified: Thu, 22 Oct 2026 00:15:07 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:0d847dea98ae1f5e3f0139f392d81d794bc8349c58f8c6ccb543600124eff374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39883956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d65f3d04d5468ee451f07e1f687fcfb5b0800415bd9e13eb7fb5eb2b7cb221`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:19:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:19:21 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:19:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:19:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:19:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:19:22 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:22:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:22:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:25:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:56 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 00:23:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 00:23:46 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 00:23:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 00:23:46 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 00:24:21 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 00:24:21 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 00:24:21 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 00:24:21 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 00:24:21 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 00:24:22 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 00:24:22 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:24:22 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 00:24:22 GMT
USER adminer
# Thu, 22 Oct 2026 00:24:22 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 00:24:22 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a3babe236cc284b12bb4d563a4e62a720f4a4377cb8f97d6a858011f9f050a`  
		Last Modified: Wed, 21 Oct 2026 23:22:38 GMT  
		Size: 3.3 MB (3257794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecf7eb3391b1be8697075ea2c3b3b1fda54884e86c75792d5c0b72a7db7da9a`  
		Last Modified: Wed, 21 Oct 2026 23:22:38 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c7eeeccdd4c571fc4f348b5c307fe3a29ed8888e8ae878167928dd7519e9b4`  
		Last Modified: Wed, 21 Oct 2026 23:22:38 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02adf7adb3ae360dae3e5bc6c2d16ed7fdf85a852f1d90b4457c6f9d93716db5`  
		Last Modified: Wed, 21 Oct 2026 23:26:04 GMT  
		Size: 13.9 MB (13885760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eded1ca6042d9f680dc386bf0614f740a33a75d8bd8fcfc2e07f1453d3747df3`  
		Last Modified: Wed, 21 Oct 2026 23:26:03 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a46acddbb96484c35f9a57d7f3959ac4557fe3790dd696ea5b8f0289961c7de`  
		Last Modified: Wed, 21 Oct 2026 23:26:04 GMT  
		Size: 17.4 MB (17448660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4b8bc59c755ca6eb12d7014b92b0d493f4dc3a2a923a3675b09c197a7108ae`  
		Last Modified: Wed, 21 Oct 2026 23:26:03 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5fdc915bc26ebdd0034b7655c35875fda9b4c9e0ac424f69f48ce2bb0e5ae4`  
		Last Modified: Wed, 21 Oct 2026 23:26:04 GMT  
		Size: 22.1 KB (22144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e0f5c9710f1faeffb1f1e38c6cd6d2bdd0a2cc1f101478661a962d046e46b9`  
		Last Modified: Wed, 21 Oct 2026 23:26:04 GMT  
		Size: 22.2 KB (22163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83b4a59d7556792a565e62ab6abf770362f8760f95c7b40004333a123de8f40`  
		Last Modified: Thu, 22 Oct 2026 00:24:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1a64a531754470ea4090f7eae3e178f63018c231915344c5fc793bb9bc81d6`  
		Last Modified: Thu, 22 Oct 2026 00:24:26 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac93d3d8cb4dd606d8f72143a7ce5c63b738842b25e9dd8592af6e7fd1b7dcb2`  
		Last Modified: Thu, 22 Oct 2026 00:24:26 GMT  
		Size: 1.3 MB (1313919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70aef414e60555e6cedbfa5670eaff7a1743f0092e744a8e3776262348be2d3d`  
		Last Modified: Thu, 22 Oct 2026 00:24:26 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116fada8513dfe0b15166bc279b8e8208b04989e85672cf0913cec72ab7edafa`  
		Last Modified: Thu, 22 Oct 2026 00:24:27 GMT  
		Size: 659.1 KB (659128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc74aeea0ff43d9dbaab41ca0da7a1bcc79aebff04a06f0dc506b39e8331d0ce`  
		Last Modified: Thu, 22 Oct 2026 00:24:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:07d1c0b6448846f99b086e205e08f1a65afa14d63a9bfbb8d99f96844da5cdf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96eb004a6f94d9e3fb6ad81f601a90010f36c0844b039dcf251c62e397ece4c1`

```dockerfile
```

-	Layers:
	-	`sha256:775fb9198349bd610929ad80d74c256deece1400b8946cb37cde1a0c47d2e8dd`  
		Last Modified: Thu, 22 Oct 2026 00:24:26 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:8fdd09fa5086200621cc1c45e0a787a294af45de72e5aa770def6aec254a26d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43647502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd692c7a50f9de8c56a71bec73f0342ec0f6db1dbcf7beda60309ec291a411e`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:20 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:20 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:20 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:13:20 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:13:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:16:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:39 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 00:18:17 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 00:18:17 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 00:18:17 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 00:18:17 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 00:18:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 00:18:52 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 00:18:52 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 00:18:52 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 00:18:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 00:18:52 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 00:18:52 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:18:52 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 00:18:52 GMT
USER adminer
# Thu, 22 Oct 2026 00:18:52 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 00:18:52 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec99621a7f7b54811195f6699289994fcd77e0ae3cb97e5845d2862c026ed8fa`  
		Last Modified: Wed, 21 Oct 2026 23:16:46 GMT  
		Size: 3.5 MB (3500773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63326243b02d9192fd74bf00cd48dd2eddb48543e0081645caea26545e8d8bf`  
		Last Modified: Wed, 21 Oct 2026 23:16:46 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20af67f2fc8456e4af7f98ef92fe184f6c2d1f7c230aa58dca0080a057aaba73`  
		Last Modified: Wed, 21 Oct 2026 23:16:46 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18bfddf829b4c49918f5dd982129b79a7b7f96387d0bbb41cd73c6b494f18d8`  
		Last Modified: Wed, 21 Oct 2026 23:16:47 GMT  
		Size: 13.9 MB (13885737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460687344e9d162a4d9d491b8a977ad555765b8fdf3d7bed88b6b27e9c0abf63`  
		Last Modified: Wed, 21 Oct 2026 23:16:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402c43ec1377979de872b778dbc88de3b3dccb0bd06ce4010fc7f96be086e451`  
		Last Modified: Wed, 21 Oct 2026 23:16:48 GMT  
		Size: 19.9 MB (19879347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5275d470999fd633293f96caf207c6dfcd6855a8e813d57c0d2ff67053eb89`  
		Last Modified: Wed, 21 Oct 2026 23:16:48 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dc30c97430bda02e782e8736ccf88e48eeb7b35d816b861e5a9825538e5e29`  
		Last Modified: Wed, 21 Oct 2026 23:16:48 GMT  
		Size: 22.2 KB (22161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422aa1d420cf8a518aa0cb79ab753701cbf84fae321eff832fc9b65b0bb5d5b9`  
		Last Modified: Wed, 21 Oct 2026 23:16:48 GMT  
		Size: 22.2 KB (22182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7159434b2526e4bcd91424996e6c0d55c7de11c9dd587f9244816a6175bd61f8`  
		Last Modified: Thu, 22 Oct 2026 00:18:56 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d1a18b2a7a29559221421b24c96389d2b6bb04ccf0332f1cb673149578a288`  
		Last Modified: Thu, 22 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdbb1eb7c860a19517dcd7ad9945b78d6c420004c465432ba347f7ed95764e4`  
		Last Modified: Thu, 22 Oct 2026 00:18:56 GMT  
		Size: 1.5 MB (1479973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d159351a9694d098fc6339f6e93b5bb2c48410d0348002a8f863b7ce511471ac`  
		Last Modified: Thu, 22 Oct 2026 00:18:56 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd76f453de05b5fc43be3d3734c6f66a62f5e4be3a1b24e2684fe6a76b77670`  
		Last Modified: Thu, 22 Oct 2026 00:18:57 GMT  
		Size: 659.1 KB (659119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ad01c43859d290c91817312f503e94dc3b41adebfe1f1e5d157281aaf33b19`  
		Last Modified: Thu, 22 Oct 2026 00:18:57 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:72a27ed85fad877f371d1472bd531439558e06d735d95017e2eab229bcbebb0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ef8130c10dc268c6c070307d62afb2c803811ad121d165470d12a4e026d1b2`

```dockerfile
```

-	Layers:
	-	`sha256:b9719101c4dd4549687bf75c10b29a4036e6c6bac094414aa660299384f8d81d`  
		Last Modified: Thu, 22 Oct 2026 00:18:56 GMT  
		Size: 36.0 KB (36034 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; 386

```console
$ docker pull adminer@sha256:2257083596e1e6d0348bd146a0f5d72ff441f22f88851eee117ab46e2e8584fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44245506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6262df25c68fca7bfbe4a33790c04a734da94a9291bf62aacd8f2f9fb0b1284`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:14 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:14 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:15 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:13:15 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:13:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:16:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:46 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 00:15:29 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 00:15:30 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 00:15:30 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 00:15:30 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 00:15:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 00:16:00 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 00:16:00 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 00:16:00 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 00:16:00 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 00:16:00 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 00:16:00 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:16:00 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 00:16:00 GMT
USER adminer
# Thu, 22 Oct 2026 00:16:00 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 00:16:00 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3f28290a4f6d0b03515923d23dc7c38fff9840e96da6d73823f02f41189f84`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3524277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5903169d0ead3b540f081f4539556fc38695c9af24f84beb853dbc3c7ba8973a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e567a8c0b4976c2bd1b490afc4f22743f16fdeeb7988d2e14aacbc12311fe0e`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca28965458b839c8d591e0a5b3720293a3217875c2b78bbe56eee25cc2f4a4e`  
		Last Modified: Wed, 21 Oct 2026 23:16:54 GMT  
		Size: 13.9 MB (13885722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32353d7d2756a696c1c0b1d92da5c5f53084cb5154eee331c1df43e6cc4c788b`  
		Last Modified: Wed, 21 Oct 2026 23:16:54 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8286a79edf0a32931946dbdd28f3cd0e5b2cbb2c5395214606e0010aa9f23d2a`  
		Last Modified: Wed, 21 Oct 2026 23:16:55 GMT  
		Size: 20.9 MB (20948632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4968a986bfae756779039b821d253bce91c7b30cb8e2b806839d93c919f097`  
		Last Modified: Wed, 21 Oct 2026 23:16:55 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a96afe38a7f7b90007261ea267ed1cfcb2fc4297ea31d9de68ebee934fbd366`  
		Last Modified: Wed, 21 Oct 2026 23:16:55 GMT  
		Size: 22.3 KB (22342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c487a277ecc7efb5ed28f3ffe0c331871a67857dfdfb7032a1a8b4883266f398`  
		Last Modified: Wed, 21 Oct 2026 23:16:56 GMT  
		Size: 22.4 KB (22358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639fc3209bee2608c7af3e3cc027f8fc610ca2ad49bbf91099bf5bbf49d58692`  
		Last Modified: Thu, 22 Oct 2026 00:16:04 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dffccb12c3a9aeb9297ec593a9898b1299f0b7fa1294127a0b5a507a083e670e`  
		Last Modified: Thu, 22 Oct 2026 00:16:04 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6156802c73183bcd528fd6fcb805524ab0f787af3cdea7fcd32d6701f07d4170`  
		Last Modified: Thu, 22 Oct 2026 00:16:05 GMT  
		Size: 1.5 MB (1496342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9b709adebfc0d9be2f7ae24c3f758ad60ca0cf5e295dc4e2570b45adc1c17c`  
		Last Modified: Thu, 22 Oct 2026 00:16:05 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e39d8fca73a0258d5939e30c477c3cd670b96cb3f8faf568a017b89f8bad98`  
		Last Modified: Thu, 22 Oct 2026 00:16:06 GMT  
		Size: 659.1 KB (659118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6075a7f2038a3a2216b0bee21029f93e20fd0ca41da18d8631b1c13d40a5c3a3`  
		Last Modified: Thu, 22 Oct 2026 00:16:06 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a078d8c9d2ca1606b47f52e8c9c4efaf7ae96ea6e37bf92dc4195c6e12bb2ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275341577b55006def7019c67aa7344e26a773be8705854cc7e7bc2ad531cc19`

```dockerfile
```

-	Layers:
	-	`sha256:7b905c79bace0545f573b49863b34b0785a0a643eefaa0b3cd6444e0eaa66b78`  
		Last Modified: Thu, 22 Oct 2026 00:16:04 GMT  
		Size: 35.8 KB (35813 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:a6da762e8b0626d4cbafab2ede388ecc5dc0f07f4c3a6686315315ad558b217d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45158854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7d7e8340dd5a9e736f244046c3ece343a2e7a297d6cc59f73888a76d556229`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.4.27
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 22 Oct 2026 11:20:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 11:20:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:27:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:27:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:27:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 22 Oct 2026 11:27:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:27:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:27:14 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 16:03:42 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 16:03:43 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 16:03:43 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 16:03:44 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 16:05:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 16:05:34 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 16:05:34 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 16:05:34 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 16:05:34 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 16:05:36 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 16:05:40 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 16:05:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 16:05:40 GMT
USER adminer
# Thu, 22 Oct 2026 16:05:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 16:05:40 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb4718904bc8a3429254703a45237851d8f335c676f5148dfb7ad84f67a952e`  
		Last Modified: Thu, 22 Oct 2026 11:27:34 GMT  
		Size: 13.9 MB (13885745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea2c43f375d9bba4422bcd71d4797d75e585893649429abd15beb11fb72586e`  
		Last Modified: Thu, 22 Oct 2026 11:27:33 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be70f4a4186901f25ac3b611cd0ece3a0f67b717265829a7d5b0c886fb32967`  
		Last Modified: Thu, 22 Oct 2026 11:27:34 GMT  
		Size: 21.5 MB (21535425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5430b7d57718737745b0e50443d0ed499bcf9d4abeac5e1590426d1e205dad5c`  
		Last Modified: Thu, 22 Oct 2026 11:27:33 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd9c68007b1529303f68234b3ad950229145a754904ef726e4c5db50f6c33ff`  
		Last Modified: Thu, 22 Oct 2026 11:27:34 GMT  
		Size: 22.2 KB (22179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1a9dd29f6ad6a7b54b54d6adf08649b0c0b1056616476e69db87348941c5d4`  
		Last Modified: Thu, 22 Oct 2026 11:27:34 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9597aa8d452cf7dc62996beae4a4aa85c5796aad3f35c9cca1bae22381d866cc`  
		Last Modified: Thu, 22 Oct 2026 16:06:03 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd802eece1b48de31732adb8ce2cd2d59ffb7722b937c68a208180b71186516`  
		Last Modified: Thu, 22 Oct 2026 16:06:03 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d58d8738d2c991e523c6f760b4129d2510bb30bbf77e46b03a99296b8d71b3`  
		Last Modified: Thu, 22 Oct 2026 16:06:03 GMT  
		Size: 1.5 MB (1540135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ac68d1020d866d8827c8fdfe328d64adfe3e1a7eaa697e447458cb3b74d73e`  
		Last Modified: Thu, 22 Oct 2026 16:06:03 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179d21afaeb09488d9c46fdc40575a7d1ee6900b803825f1b76bae9561259d72`  
		Last Modified: Thu, 22 Oct 2026 16:06:04 GMT  
		Size: 659.1 KB (659132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00812fab5e6843ae73e7cabe2c77a9691b91bff285c13d3e3e4bd6508bb40b`  
		Last Modified: Thu, 22 Oct 2026 16:06:04 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:9e8e4bcc5b12c7018742cd707f01e6352f0c5e54240dcdffa8a7d354a6eb8a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde19186bf4c93cac42a4c79df29d4bc814a3ac366fe8d0056e8d758b398109d`

```dockerfile
```

-	Layers:
	-	`sha256:3cefc51a51dfcacd0bec6723439e79b5e6e22a4d18a9ee75e70aa4e33b844ed7`  
		Last Modified: Thu, 22 Oct 2026 16:06:03 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:e1c78e4086d5ceefefb899eb7dade7573c30814e46e35abdda5d1111dd5a7050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45466911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab320482a0a48d2d375fbb1adeee81a00617dcc4e96e659a8e2cd672eb44080a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 19 Sep 2026 07:31:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 07:31:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 07:31:38 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_VERSION=8.4.26
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Sun, 27 Sep 2026 19:22:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 27 Sep 2026 19:22:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 20:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 27 Sep 2026 20:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 20:23:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 27 Sep 2026 20:24:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 27 Sep 2026 20:24:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 27 Sep 2026 20:24:04 GMT
CMD ["php" "-a"]
# Thu, 15 Oct 2026 02:42:34 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 15 Oct 2026 02:42:34 GMT
STOPSIGNAL SIGINT
# Thu, 15 Oct 2026 02:42:34 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 15 Oct 2026 02:42:35 GMT
WORKDIR /var/www/html
# Thu, 15 Oct 2026 02:48:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 15 Oct 2026 02:48:20 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 15 Oct 2026 02:48:20 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 15 Oct 2026 02:48:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 15 Oct 2026 02:48:20 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 15 Oct 2026 02:48:23 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 15 Oct 2026 02:48:23 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 15 Oct 2026 02:48:23 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 15 Oct 2026 02:48:23 GMT
USER adminer
# Thu, 15 Oct 2026 02:48:23 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 15 Oct 2026 02:48:23 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7241c71c294d31a27a6d12101f993cfc2b6864a0ff355a14fa8497f9c685f122`  
		Last Modified: Sat, 19 Sep 2026 08:32:39 GMT  
		Size: 3.6 MB (3636236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3222b1ad00a93a0d1c606f25dede0fea90c1cfaa6958b7c8436165a65af4dc`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6597b890299299be1fd94195683c9712a3a11b9d0265652252b6cb0ace1a0acb`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0fee64f9d32e593e518324930f1b0f75b2ad95bdfa2cef3426ecffe21453dc`  
		Last Modified: Sun, 27 Sep 2026 20:25:09 GMT  
		Size: 13.8 MB (13814819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a75d6294210c03ac770a442f7ed06d5a4ecb19ed91426269fac152c6580f19`  
		Last Modified: Sun, 27 Sep 2026 20:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873dccec55b0b6701f3d2256c9da2dfa6d8a210b2d7b1ec48d6f225d69798bc1`  
		Last Modified: Sun, 27 Sep 2026 20:25:10 GMT  
		Size: 19.6 MB (19634929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:217814e1b29d28e4cde094beda3643812f59af5979f3f0f079c18f735b6c5c41`  
		Last Modified: Sun, 27 Sep 2026 20:25:05 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a38d3d19fa41ade01dbcf846044670094c4452e249403b3739b4ac22c2bc31`  
		Last Modified: Sun, 27 Sep 2026 20:25:07 GMT  
		Size: 22.2 KB (22250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d8ce6fa9bbef308b6744b9b00171679e6cd870a0ca3d86465e2a132d712e1`  
		Last Modified: Sun, 27 Sep 2026 20:25:07 GMT  
		Size: 22.3 KB (22271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8347fe6da2bbf2e4dfc48042f40d45fc4dc4f83a90d7deb72bb746f63f89869`  
		Last Modified: Thu, 15 Oct 2026 02:48:42 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1882e8b4e6d7f9ebdbd6f4b940eb8192ab1266c6084bc102b6dd8bb4b533a2d`  
		Last Modified: Thu, 15 Oct 2026 02:48:42 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42af76fc5cecf044fd7d37044114b4b3f39262bfcd5fd3f98764f2bad64100bb`  
		Last Modified: Thu, 15 Oct 2026 02:48:43 GMT  
		Size: 4.1 MB (4094145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c5d595e12f8a19617b708a9f576c61f73cf3877baae013c82f9e5078ccb643`  
		Last Modified: Thu, 15 Oct 2026 02:48:42 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd392b918591565bccd83a4d060b553a076b71b485fa180e0f0f3794dbd37c7b`  
		Last Modified: Thu, 15 Oct 2026 02:48:43 GMT  
		Size: 659.1 KB (659134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168a3fd76c2ada993f929a721c2fce3b0f5bbd2828cac5e96d8c63933f5eac2c`  
		Last Modified: Thu, 15 Oct 2026 02:48:43 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:4d736e0475a73d68fdd20fa673b15fae481f373f2837c2e91ecba820d870f312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09610e00e66c23aa61ee1a5f4603e7e225cda429e0c7fd8f0d4d9ac366b629c4`

```dockerfile
```

-	Layers:
	-	`sha256:3af6d8d351b5ed05d53e25d850092a9d5bed00a6a0985d64adb03b190d2ee365`  
		Last Modified: Thu, 15 Oct 2026 02:48:42 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; s390x

```console
$ docker pull adminer@sha256:df0e89bd498da042a3c2f2693bbfc011791c5ff9de915a8b4c3dfcb3ae2e2e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43879024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e4f9ad5204ce4fee5c88330536c8522771ac30ba404c27c36f786bf8d48c9f`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:21:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:21:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:21:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:21:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:21:07 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:24:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:24:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:28:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:28:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:28:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:28:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:28:22 GMT
CMD ["php" "-a"]
# Thu, 22 Oct 2026 01:07:22 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 22 Oct 2026 01:07:22 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 01:07:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 22 Oct 2026 01:07:22 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 01:07:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 22 Oct 2026 01:07:51 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 22 Oct 2026 01:07:51 GMT
ENV ADMINER_VERSION=6.1.2
# Thu, 22 Oct 2026 01:07:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=b32316156bd18ffa99c1a27617142c2e5ad72260e37f15da4e9937a3dbb15f57
# Thu, 22 Oct 2026 01:07:51 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=6e968d1826117139a28f7e4ae39effb366dadd1fda05b0ce1b64c22c1b986d4f
# Thu, 22 Oct 2026 01:07:52 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 22 Oct 2026 01:07:52 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 01:07:52 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 22 Oct 2026 01:07:52 GMT
USER adminer
# Thu, 22 Oct 2026 01:07:52 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 22 Oct 2026 01:07:52 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8505f185199cacd38704433628e282e971ab43e29e3fc45bfa65053f77f12075`  
		Last Modified: Wed, 21 Oct 2026 23:24:32 GMT  
		Size: 3.7 MB (3683853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a68095a94804a30f62a770790258fc068982d4a5910add07fbc2368572cfed6`  
		Last Modified: Wed, 21 Oct 2026 23:24:32 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967d5d165e7d0a202cec92b6f2825b91d6fb513294cfdfd5743df2eb5a31d80e`  
		Last Modified: Wed, 21 Oct 2026 23:24:32 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67cc4e9399bf08c582851d96e128dc25cfc5e974bd0d4c49b420892aa59bc2d2`  
		Last Modified: Wed, 21 Oct 2026 23:28:34 GMT  
		Size: 13.9 MB (13885740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ec7a5e6bde7287cbe1025b54748b925c01d2ce7419ca6cc0a37403c3e40588`  
		Last Modified: Wed, 21 Oct 2026 23:28:34 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad30ce806e220f087b87b1ffc8e561099a5b0a93d5d2407dc7d4dff8571b0e8b`  
		Last Modified: Wed, 21 Oct 2026 23:28:35 GMT  
		Size: 20.3 MB (20343715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe912810add7f18bb53a564607ffd2afa6b2e097bc8ab7e06d3490bdab006d68`  
		Last Modified: Wed, 21 Oct 2026 23:28:34 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3669f4899b6e886fc4ba3bf36b6078dfc0c8d2168416ef1ee3bf86bbfdf4670d`  
		Last Modified: Wed, 21 Oct 2026 23:28:35 GMT  
		Size: 22.1 KB (22140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595eed476a0d37d534d2cde50d162d65b1fca11810d280fe7f209119ccd5cfc0`  
		Last Modified: Wed, 21 Oct 2026 23:28:35 GMT  
		Size: 22.2 KB (22154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a28e6df01cef05321b8063d4bd4db5fdb304f6b64db8a0f8b9664dd0fbed427`  
		Last Modified: Thu, 22 Oct 2026 01:07:58 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54922d60a55cb7733439363d433a7738e680367a95e668921fee79c3f7681f36`  
		Last Modified: Thu, 22 Oct 2026 01:07:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b191464d50fabe567713f400ed7eb76d7692e08c3ac0b799770bf789592bf4cc`  
		Last Modified: Thu, 22 Oct 2026 01:07:59 GMT  
		Size: 1.5 MB (1534865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581b64d847c58bba98e1e1014fb40d467a7e92f627c75eb9ded2a3c41b878584`  
		Last Modified: Thu, 22 Oct 2026 01:07:58 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e1d8640b044696165eb96e13ef84c7e1e041c84260d9b15d9869339e5ec32b`  
		Last Modified: Thu, 22 Oct 2026 01:08:00 GMT  
		Size: 659.1 KB (659129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5bcb44628b486ae325e8e4d8497c385fc2f098915310eacac412f176407bcd`  
		Last Modified: Thu, 22 Oct 2026 01:08:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:4cf62d3c71f8dd9f365c29b59297127eecf9fb6d6209195f3dad2660cc6762d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d901a83b7cf858d4b9ec800c0e39acc02a5a620e58e37fefddcf2e66850ab5`

```dockerfile
```

-	Layers:
	-	`sha256:7e2b67616ce70893daa2a2ec198a2972c349dd7dd9d876d2733ad7ad78294a10`  
		Last Modified: Thu, 22 Oct 2026 01:07:58 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json
