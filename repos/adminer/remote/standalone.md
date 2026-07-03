## `adminer:standalone`

```console
$ docker pull adminer@sha256:0dceba44e1d4c3c9cf33c9b3ec05613d5e39e90ae8e75dc23cd94cd8a7a37cb4
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
$ docker pull adminer@sha256:594b9c6d80cce82bff8b75109bac402a662cc6723a742d09878935663907e2d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46710417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bff9426851bf664be573d5dcb7595c070259dd360a2e94343e827d7f18e435`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:40:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:40:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:40:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:40:08 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:40:08 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:40:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:40:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:43:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:43:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:43:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:43:13 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:12:44 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:12:44 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:12:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:12:44 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:13:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:13:10 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:13:10 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:13:10 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:13:10 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:13:11 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:13:11 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:11 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:13:11 GMT
USER adminer
# Thu, 02 Jul 2026 21:13:11 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:13:11 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5a1133c6b7301f998500f4b8e54ce06f9a7810f3fe918c3297d283eb0df07f`  
		Last Modified: Thu, 02 Jul 2026 20:43:20 GMT  
		Size: 3.5 MB (3474610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a09b977bcea5fdb030338b9f4ef0d76941e2b598ef7f04a032db6c5d1c45d3`  
		Last Modified: Thu, 02 Jul 2026 20:43:20 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3eb5d32ddf3f4d476e514aadfeb18ccfc910ac7806afde2898515a1bb14a770`  
		Last Modified: Thu, 02 Jul 2026 20:43:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9219845864e01e2b0bd7bff769104226ac90a59e4aa4b4bb52163676fa397f9b`  
		Last Modified: Thu, 02 Jul 2026 20:43:20 GMT  
		Size: 13.8 MB (13763860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849bb7c25beb558b0d4031b89a874ba593e4bf0e80bcc61a0096fe25cead7691`  
		Last Modified: Thu, 02 Jul 2026 20:43:21 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4151ba3aed369625fa1c226048ad7afbab1926097f8a51226b1791a8405eac`  
		Last Modified: Thu, 02 Jul 2026 20:43:22 GMT  
		Size: 20.4 MB (20412246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc3d5e883b7f4deb278575824b7bb8af2f40188da056a7c038e7183100c30f4`  
		Last Modified: Thu, 02 Jul 2026 20:43:21 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19d4b57bc08b602651cecf73d98baf54a62336b18d542af1415294f574baab3`  
		Last Modified: Thu, 02 Jul 2026 20:43:22 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c4a3a7d998929025be9218106b8f48df0ca8b9cccad7fc168d00384e6b2ac0`  
		Last Modified: Thu, 02 Jul 2026 20:43:22 GMT  
		Size: 22.3 KB (22346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac0421420baec548da7c48d868994bff602eb18aa46f620885f6f6832da7572`  
		Last Modified: Thu, 02 Jul 2026 21:13:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9c1364e60a04d400ad969bd7b6e044739805d8d779083a4b708ce496f25a3d`  
		Last Modified: Thu, 02 Jul 2026 21:13:15 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4617cd6d00c61a5bf1260ee823a4547499acd827ff02924dbe910389a7010d62`  
		Last Modified: Thu, 02 Jul 2026 21:13:15 GMT  
		Size: 4.5 MB (4515531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f096baf67b88f981d9a3ffca77f82377d9e7251c83d6e30eb67382f2a21478e`  
		Last Modified: Thu, 02 Jul 2026 21:13:15 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90b53d480d658b4fb5a976ed6ade78d95481248f314ab1586bed3c672025e5`  
		Last Modified: Thu, 02 Jul 2026 21:13:16 GMT  
		Size: 645.4 KB (645391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61f00dfe13f10543d2bddf737cb47f134c00d154363c6550befe709d576197b`  
		Last Modified: Thu, 02 Jul 2026 21:13:16 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:537ea42921e5944a238416078418523aa7aea0f5bbeade8c18ef55c5ecb79750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bfbbc7d013a21ea3915bf024dbefed9bc0737fd58e43849cdac939e47581580`

```dockerfile
```

-	Layers:
	-	`sha256:922e69e2dfe454e12a5461d664b6c858504382996f72b7a4beeba6daa9e597c4`  
		Last Modified: Thu, 02 Jul 2026 21:13:15 GMT  
		Size: 35.8 KB (35834 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:a897f24da9af68f2b0d5092dba067efeefe5bd979ee090bb7eb0adc8d73a82ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43992849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd86fe90b8a8e28b0210ee87f057e88867028777d3b09e2389c33ecc4215a9af`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:36:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:36:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:36:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:36:39 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:36:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:36:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:39:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:39:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:39:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:39:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:39:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:39:42 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:12:17 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:12:17 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:12:17 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:12:17 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:13:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:13:36 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:13:36 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:13:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:13:36 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:13:37 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:13:37 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:37 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:13:37 GMT
USER adminer
# Thu, 02 Jul 2026 21:13:37 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:13:37 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d6296deed0f4c4c59c1627b7127d5fb1383ccdbec78c996566dc3c97f2524`  
		Last Modified: Thu, 02 Jul 2026 20:39:49 GMT  
		Size: 3.4 MB (3431422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cb53a414c3a1f4b33a4b8f276d9ad754975375447a3736712e0d800c22f44e`  
		Last Modified: Thu, 02 Jul 2026 20:39:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6be2f924a2725fccb7cd0b738b484475e0cabbacc252680d1bbbfb69eb6a9c`  
		Last Modified: Thu, 02 Jul 2026 20:39:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8ebf992c357996d1e236285e67e8ec059a74510b7176e065d63ed2a53f8de8`  
		Last Modified: Thu, 02 Jul 2026 20:39:49 GMT  
		Size: 13.8 MB (13763863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbe8691e5ff93fc303b0e42b56945e0a0f778d946f0f9533be318e1e5c690c6`  
		Last Modified: Thu, 02 Jul 2026 20:39:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3112ba724ed96a62d1e0590d5097af8cf2cff2d4a8890978fa3e64dda275a99`  
		Last Modified: Thu, 02 Jul 2026 20:39:50 GMT  
		Size: 18.4 MB (18435564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3268ccd2af88952e55d3791ce0a5e2bf020aed38dc20c8aac738f93a78c48fb`  
		Last Modified: Thu, 02 Jul 2026 20:39:50 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53651e92ffe2bed53f5bfb1ecdb4cbf22983fe03f8cd484593017cde8cb21bf5`  
		Last Modified: Thu, 02 Jul 2026 20:39:50 GMT  
		Size: 22.1 KB (22122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce26b1c82d8f858d5b5d7d9c62752aae17b54b3a361f1c2cfe0d2189a0399685`  
		Last Modified: Thu, 02 Jul 2026 20:39:51 GMT  
		Size: 22.1 KB (22128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11731d1170f6d1fce662c2a8a303246549f98cfd73193bc040c253b137d8d0e`  
		Last Modified: Thu, 02 Jul 2026 21:13:41 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143788a555b8e81815a4453328d520137fcf9f07b8af21508579eec571fb7e0f`  
		Last Modified: Thu, 02 Jul 2026 21:13:40 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175780428212d9f2536fd1378b89ddf2076c2d46e6eaf79eee9875fadda3b503`  
		Last Modified: Thu, 02 Jul 2026 21:13:41 GMT  
		Size: 4.1 MB (4111196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3bbebc73669baa967b790f42cad8f1cb3742dc69b34bf2a5a5da2652a9b3a9`  
		Last Modified: Thu, 02 Jul 2026 21:13:41 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14192cafa9c86c5928a671f719dd235e9ff94689872f7cceb0eaf0420ba0ae31`  
		Last Modified: Thu, 02 Jul 2026 21:13:42 GMT  
		Size: 645.4 KB (645391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135800243bac2e50fdbabbc8f55c657274ab38bee05903a94706e7b5df586ffa`  
		Last Modified: Thu, 02 Jul 2026 21:13:42 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:00ce13df89076a2abd0357b6ff2ef7799faa45c1c7212348e45ff27ad3a4c54f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d90a51e5f1ef33761bb414df9ec76c139dc29264d387ff6c8af25cfc8318b52`

```dockerfile
```

-	Layers:
	-	`sha256:299fcb82cd9dca7999ec29b71d87069bd0711f7b6ca08cab2329cf5637c9236f`  
		Last Modified: Thu, 02 Jul 2026 21:13:40 GMT  
		Size: 36.0 KB (35969 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:6e1894c5cc8c544d4a3cb9ac37c32c7d29c76ad96f1e4958b00af18725088cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42500922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b5accbda3b503f8a0940ab73970f97190dc495c7b351b53a93d6b6537c2984`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:51:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:51:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:51:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:51:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:51:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:51:11 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:51:11 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:51:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:51:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:54:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:54:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:54:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:54:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:54:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:54:15 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:21:59 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:21:59 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:21:59 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:22:00 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:22:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:22:36 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:22:36 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:22:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:22:36 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:22:37 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:22:37 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:22:37 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:22:37 GMT
USER adminer
# Thu, 02 Jul 2026 21:22:37 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:22:37 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd07be7f6a14589a13d861feea98aff9e336dea4a4cddef71329f4f8ef1cb618`  
		Last Modified: Thu, 02 Jul 2026 20:54:22 GMT  
		Size: 3.2 MB (3244841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542eb7fac1415fca953bf3c76b6e4d50dd260caf8208622fc3ddaa51080f941f`  
		Last Modified: Thu, 02 Jul 2026 20:54:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52a0a929278daaad375f8ef81ab6d42d09226de194919629b99524c9b5161d4`  
		Last Modified: Thu, 02 Jul 2026 20:54:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29777f99873991dab1686ce4ba32485e1270a51f7ff244824044cc606006704c`  
		Last Modified: Thu, 02 Jul 2026 20:54:22 GMT  
		Size: 13.8 MB (13763878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4e532e492738218c14a28cd9d8cc47042f9d271980dbe03f08b65ba87e101c`  
		Last Modified: Thu, 02 Jul 2026 20:54:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cea3add08240b2c3258f93e76eeca524619ad1371c120f8b7e3d0341cad48b4`  
		Last Modified: Thu, 02 Jul 2026 20:54:24 GMT  
		Size: 17.4 MB (17375973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dfb0f01d98a506aa7a923f5074d680c70a319b0c61322d7ac5cc547560fd32`  
		Last Modified: Thu, 02 Jul 2026 20:54:24 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbce197747ae20633a838b083fa82614ff0658f2c0cac575856c046f70275429`  
		Last Modified: Thu, 02 Jul 2026 20:54:24 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4371a5d67136123696aa94290d2651a2cbca232dda8cd0a1b4cd9749010cdf`  
		Last Modified: Thu, 02 Jul 2026 20:54:24 GMT  
		Size: 22.1 KB (22142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e53a3c2e987edf36529270a4f3133c87fc4a7a5f5ecfa3e0be63671a62c9b15`  
		Last Modified: Thu, 02 Jul 2026 21:22:41 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab96274ff2cc08f6cab329e9fc2865f563719668fea0b2bddf0fc2f0f17fe5c`  
		Last Modified: Thu, 02 Jul 2026 21:22:41 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3681fc321f3b0d90e436ccebeb181a296541b4eb7316730e64dd60d257f32a1`  
		Last Modified: Thu, 02 Jul 2026 21:22:41 GMT  
		Size: 4.2 MB (4158234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee70c570b449b549c57e10afe5c1c0daeca0acc1620b5f0108c5f58309ddb52a`  
		Last Modified: Thu, 02 Jul 2026 21:22:41 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c2aea461cb9b90fe2b76110302d13183f27a02f747eb81075dfd2784c9091e`  
		Last Modified: Thu, 02 Jul 2026 21:22:42 GMT  
		Size: 645.4 KB (645391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72809b58e88bc69622ef066c6c76e0e94c14cb1886b65b3e3831b56799933620`  
		Last Modified: Thu, 02 Jul 2026 21:22:42 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:5a9e471236efe064e27ed4b7a17a3ca30a3a7a97a2135ce0fda8a98571c8a24a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae16e9c4a93de946a9d8aac7c14350d5c262c57013ba2f8d343de53cb085ec1`

```dockerfile
```

-	Layers:
	-	`sha256:0ab1259f76d2d847d905ab1676d272f59cb7f7eefd26da78b9fe290baa99f844`  
		Last Modified: Thu, 02 Jul 2026 21:22:40 GMT  
		Size: 36.0 KB (35969 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:c5edff23b0b39cef8917e363cd313c2858c0b90b40002049906307d97571352a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46428704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5858960f3cec48b8f31cc00791ef05923a335f1b155c98ab3b9edf5aea21e82`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:40:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:40:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:40:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:40:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:40:39 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:40:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:40:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:44:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:44:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:44:03 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:44:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:44:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:44:04 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:16:29 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:16:29 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:16:29 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:16:29 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:17:02 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:17:02 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:17:02 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:17:02 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:17:02 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:17:03 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:17:03 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:17:03 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:17:03 GMT
USER adminer
# Thu, 02 Jul 2026 21:17:03 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:17:03 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b08391005174b46b6065b8cb52e9484c542b96d8bb19f8d0913121f5e7032eb`  
		Last Modified: Thu, 02 Jul 2026 20:44:12 GMT  
		Size: 3.5 MB (3484741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb56198ff0ba97eb72855cf7e117667213a35d263f2dd0e2e4e965966c08f778`  
		Last Modified: Thu, 02 Jul 2026 20:44:11 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a602fa760f19972689a7e5e6ff183e1f2d4416160de3c362608d79e28fb0c4`  
		Last Modified: Thu, 02 Jul 2026 20:44:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a09e94520016d63ba9b541754b4e2b4c24bdab6b1abbc2312b96fdbc24ab69d`  
		Last Modified: Thu, 02 Jul 2026 20:44:12 GMT  
		Size: 13.8 MB (13763864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ada52ae3da253c6ebae1cea0adb621ebb6aa992eef189fbec3c24117cfc12d4`  
		Last Modified: Thu, 02 Jul 2026 20:44:12 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc10897a601884547d28bbb0a808d0b6881a05f0a0a3529b4cf556c0d593d31c`  
		Last Modified: Thu, 02 Jul 2026 20:44:13 GMT  
		Size: 19.8 MB (19784561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458f48ef24ff4705f03f76f07e17bc7cdcbe4c52b4005cf07dcb059db2e24678`  
		Last Modified: Thu, 02 Jul 2026 20:44:13 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a9cca8174c07c12d6ded3241c61684241c2d7fe488b9644e2031b640a20ec8`  
		Last Modified: Thu, 02 Jul 2026 20:44:14 GMT  
		Size: 22.2 KB (22157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c375b3f276ab516f57583a5c03c3ef10009bdd4e7719fc49813f87d18e4be61`  
		Last Modified: Thu, 02 Jul 2026 20:44:14 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37081026b13c85b8e951b034707adb6597de93348c57bd92f0d5eb94b517235`  
		Last Modified: Thu, 02 Jul 2026 21:17:07 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a2ef9dfecd9a42746bb45cb438e9b50e73faa597f487a8a704f5bb30cfb2b4`  
		Last Modified: Thu, 02 Jul 2026 21:17:07 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601ee045a98223a1706f0e5999cc02d3ca198c65407ea5145e8eb66d69ee5dc0`  
		Last Modified: Thu, 02 Jul 2026 21:17:07 GMT  
		Size: 4.5 MB (4515074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a534751e2c7dab45c63e8b75619034d5496f19c222e4a31e1927da82950cf2a6`  
		Last Modified: Thu, 02 Jul 2026 21:17:07 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c5eae2e8bad7c0cc5cf0404d57321b0dfe2b7b8898069619146746e8960da7`  
		Last Modified: Thu, 02 Jul 2026 21:17:09 GMT  
		Size: 645.4 KB (645381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4686d2c7f0339f491876370971589894ffe719077fc9b098d78f41393512fa`  
		Last Modified: Thu, 02 Jul 2026 21:17:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:d0fde2d4db6aaa000c1f1a95f1a3a794439081c99642720a400c1cc4890d80f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2480a7d07e349c83009757c2e9562f4d96607499233beb40fb76eb006bf1bdf`

```dockerfile
```

-	Layers:
	-	`sha256:e8a6a9cf48f248f0f5ad8c6cd9e8a15d9c463d525a2a9bfe3de56d4a1c669d55`  
		Last Modified: Thu, 02 Jul 2026 21:17:07 GMT  
		Size: 36.0 KB (36007 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; 386

```console
$ docker pull adminer@sha256:010b458e0a751929b91f08daae5e310f78270a2d35a780151c284fdb8d21408c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46799141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf04e04e5d5a3b884c99f82d479f9776494808bf7c7743c4f8eb200fb15f22e`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:40:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:40:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:40:31 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:40:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:40:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:43:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:43:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:43:51 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:13:23 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:13:23 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:13:23 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:13:23 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:13:52 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:13:52 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:13:52 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:13:52 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:13:52 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:13:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:13:53 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:13:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:13:53 GMT
USER adminer
# Thu, 02 Jul 2026 21:13:53 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:13:53 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a8a5e819b2f71213a87cd85c637abbb6ebc94a0e0559d2e54ad6ca7e636064`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 3.5 MB (3505457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06565033312600fd902c2dc86a640b718128d90accd2694659301de91b93c13e`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272f728676f7fd70ee082c0cc7fc72192feb22dd9291b2eebd2b4f0fba28ee59`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4656171602a8ff2fdb7eec976839ece6ab601b440ca39ef282f279a28be2bb2`  
		Last Modified: Thu, 02 Jul 2026 20:43:59 GMT  
		Size: 13.8 MB (13763855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00425677b5d88afdb03fa898b4597bb7537d6adafa82b93c325ea0674145aec4`  
		Last Modified: Thu, 02 Jul 2026 20:43:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7274e0d4116d07471de4b34b7a456873377fda2e57a0470c8a91a2d2478e762`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 20.8 MB (20827276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1030b667ec2ae3b9a2adc34e93305f31fde65512363474d1057030723b1762e`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e732dc67d7cab9c0beef6958a8c99c39b2b6651529df348031e978a6f2c3404`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 22.3 KB (22348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f666909e84ff4a4754e39054e06a5e57e9f547a3a1f347be4b967a4726027b`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 22.4 KB (22368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931ac01cb374993bead3ba6e05881a20fc3b22959061d54880113ef2c423f35f`  
		Last Modified: Thu, 02 Jul 2026 21:13:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7691896c54ea08d0209e2c65351b3819899a439cf7f17192c9de054f01c3174a`  
		Last Modified: Thu, 02 Jul 2026 21:13:57 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49d6c072b59f39d7070eaefb07efb412bdd7b4b1e98b4fd06e8ae0053379dc5`  
		Last Modified: Thu, 02 Jul 2026 21:13:58 GMT  
		Size: 4.3 MB (4334588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df878df4fd1fd8241076770ac6a4c2fb7fa4909551d856633fb2c13716bf329e`  
		Last Modified: Thu, 02 Jul 2026 21:13:58 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52b310dc0af26007f148fd2723ea6d4595c67976f592d153b88c06a41709ac8`  
		Last Modified: Thu, 02 Jul 2026 21:13:59 GMT  
		Size: 645.4 KB (645389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af73ce0075f49eec29379a6d4cbeff95369d543f6b71bd61e556a1ef4ec39ec`  
		Last Modified: Thu, 02 Jul 2026 21:13:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:3d7b3f71da58a3052a68f56ebd1221e1b1b3a454ddbb2c0abd1c27d21aec7f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ac6891f6ef4ac678baa542859e866d3497dffaaac18f4ef1d887fac1bac829`

```dockerfile
```

-	Layers:
	-	`sha256:42590f1c29adb8b58a66b1b2ae2bd011e50b71423532924ace9cebf46d64230d`  
		Last Modified: Thu, 02 Jul 2026 21:13:57 GMT  
		Size: 35.8 KB (35786 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:fcdda09c2f30974fab60ba6f84fb5712f512f24f268f093d3e3cf1313fe49ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47840705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215c2db6ad7c8bcd6b69539fb1f2369c7a4283c85b02942636b9a2276424bbfa`
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
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 21:32:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 21:32:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:37:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:37:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:37:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:37:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:37:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:37:20 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 23:20:31 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 23:20:31 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 23:20:31 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 23:20:31 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 23:21:34 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 23:21:35 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 23:21:35 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 23:21:35 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 23:21:35 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 23:21:36 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 23:21:36 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 23:21:36 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 23:21:36 GMT
USER adminer
# Thu, 02 Jul 2026 23:21:36 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 23:21:36 GMT
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
	-	`sha256:a7708d897143636794b4da6a612d62dc02c86fb7dda215bdda87b38e405ebad2`  
		Last Modified: Thu, 02 Jul 2026 21:37:42 GMT  
		Size: 13.8 MB (13763883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6e07b11aac92755a682946bd57025f57ccb2992e06d6165ad6891d0bf7b6c7`  
		Last Modified: Thu, 02 Jul 2026 21:37:41 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168f318f9c75efc0e59d9d3b8e5487ee69094db020345dfdf34ecc00b510c152`  
		Last Modified: Thu, 02 Jul 2026 21:37:43 GMT  
		Size: 21.4 MB (21426899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781d2a9e4d861f7d42e0055dddbe01bda55103aa86e1d5636f607cfaff62de95`  
		Last Modified: Thu, 02 Jul 2026 21:37:41 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2f77e395d92827d123470eebbcaa349813e733a0061d884bbac2f25e4c8f7f`  
		Last Modified: Thu, 02 Jul 2026 21:37:43 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10221777f85dcedccec5f87d8009a580f0a9fe088c56568d7ffdb563b11e245e`  
		Last Modified: Thu, 02 Jul 2026 21:37:43 GMT  
		Size: 22.2 KB (22209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ceb32fd8842c1a948e7e6e3610eba108538a59810695a4fe7a857dcf8e50831`  
		Last Modified: Thu, 02 Jul 2026 23:21:45 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdec10b2bad32c3da3a02f6239cc1cb0b2e6891c72694c6b3910c3f7016c333d`  
		Last Modified: Thu, 02 Jul 2026 23:21:45 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fe2704129db78aa618c8e6812c62a755704463d2fadc873b571f8b97373b17`  
		Last Modified: Thu, 02 Jul 2026 23:21:45 GMT  
		Size: 4.5 MB (4491665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea58715b88b5fb1bcd8c59ddfd6e75157182f75729db205a8601429d476a591e`  
		Last Modified: Thu, 02 Jul 2026 23:21:45 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7757a97cd46b2ba4bf5e3874c988d4f1daffdac34925be61ffa7e844c93411ed`  
		Last Modified: Thu, 02 Jul 2026 23:21:46 GMT  
		Size: 645.4 KB (645390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7145a8a82f36a24a15b0ee2d6614f248d53c30fdd30bbb19d3eaf90b7d832e`  
		Last Modified: Thu, 02 Jul 2026 23:21:46 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:7be722300009e8f135d87cd5e5d9fb64a623d23b5d13d913de24c307d2cc15f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ba764c54573f1a8a43049873a367588bfe604ea9f68fa542cd72e36d1b4449`

```dockerfile
```

-	Layers:
	-	`sha256:ba7261cd3e9ac3d41f31160c42763d7badbe0d96dd7a2992666a93993d23a706`  
		Last Modified: Thu, 02 Jul 2026 23:21:44 GMT  
		Size: 35.9 KB (35895 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:518fc54ed0ba8953f2f87b9f63090481aee34165823f4a2deeb73dee8602af7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45281991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba25a9c6e73a81ee86f2b69c51c06ff234bd3a65e7cbb681db16b68d85db1e6`
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
ENV PHP_VERSION=8.4.22
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.22.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.22.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=696c0f6ad92e94c59059c1eb6e300842b8d050934226efcdf00f2a413cb083cf
# Wed, 17 Jun 2026 12:02:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 17 Jun 2026 12:02:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 13:02:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 17 Jun 2026 13:02:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 13:02:25 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 17 Jun 2026 13:02:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 17 Jun 2026 13:02:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 17 Jun 2026 13:02:30 GMT
CMD ["php" "-a"]
# Fri, 19 Jun 2026 01:26:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 19 Jun 2026 01:26:20 GMT
STOPSIGNAL SIGINT
# Fri, 19 Jun 2026 01:26:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 19 Jun 2026 01:26:20 GMT
WORKDIR /var/www/html
# Fri, 19 Jun 2026 01:31:59 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 19 Jun 2026 01:31:59 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 19 Jun 2026 01:31:59 GMT
ENV ADMINER_VERSION=5.4.2
# Fri, 19 Jun 2026 01:31:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Fri, 19 Jun 2026 01:31:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Fri, 19 Jun 2026 01:32:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 19 Jun 2026 01:32:02 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 19 Jun 2026 01:32:02 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 19 Jun 2026 01:32:02 GMT
USER adminer
# Fri, 19 Jun 2026 01:32:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Fri, 19 Jun 2026 01:32:02 GMT
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
	-	`sha256:00c32cd5d1e74c0f5a02e1c5f4f48729b388d18c77e44228ebd6ca84f51a7839`  
		Last Modified: Wed, 17 Jun 2026 13:03:33 GMT  
		Size: 13.8 MB (13754379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1557657ad849f9c421ee2082911a0d3b10380719177609164d8b1fd49029412c`  
		Last Modified: Wed, 17 Jun 2026 13:03:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71b1ee220f39b71c0c0aa12f15a6e4721ebb2088a15b1e9044df5c13d9556ca`  
		Last Modified: Wed, 17 Jun 2026 13:03:34 GMT  
		Size: 19.6 MB (19614245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0731bb5234d516645f16095edee104017f65b28e899c3814732a52c3a05c0c45`  
		Last Modified: Wed, 17 Jun 2026 13:03:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5408c3c434e2c7807cded8bc1944e35d83bd2db80494f629ef0867e5d92c67d`  
		Last Modified: Wed, 17 Jun 2026 13:03:31 GMT  
		Size: 22.2 KB (22172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc84b340a61b9281e9e45ae621e9ace63f6b74d8beecc10eca2b9a2d504eceb`  
		Last Modified: Wed, 17 Jun 2026 13:03:32 GMT  
		Size: 22.2 KB (22189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0117e2f3c2bfae13ee2b7068c7765241f6e510ad73e04d90609d6d74dc391e5b`  
		Last Modified: Fri, 19 Jun 2026 01:32:19 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e8e9171e3984768b0897f1605b074c2d73929b6cdd8fd4ce8c3f779f7fb738`  
		Last Modified: Fri, 19 Jun 2026 01:32:19 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432882cc4da062045771af5013f96c0bcc132efcaeae0b41782c5adae7f228c9`  
		Last Modified: Fri, 19 Jun 2026 01:32:19 GMT  
		Size: 4.0 MB (4036816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb588ca7de9d84201e48df299ef3af9f7b764da2312ed4bbb48ec34ecb45017`  
		Last Modified: Fri, 19 Jun 2026 01:32:19 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a440d1b0f85df43b63bc021cb744db8c67fabed7d29f6d39ab0d773898b2d5`  
		Last Modified: Fri, 19 Jun 2026 01:32:20 GMT  
		Size: 645.4 KB (645392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c400e36dd979ff58b413c552f09aa5da41a20d1b91296e754466098b8f3496a3`  
		Last Modified: Fri, 19 Jun 2026 01:32:20 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:2053b70572128a544980c3857ff4d222ab3d7968baa16619a629327537df6008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de6a3329e4af520384d5f138423d8517d6fed57ae2fe4ffac77cefcb595a1da`

```dockerfile
```

-	Layers:
	-	`sha256:60957f8e1255315fa5424a70eaa8c2b2352dc6fc3dcd243446e7723a2642cce1`  
		Last Modified: Fri, 19 Jun 2026 01:32:18 GMT  
		Size: 35.9 KB (35895 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:standalone` - linux; s390x

```console
$ docker pull adminer@sha256:5c8d0ce9d645e133244726b972267097b25822b29b10f6a23f5706acba826988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46392131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dc16d259c805db18b4a7080209e7ca0347ddbf47a5983e50425a4034ec30751`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:41:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:15 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:58:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:58:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:03:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:03:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:03:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:04:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:04:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:04:00 GMT
CMD ["php" "-a"]
# Thu, 02 Jul 2026 21:48:17 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 02 Jul 2026 21:48:17 GMT
STOPSIGNAL SIGINT
# Thu, 02 Jul 2026 21:48:17 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 02 Jul 2026 21:48:17 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:48:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 02 Jul 2026 21:48:54 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 02 Jul 2026 21:48:54 GMT
ENV ADMINER_VERSION=5.4.2
# Thu, 02 Jul 2026 21:48:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=5b761efe7049bf586119256324fd417b49e5bb9243b40d9734fe86655e4402fd
# Thu, 02 Jul 2026 21:48:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=a4106d61bc81575d0b45c762105eead064384643418cad197a3257677625bd10
# Thu, 02 Jul 2026 21:48:55 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 02 Jul 2026 21:48:55 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:48:55 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:48:55 GMT
USER adminer
# Thu, 02 Jul 2026 21:48:55 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 02 Jul 2026 21:48:55 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456e3629146fe5c0dd41d3f3705f9e0e9c8d1ee227a9fad524cc647d65e3b35d`  
		Last Modified: Thu, 02 Jul 2026 20:46:59 GMT  
		Size: 3.7 MB (3666071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d30c580e70f09376af9a8db44fc8ea6906e116df2e527d0dd2cc1ff4e3b256`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c796754067eb590ee1e69f477e650c40d2d561ee9e24c969dcc40dd2595f2d`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117ed728962a194d512488e0355683e465e8ccb62a8e39d4dd724ce4ae533cec`  
		Last Modified: Thu, 02 Jul 2026 21:04:13 GMT  
		Size: 13.8 MB (13763853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5b2ca7a21fe65698d17748ea4cd3e7820d1f2f8d10940d96d8a8be71e2894a`  
		Last Modified: Thu, 02 Jul 2026 21:04:13 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7a20f3397b190007718a8ffb87cb25dabea690f4144a49948a367bca9cd2d2`  
		Last Modified: Thu, 02 Jul 2026 21:04:14 GMT  
		Size: 20.3 MB (20255553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a04792ff15c4445ff350e5aea79f81fa1729fc67bdeab70a2bf4f7d6c2be1d`  
		Last Modified: Thu, 02 Jul 2026 21:04:13 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f9defbf12b366bb21c0e86ca79c4708604dc68a47c9bb1dad403408bc2281c`  
		Last Modified: Thu, 02 Jul 2026 21:04:14 GMT  
		Size: 22.1 KB (22150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ea2689fcf53289edcf1c91cc9b922405f77b1ef5d8a98a70e5d769a6b7c668`  
		Last Modified: Thu, 02 Jul 2026 21:04:14 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4588c83dc4b1cc80769c63b1b244457bee03945515f6c6dd22d79fb88a845b`  
		Last Modified: Thu, 02 Jul 2026 21:49:02 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c6e7b0241c9d224d4a18555ccfab4cf801a8e0bd577c4ed14d13dde33ca54a`  
		Last Modified: Thu, 02 Jul 2026 21:49:02 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1967f6bfa9e23f332f70ebee97fc4075ffdd26799a76ccb22472aa52a26f43c`  
		Last Modified: Thu, 02 Jul 2026 21:49:02 GMT  
		Size: 4.3 MB (4299892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4badda77c2246f5434930463e29789023daa24680b380bac2fa543adebae4fcc`  
		Last Modified: Thu, 02 Jul 2026 21:49:02 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdab6e12a2295f39c640dcf2ccbfde53783d968995343a74bcd8f8d73a225100`  
		Last Modified: Thu, 02 Jul 2026 21:49:03 GMT  
		Size: 645.4 KB (645389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5753e9ef81e7d44e0c44a39007f76f98ea36822f1f49646795f1add1b95793e2`  
		Last Modified: Thu, 02 Jul 2026 21:49:03 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:488a971d47d4f9450753612e5970008e60cfa94fe3e96a1b6537e451b26bd092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398014af288c422d3bb1ce429b44211431dcb107d29bfb58cf5a967b37c21d77`

```dockerfile
```

-	Layers:
	-	`sha256:42432b4b03224e07d58e6ea73640ba84ccec83410834d1342adcf99fa07b8bda`  
		Last Modified: Thu, 02 Jul 2026 21:49:02 GMT  
		Size: 35.8 KB (35834 bytes)  
		MIME: application/vnd.in-toto+json
