## `adminer:standalone`

```console
$ docker pull adminer@sha256:043db066c4532719f49e35355a620f0bbe48fc862f6bfccda72f441b162f092e
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

### `adminer:standalone` - linux; amd64

```console
$ docker pull adminer@sha256:41e87e4615346045eb967fd99abe281c091f0420e4142fa15dd362b216e875f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43656863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a77a64261d978eec098bbf310f0781263a21d34181adc21d8af504d856e768`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:46:03 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:03 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:02 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:02:24 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:02:24 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:02:24 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:02:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:02:49 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:02:49 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:02:49 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:02:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:02:50 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:02:50 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:02:50 GMT
USER adminer
# Tue, 18 Aug 2026 17:02:50 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:02:50 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a18a150bee240313fa6dcc34d7e7b1b3df49506c51cb06d71f024f0ffb39091`  
		Last Modified: Thu, 30 Jul 2026 22:49:10 GMT  
		Size: 3.5 MB (3476117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2dcf61e6fc61ae09af3ec141f78cb7f5fd23ddd3f7145fa40f4f39e796178f`  
		Last Modified: Thu, 30 Jul 2026 22:49:09 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbec27a13c0ddd3dec66dd964050a6f644d5b547cf98e97f8b128675709d4c8`  
		Last Modified: Thu, 30 Jul 2026 22:49:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dd5065ed4868f60de177b62ca8dade00ff1be960fb8b64e5be2df4575b10eb`  
		Last Modified: Thu, 30 Jul 2026 22:49:10 GMT  
		Size: 13.8 MB (13775190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b944fad884e49d420a90cac660f308b763dca2ceb5494f19866a1601f8646f`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d32a3eb4a4a5cf61e6db1a8639341a974fde846e1235f12b69bc040311021d`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 20.4 MB (20424605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d088f9999d8ca23833ff64314d9d72dbc91efebda93da03ef960dd622416dcc`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b89d93f7ddccb3bd1e414505c894a00bca24290b1249e9729362d5dc46ccb16`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 22.3 KB (22335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441d62c46cddf5de8df061a0055ee95800666300c286c74b622d4d8c04d64f83`  
		Last Modified: Thu, 30 Jul 2026 22:49:12 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137a30f98cfddb8d1ddf3c227e6793091973322eea1e63b9b1c1da18a4136d9c`  
		Last Modified: Tue, 18 Aug 2026 17:02:54 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867911fa02fc106375dd704e84cc6082bd21cea04bd244461c7e5ef38f6cff91`  
		Last Modified: Tue, 18 Aug 2026 17:02:54 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b61babf607b57bf5e81e6f09f41e30633f1519e116b1db6a9d72b319d98cbb`  
		Last Modified: Tue, 18 Aug 2026 17:02:54 GMT  
		Size: 1.5 MB (1467234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e6a56fe3fa46246b279abb88c2612f17e8a9de8ad1978c1e898fda154cc896`  
		Last Modified: Tue, 18 Aug 2026 17:02:54 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103c043d55e725ad79929aacc815dc1abf6af5f1a32cea46b7f3af9678beacca`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 614.9 KB (614921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e21d445cd8ed4f4842bbbb80195eb201451f8c57f04c8fe9a9e8a881a768f26`  
		Last Modified: Tue, 18 Aug 2026 17:02:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:e2bcc4f917559af759224df7e024326c30fbaf5cf0545f29721d136214234854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2819a6758345cdd1aff8e1ef59b4e895aa8f2fb60b89809b53227dfc347cb86a`

```dockerfile
```

-	Layers:
	-	`sha256:2b3fc4ad32a212cff0b90f930fa302c7840c9c7ee88b4599f7bce0f63a86cb58`  
		Last Modified: Tue, 18 Aug 2026 17:02:54 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:a03027797942f06ae4f4207d6144d1af90c9a529f3ff4d3713d3c9223b26d999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41339248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e8339371756cc6d6c0b558276cbefbc90116a04ac906284164ef25af2945d9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:34:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:34:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:34:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:34:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:41:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:41:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:44:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:44:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:44:57 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:03:21 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:03:21 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:03:21 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:03:21 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:04:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:04:02 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:04:02 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:04:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:04:02 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:04:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:04:03 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:04:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:04:03 GMT
USER adminer
# Tue, 18 Aug 2026 17:04:03 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:04:03 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea7c3b971f38b1b2d1aecc2af79f1e9253448e8d96c69c3eb5acc3d1214cf39`  
		Last Modified: Thu, 30 Jul 2026 22:38:16 GMT  
		Size: 3.4 MB (3433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446de1bc2ae117d9ce75f87848580c147ab8e4413cd701aefd0168bc8a9196de`  
		Last Modified: Thu, 30 Jul 2026 22:38:15 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdccecec4123de08c4cd7510ca2d461052c551c76287cc9c52567fc45b49489`  
		Last Modified: Thu, 30 Jul 2026 22:38:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acf2c783ee16eeda35a79e1d27293aabf634d10390e7d34abc350d827b7745d`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 13.8 MB (13775197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615e0ca58f9e09683b19dc0591d2f8e27cedce0f6442282248e17b20b431fa2c`  
		Last Modified: Thu, 30 Jul 2026 22:45:03 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f192f5bf8bd8f47e0c554798e87fe6ec31fcb36a05a6d908e900c65ca105d5`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 18.4 MB (18447028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7429833f6826c013608c7e332794fb7ea3069ee279b580c0eedc824289abf27`  
		Last Modified: Thu, 30 Jul 2026 22:45:03 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8869252749dfd3a9b864164c5c9dbf40da521367b9541223b628db9dcaad9d`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 22.1 KB (22120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b259720459cad62167febe0e0ddd8b67068605a54577222586f679891c317fb`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 22.1 KB (22128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3166ae2eb7c2c265fd961c163992f3352491debecde17dfe162534439193f3bb`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7ba31a9b301392e210bb061aa9dcf7334bc9c4d6241ddb6673458f81f5ee62`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce23373ec38ad976197fb89669837d4d4ed74da3cddbda615271caedb8da71e`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 1.5 MB (1463616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0edb514fb133c788162d2d9c3e31f87d00ebb4d06c526e8214c3d57f5854296`  
		Last Modified: Tue, 18 Aug 2026 17:04:07 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190349311fb2f86a80c83afb0f7539d3f8654666aab629a530e41b0581930905`  
		Last Modified: Tue, 18 Aug 2026 17:04:08 GMT  
		Size: 614.9 KB (614920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad44acbe26f343186a3e0951dcbdd1838a64a8679cc6db1f96dea8f84ef48c9`  
		Last Modified: Tue, 18 Aug 2026 17:04:08 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:822115d0bc3bf7d76eb03da5f4d83193edaf08d10a0ad4fe1b6449d5215ae15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5556f62ddb58cc5d6f0320125e3b0af7ed60a77121f97cb4439e164500c1c7`

```dockerfile
```

-	Layers:
	-	`sha256:081927100ae4c347757c399bd603f6c0805dd9d0598447a84265179260a02770`  
		Last Modified: Tue, 18 Aug 2026 17:04:06 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:0681c379df13a79e77d23dd2377ab6253f0b4a705d8a779123be9f3e597e648a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 MB (39648583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbda3232ec37b9a3680bc2c220eeffac0ac6db450fb84e03ba73bd2e66e3d9a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:18:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:18:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:21:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:21:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:21:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:21:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:21:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:21:42 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:02:10 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:02:10 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:02:10 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:02:10 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:02:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:02:46 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:02:46 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:02:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:02:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:02:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:02:47 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:02:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:02:47 GMT
USER adminer
# Tue, 18 Aug 2026 17:02:47 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:02:47 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05de54487e219baaebe2b985c47147e07198a82b46364db5246648e71b6f19a0`  
		Last Modified: Thu, 30 Jul 2026 22:46:40 GMT  
		Size: 3.2 MB (3247174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb18f07dfdffaa5f06488ad5e5da71f401f1d2273480da7509904b1f6589696`  
		Last Modified: Thu, 30 Jul 2026 22:46:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f8cc6687a57498237dc1732d0d93b1b2e45884be5562d7dcc3c1b2019a5f8b`  
		Last Modified: Thu, 30 Jul 2026 22:46:39 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d39c53e4cf818a2b1277d31145940e19470d5af010e1e150903f6c9f0f1c1c1`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 13.8 MB (13775214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff37ca8f294da003287990cd2fe8bdf7a63af7692b920ac57ec2489c83d989a`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9e0d2dc4ddcc373ca8fbeda7efbb11ac7488f88d85ade9e5c06368b0272c25`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 17.4 MB (17385231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec06e06f2a7288a20a9fd593e046bf50a09263e0c048c8fc38653862526e585a`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf668bb6d228657b863ffb7bc0d5d962d9ad7b4a9d833ffb7f4da1eb966800e`  
		Last Modified: Thu, 30 Jul 2026 23:21:50 GMT  
		Size: 22.1 KB (22140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002856df4161554f6cf562856081d93a87813da181d652467c5c21be6a391ed`  
		Last Modified: Thu, 30 Jul 2026 23:21:50 GMT  
		Size: 22.2 KB (22161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeba79846a92d1cbccb2b87091e7375e3a22501800591b49a1c8079f5c4798d`  
		Last Modified: Tue, 18 Aug 2026 17:02:51 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc90f77fd0bb77af88815b12da193c7be6eaf5389653702822bd60d70576ed04`  
		Last Modified: Tue, 18 Aug 2026 17:02:51 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6de5a8b5398cb6a1cce2b7fd81cc3bcfed85f84eaafc6cd43825a3cf21833a`  
		Last Modified: Tue, 18 Aug 2026 17:02:52 GMT  
		Size: 1.3 MB (1313391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d770d543e0f07ac63f031c1015aee344b51fa19cf70d14b3d899f553fee739f5`  
		Last Modified: Tue, 18 Aug 2026 17:02:52 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6922872a63de8e2fe417a8b5ec217a6d1e0b139dc8719e6f12d15cd7ee77151`  
		Last Modified: Tue, 18 Aug 2026 17:02:53 GMT  
		Size: 614.9 KB (614918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84a6fc92eafe1bc1c93d4b745b256d516384b91756175217e8cee35d064b314`  
		Last Modified: Tue, 18 Aug 2026 17:02:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:7be48fa71bdc83bbb6cc70d8e2f6692122db611cba11de6890a7eb08fa3b188e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28eb29f280f0a5ee02491d1aaf89c6f30a748fce302b62844d9bb53383f8dbcf`

```dockerfile
```

-	Layers:
	-	`sha256:d66a99855cdc579a7d4d7cd6d136b996fce614687b6f81be090698a534f44401`  
		Last Modified: Tue, 18 Aug 2026 17:02:51 GMT  
		Size: 36.0 KB (35995 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:4858da4d636d053035be851eebf15d0abbcca258b66500382b8827e66dc70eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43382855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66822c32c27d24009e213244e2369e3c7f5eed96e14f3f5d9c7063689112449`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:36 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:36 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:52 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:03:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:03:09 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:03:09 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:03:09 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:03:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:03:43 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:03:43 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:03:43 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:03:43 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:03:43 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:03:43 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:03:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:03:43 GMT
USER adminer
# Tue, 18 Aug 2026 17:03:43 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:03:43 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13b5c2bf01f18c32725f4727f909e7158f01f59e1f76b77ed6e86468e10be32`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 3.5 MB (3486008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e65a453eadf3c16e733b2a120dd31ee053355230c025d89a422e7a5ed6270b`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba15fd80750899114b35bad0d1da0c1fed6a0a24e786ed16edf17367d3b862e7`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0ea48b5ae5d5be02b6e33ec83021183e96c0a90dad4e9fd8055702860f3cfe`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 13.8 MB (13775190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24133a325043fbedf87565fc7ddbdbdbb4cdbd2b81eae366e8b8b2747d8c47c`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bca56ad232d4f31866bb651b3795b5be1f04dba45da3d7319a4f91dbda4519c`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 19.8 MB (19792131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387912e19c4f979ea4fc41b4606fc68a1e45891aaa0302891b4ece633270d1ae`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfce9610076ed65bbc625facd1b941b196e80fff2f87a9ad212aaf9aeb3e9f7`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 22.2 KB (22156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6997a2cb7b348d6fd7fac73d9048122cfc91afb1d9501f0bce2894f4ab414fce`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 22.2 KB (22171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52503637d56acb777de7ccfcd60f207fb6ada9976c9aaa08f621eb86014f8638`  
		Last Modified: Tue, 18 Aug 2026 17:03:47 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb33b205ab5bd75f93042c2b4ae56fa87406213909e26d30141230bde0fe6d6`  
		Last Modified: Tue, 18 Aug 2026 17:03:47 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5f7366d3a223217689c5408c97df7978e80f516274bdb9af8f20efb4429385`  
		Last Modified: Tue, 18 Aug 2026 17:03:48 GMT  
		Size: 1.5 MB (1479520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871a673fb6431d8b220b129227c85818369d3e73436d92b481b83d137edf921c`  
		Last Modified: Tue, 18 Aug 2026 17:03:48 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cb969ed95b7a6bfdeda12b2fef3d324e7930982682e3a302e68250cdfbe1b6`  
		Last Modified: Tue, 18 Aug 2026 17:03:49 GMT  
		Size: 614.9 KB (614919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9248035adb6ba823c0aca1b976360b54b825ef26f640f882e1dbd2e72912c05`  
		Last Modified: Tue, 18 Aug 2026 17:03:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a6cdfe1aa55d2b5c1fa7145f5806f9c89d05555c9f5a9661e609c6bcbe6e6cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068965d28e8dde7e36c71db2937c5c687eeda5b42ad14406d53605cdf39b7908`

```dockerfile
```

-	Layers:
	-	`sha256:fd4dc7d3666f7b031aa562a90ca83a77f66d1e9d4cf724e7a68f9fbcae0183e4`  
		Last Modified: Tue, 18 Aug 2026 17:03:47 GMT  
		Size: 36.0 KB (36034 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; 386

```console
$ docker pull adminer@sha256:f4b005d17b3a2585866432fd748f8975270f1dea7362a514bc7e41f7a6329112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43956456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e63882399411a22b4c91c2a1f0a015461a49b147cf6f18fd2458c244fe1140`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:46:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:46:43 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:44 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:50:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:50:14 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:00:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:00:37 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:00:37 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:00:37 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:01:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:01:05 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:01:05 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:01:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:01:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:01:06 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:01:06 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:01:06 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:01:06 GMT
USER adminer
# Tue, 18 Aug 2026 17:01:06 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:01:06 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23e6450cd8de0d6c10881ca803ddfea256d9f9b456338b2fcfc838c443e906a`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 3.5 MB (3507257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c56ca2e0aa96e4f48867486ff668183bbbe1f4d4d20bb30ba387ab39fadd75`  
		Last Modified: Thu, 30 Jul 2026 22:50:21 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833e7988b81a6c26cf9f9baae0c6f393395d147424aeede92b38d3a0fec288f8`  
		Last Modified: Thu, 30 Jul 2026 22:50:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9b8876f0bb783ccd3ad3d8341ff6bdf939d51b924feb3135b5014204ec8236`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 13.8 MB (13775182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166a5476f1d45a7a159a89f2234b92b3f40034e76c25c805549df9aa4f2f9ec5`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798495fef5120a64010cbe7e4867246001c5fa3e7abc16d1f50a41ab996b31c4`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 20.8 MB (20840945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed8060ba1850fcd6d49a1127a06936bc80479266f5c1cd1ec2b26e70bb0cb69`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3112926d6c0d504cfbbbf6ccfce17db34736c67e931f612dc8dca884d9f4b4`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 22.4 KB (22355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb33e2d99a236123b6bb3d6a2e318c4a3add967235912a0068b464af4147a7e`  
		Last Modified: Thu, 30 Jul 2026 22:50:24 GMT  
		Size: 22.4 KB (22367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0176da7bbce6f8150721b94edad310f9d35d2054d61e7be61930479f46cdec`  
		Last Modified: Tue, 18 Aug 2026 17:01:10 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd82aa0496cf09411b956aea31e0ce445f72dad43897a19275760f3c92924d0`  
		Last Modified: Tue, 18 Aug 2026 17:01:10 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a3dfbb58d22c20b8a25486f0590c1fd399bb234d6701030e977d5057f31cee`  
		Last Modified: Tue, 18 Aug 2026 17:01:11 GMT  
		Size: 1.5 MB (1495555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5e255e2a4adaad69757535efa02313f791b0fc284c23c61886a3a243647699`  
		Last Modified: Tue, 18 Aug 2026 17:01:11 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5032088ec603de0396775cf8598568a635acc5de1c5c53ec4c8073aba0c62f98`  
		Last Modified: Tue, 18 Aug 2026 17:01:12 GMT  
		Size: 614.9 KB (614917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b9c4b78e0d52d593c2bffde9120271e4cf3c2d0b827baaaa3b7fd1763490a6`  
		Last Modified: Tue, 18 Aug 2026 17:01:12 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:2b054db97e598cf683da2416c6e44b3f0ae58a681d98fa15984ef5b061ed2916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e89f7b0e5f84b9a42b66ee308dfc7c496809817d64ec520773669c8532ff0f`

```dockerfile
```

-	Layers:
	-	`sha256:23c5ac7bcca13f07950a7f925b1059422ac243d44344c965f1cddcd07c2c9f16`  
		Last Modified: Tue, 18 Aug 2026 17:01:11 GMT  
		Size: 35.8 KB (35813 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:d9ff2ee01cee392b21e1c6a24f8b3a50815c824534bc584c379f2be51315f14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (45011670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e458d5301be71cc3e5956e4a3cd658f55e44b12883858dcc2162cd3b5fd7d9f3`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:57:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:57:29 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:57:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:57:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.4.24
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Fri, 31 Jul 2026 00:22:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 00:22:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:27:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:27:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:27:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:27:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:27:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:27:33 GMT
CMD ["php" "-a"]
# Wed, 19 Aug 2026 19:20:06 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Wed, 19 Aug 2026 19:20:06 GMT
STOPSIGNAL SIGINT
# Wed, 19 Aug 2026 19:20:06 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Wed, 19 Aug 2026 19:20:06 GMT
WORKDIR /var/www/html
# Wed, 19 Aug 2026 19:21:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Wed, 19 Aug 2026 19:21:05 GMT
COPY *.php /var/www/html/ # buildkit
# Wed, 19 Aug 2026 19:21:05 GMT
ENV ADMINER_VERSION=6.0.1
# Wed, 19 Aug 2026 19:21:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Wed, 19 Aug 2026 19:21:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Wed, 19 Aug 2026 19:21:07 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Wed, 19 Aug 2026 19:21:08 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 19 Aug 2026 19:21:08 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Wed, 19 Aug 2026 19:21:08 GMT
USER adminer
# Wed, 19 Aug 2026 19:21:08 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Wed, 19 Aug 2026 19:21:08 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21e4c935439302c2613da21e00f33b1b7ba6044d334f32deb82f09c5a5952ab`  
		Last Modified: Thu, 02 Jul 2026 21:03:42 GMT  
		Size: 3.6 MB (3647350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b549e7f4463ca7f92da7527719118c35266fbf75ac1eefbc3fd312809d1dd6`  
		Last Modified: Thu, 02 Jul 2026 21:03:41 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32645532feb9a012c3d8e233656d0b9135c712a35d8af82155617d9f1088ab94`  
		Last Modified: Thu, 02 Jul 2026 21:03:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c7b089b0f336ff2d1b5c725e46ba0ac6ef7702950d5420f2c05f5b2e47cc81`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 13.8 MB (13775215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe377fe0947caf068edcd996de5dcca8f22e5e9ed068dffbd6996e03ac949a5`  
		Last Modified: Fri, 31 Jul 2026 00:27:46 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f4eb61d2102c2659768604c96db6376260e5c3d2164ef57594a5dd76c5032`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 21.6 MB (21569057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24a37a25870118eba2f7ddbf53c242899dccaefd44bbfc72203e8d9ad7c4b39`  
		Last Modified: Fri, 31 Jul 2026 00:27:46 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a58b09ea3786674e5801c5ceff02874079a5b8b519c86670f5cfb1dd37120b`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf763f76c60f73818b854983a01bd45aeb3306913c1418f51e1875190922547`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 22.2 KB (22221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00061335737bfb54939f493202711257cdcba0153077130c064089d697ba66ec`  
		Last Modified: Wed, 19 Aug 2026 19:21:17 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf82a9154243d8bc4656f3986671533670d21106b5399e52573a1ae12b1544f`  
		Last Modified: Wed, 19 Aug 2026 19:21:17 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27098d41fbf2f076c7bd8c65776e9043b2839c90c07c83959ee3336bb9cbe60b`  
		Last Modified: Wed, 19 Aug 2026 19:21:17 GMT  
		Size: 1.5 MB (1539570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aaab923b9dcb3c250e282da4dc746ed03220a942afadec9e1b6695e48b87c88`  
		Last Modified: Wed, 19 Aug 2026 19:21:17 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b241f4f4140ee13c8bce128c3a57a73cd84b061a2c4e37bc74852c301bd66d0`  
		Last Modified: Wed, 19 Aug 2026 19:21:18 GMT  
		Size: 614.9 KB (614920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4594694bf752b739a363d200b89bcb0776e4e8425585fee8a5f15b5c997f2b2c`  
		Last Modified: Wed, 19 Aug 2026 19:21:18 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:49dfa6e50a238612d874f88f420a41d1caa563a614377c9e0a2d2e2b1a14cc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7a7dcaf1854801c394d5b09614671f7949de4d5bcc4fccdeb47f99a7d19460`

```dockerfile
```

-	Layers:
	-	`sha256:e393a2965c5c3c6bd7f58f745211e1184fb00b39a4ef38c710052bf8bd241aa6`  
		Last Modified: Wed, 19 Aug 2026 19:21:17 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:83b8ecb8b2a0fef75042e766fc1efd86aed8fa8d83030ae14c2c4b72d5338fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43401890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388c6c5d3d58d81d9bc2bb783839d8743ca6c42320543e28e482dd0e80e37ca0`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 10:08:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 17 Jun 2026 10:08:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 17 Jun 2026 10:08:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.4.24
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Sat, 01 Aug 2026 01:57:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 01:57:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 02:55:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 02:55:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 02:55:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 02:55:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 02:55:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 02:55:34 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 22:12:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 22:12:09 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 22:12:09 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 22:12:10 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 22:17:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 22:17:56 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 22:17:59 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 22:17:59 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 22:17:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 22:17:59 GMT
USER adminer
# Tue, 18 Aug 2026 22:17:59 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 22:17:59 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc09af4ff1d594ba4ff939387160eac2fe7e3118ca810f61819eb5d92f7b520`  
		Last Modified: Wed, 17 Jun 2026 12:01:56 GMT  
		Size: 3.6 MB (3604699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01600916adca5933ee02bb7a5a25279f28df2779de050e87ee103675d313f666`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a891144274182ffd9c264ebaada55f1b357da87b9d652cda214fc6307d6f939`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c153cd523b6d149e8125fd84af1719725e21a89c8f4ffd44621109ab3eae54d`  
		Last Modified: Sat, 01 Aug 2026 02:56:38 GMT  
		Size: 13.8 MB (13775231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c074f8062e63f84853bc8d83804f1053e086f373f1ec15fd0e0990f205b7a4`  
		Last Modified: Sat, 01 Aug 2026 02:56:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24c31644ecb82eeec3c4fa8011b685f57fb4cccdfa13d48f9655e98f4ffe847`  
		Last Modified: Sat, 01 Aug 2026 02:56:39 GMT  
		Size: 20.3 MB (20291311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09509fdd6bff88b03a703b12da1e863b4442fb116d8613136a171c4bfbf4f870`  
		Last Modified: Sat, 01 Aug 2026 02:56:34 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d9db990f3d3678681187d783724c1b432b1b86ccd14604e6e948adb00f082d`  
		Last Modified: Sat, 01 Aug 2026 02:56:36 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55cb536b6e1df6b7a7da5d4f4a2b66b89b96acbd8128c6f22094212003cfd256`  
		Last Modified: Sat, 01 Aug 2026 02:56:36 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a666b707e596ab3a0059ff59b784c33e4522d304d19ac2d98e0570740ec58094`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a66a19d2b4682927fd893e73237cf0f6210f5b2f93e3a253a3b95c232ff152`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832341bb1e99eb614331f8355376ebdf9376f50d84f5b3c166f6d53c646f5333`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.5 MB (1489196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd3741ec8f271990c7c5ecd6a2e1be30684caaf518cd12f8015df91c3367636`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdc68903bf49a2563655e0595dd09de93862c99c0bef2fd664a920f3dca522`  
		Last Modified: Tue, 18 Aug 2026 22:18:17 GMT  
		Size: 614.9 KB (614920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc97206b244d6a7e44a6d32c7e640febe4479a6e157cea1d9c462c20cca804ae`  
		Last Modified: Tue, 18 Aug 2026 22:18:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:6504b182d4e9c26030c7131d12d4e8af84c04d1d1d1d5ecf68488b101a0363f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030c4184e30bc24920cadfb76061e6807767a25f788bf46985fc8cb165eef206`

```dockerfile
```

-	Layers:
	-	`sha256:39f023f743c8144c1ff9f1923f85859a5a3967fccaac73124e59b2308d2f0ca6`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; s390x

```console
$ docker pull adminer@sha256:354cd1e1aa92e2bc4795fe4dc60b4ed4dc0ea9a71b34bd1a6753dc3e50ef67c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43614400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8b461e07f4343c9674ddaa624fdb523d844277b42c6978c3d95ac89dc9e796`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:28 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:19:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:19:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:23:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:23:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:23:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:23:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:23:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:23:38 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 17:20:01 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 17:20:03 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 17:20:03 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 17:20:04 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 17:21:04 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 17:21:05 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 17:21:05 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 17:21:05 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 17:21:05 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 17:21:09 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 17:21:11 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 17:21:11 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 17:21:11 GMT
USER adminer
# Tue, 18 Aug 2026 17:21:11 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 17:21:11 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5e44288c6a1afad23bd054b0111d8827fd26d8061721a7bea924dd9b48445b`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 3.7 MB (3666337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6677e65fb2898a008bae096ad35d16f36adb3c368e86734a557ac5c1299b52`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da30f4bdf45f853bcac9ba8471ffb31efd611e4272a12481b46605ffbd7c0619`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d87be8fcbf1c06cd96b0c521f50b6548de0431ce926cb160e67e6b8dc82240`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 13.8 MB (13775185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883bae79c45ab750aa8e8fedb91b57469a5cd200cb94f89cc9ce3b646e297720`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e1c6faf5ee7c92df3b3618ea8774aad5cf66c0edf36d89dc4e9004adb4078e`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 20.3 MB (20262330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e110ff5c5493f63aafc612ec4212b31629a2e977098371ab61870714ad1ee14e`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15340026fa087372fae02bfe71837ba66649b2e36b060b5aef5f7fd0a35f1faf`  
		Last Modified: Thu, 30 Jul 2026 23:23:51 GMT  
		Size: 22.1 KB (22139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8839135549cb35dae2997c92b82d20c227a2ec02a943b509ae1fa5e70383384b`  
		Last Modified: Thu, 30 Jul 2026 23:23:51 GMT  
		Size: 22.2 KB (22166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d05ba8311460718529a444a3a69a4b3842cf1223ab24752ee2fad34113b6334`  
		Last Modified: Tue, 18 Aug 2026 17:21:35 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ef6e64b7b1d150de9ac5d5da6872378a2b9dfc4608fe824c8266ab95e77111`  
		Last Modified: Tue, 18 Aug 2026 17:21:35 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4c31d384b693934fc7de1c85e3a7b81e153fb066b2c46f20599e39d8a7d370`  
		Last Modified: Tue, 18 Aug 2026 17:21:36 GMT  
		Size: 1.5 MB (1534264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7069d3da414499089c569bf72d6b692fd9d8500c031006447dab2b04031e16a5`  
		Last Modified: Tue, 18 Aug 2026 17:21:35 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd86084f22ad5ccad93cda9d864f737a97a4d3a1445a29ae13b3d0879523a4e`  
		Last Modified: Tue, 18 Aug 2026 17:21:36 GMT  
		Size: 614.9 KB (614917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a1925f51e9104e19f35e639354743d431db8da2d5902f7db301ed6939f6e0d`  
		Last Modified: Tue, 18 Aug 2026 17:21:36 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:2966be1870e524972308cfa469a1e06dcf54e2ffa14d2538c106185be4f7d7d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0b2bec2c6ab5e9f631e373b21851a2738867f2f97268ba37f8eec014f35882`

```dockerfile
```

-	Layers:
	-	`sha256:1abd4b1b27b8297f25dbf4fff3bd7f8d56e5af326a35a108666de69185cd07a2`  
		Last Modified: Tue, 18 Aug 2026 17:21:35 GMT  
		Size: 35.9 KB (35859 bytes)  
		MIME: application/vnd.in-toto+json
