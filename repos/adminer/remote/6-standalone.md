## `adminer:6-standalone`

```console
$ docker pull adminer@sha256:037125c2bc4836b4917d4fd08a16f817eac2848778c4e9aab87a8340aef08dfd
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
$ docker pull adminer@sha256:cf0d9e360da6b8054b6ec71160c5003b8c302f4ce2daf155cb59924bd7f3b13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46532980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03732a34382945746f8f0d7f366d61cac8717feb4dac1b3f3d4999cebe8eeed`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:34:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:34:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:34:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:34:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:34:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:34:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:34:40 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:34:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:37:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:37:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:37:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:37:33 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 14:59:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:59:26 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 14:59:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:59:26 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:59:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:59:53 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:59:53 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:59:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:59:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:59:53 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:59:53 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:53 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:59:53 GMT
USER adminer
# Thu, 19 Nov 2026 14:59:53 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 14:59:53 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275afadd6b6def23166c6d83c8c272950573cf226963d5883f0ed6f5c4fb0bdb`  
		Last Modified: Thu, 19 Nov 2026 14:37:40 GMT  
		Size: 6.0 MB (5974107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563c763161f3e7daac9faaaca49aae0c6a2c0c16beeb220c5bc9b7adce1fbe80`  
		Last Modified: Thu, 19 Nov 2026 14:37:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da9ac84f825625eca23fb802f94307246023b9e5f89fd4f9b55ad1a31259550`  
		Last Modified: Thu, 19 Nov 2026 14:37:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1ffdb22e88423768bfd9e40a16418e986687fa1839d5ab83757869b76b02a6`  
		Last Modified: Thu, 19 Nov 2026 14:37:40 GMT  
		Size: 13.9 MB (13934105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13983772c641a7de24c5a897861f0b3ae70ce188e2999dc1eeac4d0e4d57db0d`  
		Last Modified: Thu, 19 Nov 2026 14:37:41 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbd513417ef8c74f881db98ef33d5bf3a69374dbbcef33efcc5de5f97c18c02`  
		Last Modified: Thu, 19 Nov 2026 14:37:41 GMT  
		Size: 20.6 MB (20576669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220e64190c17fd525d7b2a55fc049a2fd07a1c8506507fab4a428c1f78f6dfc5`  
		Last Modified: Thu, 19 Nov 2026 14:37:41 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f5dce6873252296436527cab7c5af077d0d9107c3ccdd02fdb44b37d5a42ac`  
		Last Modified: Thu, 19 Nov 2026 14:37:42 GMT  
		Size: 22.4 KB (22391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6383cb0880087a2151d577a09095d237fb97407cac1cea9bc6632150c2fe7fd7`  
		Last Modified: Thu, 19 Nov 2026 14:37:42 GMT  
		Size: 22.4 KB (22398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aa14d8489977a0466a2dcc8c979e5db86e36dad0ab645b6eddb550faa2bcb9`  
		Last Modified: Thu, 19 Nov 2026 14:59:57 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea0e3ff3c7f218903b72c372e4126c4558532fddbac69bba3f6c778c6240104`  
		Last Modified: Thu, 19 Nov 2026 14:59:57 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1e8b5789e835b2ef6bcece3f7e2989d809013820c8a2eeaaea4779a1f55a28`  
		Last Modified: Thu, 19 Nov 2026 14:59:58 GMT  
		Size: 1.5 MB (1468025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414d66a1041c936fd15a698b4e531b38353a2dbea951b1988c9121a80ba79fd7`  
		Last Modified: Thu, 19 Nov 2026 14:59:58 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309ec3d17d6ccc27478c5c3b7a834ebf97481becd0b5d5a0ff378ea473cf5ad8`  
		Last Modified: Thu, 19 Nov 2026 14:59:59 GMT  
		Size: 673.9 KB (673896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1162ea5e42ec203e023ca40a9dddc4392e475509738b1bc18ff6072a8fd75a3e`  
		Last Modified: Thu, 19 Nov 2026 14:59:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:b23dfebc6a158b1cfa58a0c870edd7269ccdb172bbf4cf7b387c9542b3622ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169a9e52afb4525243cf2b0ecf0a6c4864ffd3ea5482322d08d8237d1c03746d`

```dockerfile
```

-	Layers:
	-	`sha256:f8b4fd4e4c8e0fc09e305973a555fdc2c52881596d4ebaba35b74f48400cd686`  
		Last Modified: Thu, 19 Nov 2026 14:59:57 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:fa8111c685f0f97300e285cb7d0c512f2fd49b69810bf6deee4b1d1d79973528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43821793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953a665ea486e04f3871b8e8a64b0e59fafed1b8cf8b90150657edabeb9eb477`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:49:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:49:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:49:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:49:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:49:39 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:49:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:49:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:52:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:52:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:52:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:52:42 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 15:46:57 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:46:58 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 15:46:58 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:46:58 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:47:36 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:47:36 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:47:36 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:47:36 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:47:37 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:47:37 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:47:37 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:47:37 GMT
USER adminer
# Thu, 19 Nov 2026 15:47:37 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 15:47:37 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4262b1f1f5cd0880d3f665af70e076971ce3426e51fdfd07742ead365197f00`  
		Last Modified: Thu, 19 Nov 2026 14:52:48 GMT  
		Size: 5.6 MB (5566941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7f973811d236795be87ad6c6a0566e40a52a141b8ffea05718c683bcb8c030`  
		Last Modified: Thu, 19 Nov 2026 14:52:48 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e60f0bc438b8b577544a00a66f76686d1e307b16024ea26876b2bad395c818d`  
		Last Modified: Thu, 19 Nov 2026 14:52:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9041d11d0f3772c95c80520eec3a3cb89ebe5720be572232facfecec6b74d8a`  
		Last Modified: Thu, 19 Nov 2026 14:52:49 GMT  
		Size: 13.9 MB (13934122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0557f8299a9ccb4c14dacf5efbfd3fd633f96ecaa6e71d73b56644b43b472822`  
		Last Modified: Thu, 19 Nov 2026 14:52:49 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc404dba0edcf79140e8767a210ee37061eb3b49bf4843739fcd43e04ed744c`  
		Last Modified: Thu, 19 Nov 2026 14:52:50 GMT  
		Size: 18.6 MB (18572260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f06b9db200f9b7c3ce4e6b9040945f1603c928b7c70e4485ff2876eea97cd1`  
		Last Modified: Thu, 19 Nov 2026 14:52:50 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16c17f2a6f45a56caf7bec183b11ad385de534341208ba345fd226fdc317e28`  
		Last Modified: Thu, 19 Nov 2026 14:52:50 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854c35e52fca3dc79d678d132f81ba35639f8a44b48d61ae17127029f5612c9a`  
		Last Modified: Thu, 19 Nov 2026 14:52:50 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f48676ef2cca2bc6ac8cdb7565fc9b3706cb8b67ef5e39a65301c910473bf6`  
		Last Modified: Thu, 19 Nov 2026 15:47:41 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1939297948d683b68c7cb606ea3fc6e2b413aca3a764372d49c7ae58562d374`  
		Last Modified: Thu, 19 Nov 2026 15:47:41 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52abd5858a7ec962ef7b1ca061335e47f08b0bd7d86315f13900ba196c3ba42e`  
		Last Modified: Thu, 19 Nov 2026 15:47:41 GMT  
		Size: 1.5 MB (1464080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c062eba95ab8520e318a663239842e8c0e090e298f5aff580999bef2df120e1c`  
		Last Modified: Thu, 19 Nov 2026 15:47:41 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d65d66e7a9a76d46357d2db126297cb099784e04affdad373c714fffa985deb`  
		Last Modified: Thu, 19 Nov 2026 15:47:42 GMT  
		Size: 673.9 KB (673903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc76627ebe0d04d356df608776221b3cc50560d7e3e7989c9814919d7631e14`  
		Last Modified: Thu, 19 Nov 2026 15:47:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:83f2da80aa543a48b795d2b59141a3eab6c74b376b75a4549654b56672256587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0853ac77d6fae7698239e2304ab013769b3d1f14505b01d9a3e440aae70eb477`

```dockerfile
```

-	Layers:
	-	`sha256:b73774afb83c895e5fda030f1ba740de10a090b7910b9620458f7124c16d22d9`  
		Last Modified: Thu, 19 Nov 2026 15:47:41 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:648442d5916e4b7ec05d585649bfa88df0f1f91323882a952686f71e1af22bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41959526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a2965e3a7a66857f8b37901a42f343a8765aeca3adbab7e9193a862aba4628`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:29:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:29:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:29:26 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:36:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:36:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:30 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 15:02:26 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:02:26 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 15:02:26 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:02:26 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:03:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:03:01 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:03:01 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:03:01 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:03:01 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:03:02 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:03:02 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:03:02 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:03:02 GMT
USER adminer
# Thu, 19 Nov 2026 15:03:02 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 15:03:02 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e551a6cfdc4cc861dbf32c1af89a7125ac5a0f330f25257d3761e822678e12a2`  
		Last Modified: Thu, 19 Nov 2026 14:32:48 GMT  
		Size: 5.2 MB (5211722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cd3d561c1cd0282e98d88f4833a8836dca2fe2dff369b7ea1aed29bb5d0847`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0d08db12532d3262249b087db740f77ba16413905a93402c44b91426851552`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8797cebeda4285550fbbfeed472c4185cd3cf9d1d186c664de90562c09474e`  
		Last Modified: Thu, 19 Nov 2026 14:39:38 GMT  
		Size: 13.9 MB (13934125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7899bb46a0d48886995792b8e7e76f34ae949a1ad2adcfe85dd5be6da8634fd`  
		Last Modified: Thu, 19 Nov 2026 14:39:37 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd93ef43b0af8898bd70dacaa022b4116ff995f27f209c05435a60e27c030856`  
		Last Modified: Thu, 19 Nov 2026 14:39:38 GMT  
		Size: 17.5 MB (17505946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2301663a2551c61a4edef1fa952feb0ea7e6deb2121860f1a603ecb6646c7e9`  
		Last Modified: Thu, 19 Nov 2026 14:39:37 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e2e8b414a2714b76c4140f0084245119933f74905cc9032c708e0a02e84205`  
		Last Modified: Thu, 19 Nov 2026 14:39:38 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ef15827344d047bfc67c48f673301abfa83a6e618976d74e140ec4a36c63b6`  
		Last Modified: Thu, 19 Nov 2026 14:39:38 GMT  
		Size: 22.2 KB (22198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395ceaf7331adffbadf5225ae6fa12b2f34317e36726e926c884f36cc823b0fc`  
		Last Modified: Thu, 19 Nov 2026 15:03:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2382e4f32937aae24620cf00f8dc1751bad1798f0c5bfd115dc86e3add2de2`  
		Last Modified: Thu, 19 Nov 2026 15:03:06 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b996c6c384af48ec476145af49989bd090eec9ed6a22d4985eed8f924242fff8`  
		Last Modified: Thu, 19 Nov 2026 15:03:06 GMT  
		Size: 1.3 MB (1314003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44d69ca0ad1a54812dd4adb1fe4d55efcc46a77fa323848ea21aaeeb1125e54`  
		Last Modified: Thu, 19 Nov 2026 15:03:06 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84dbe223db5dec4c5f9666b56ee69ab69682bc409e98c82ec5ad109ab3f0a3d`  
		Last Modified: Thu, 19 Nov 2026 15:03:07 GMT  
		Size: 673.9 KB (673897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1ddf901119df4fde88cd603f0313d08b1f2e33b92a92b002fe014a4a135c7d`  
		Last Modified: Thu, 19 Nov 2026 15:03:07 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a921e1a980f4242b0543adf32d9c8a561d7cca5e8650709da3d8679d7aaec288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18511e1621ff01a2612729064ccd6ea69c11308f5f6d2490a1c07bf889d4248e`

```dockerfile
```

-	Layers:
	-	`sha256:ffe8b75d4a50989b58aa77d97d5501de3d00014609f5a16c589b63a77aadf91d`  
		Last Modified: Thu, 19 Nov 2026 15:03:06 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:3182e2361ff8e341df8a10bb9196d77d2f2df65607ad1bae43ba9c5afcb54463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46562386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a526f7b5f20b6eb638ea65f7be60a886a5581faebb6475490d7902d3c4855249`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:35:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:35:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:35:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:35:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:38:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:38:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:38:58 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:38:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:38:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:38:58 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 14:56:12 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:56:12 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 14:56:12 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:56:12 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:56:46 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:56:46 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:56:46 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:56:46 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:56:46 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:56:47 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:56:47 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:56:47 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:56:47 GMT
USER adminer
# Thu, 19 Nov 2026 14:56:47 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 14:56:47 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8340026f42bdb9fdfb653427341268b8ad0667d09f19d69e9d57d674ca9bc708`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 6.3 MB (6288554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4e559cd456e861543b8d94c7d1077097949090faad3b338c5db5cafbd5f5b9`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b770cac8d5e0e92ed244abff8516e97a8a48d3b2deabc58c6d671f25abc61`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07389ce7e8da12828a19d52de57d69ec714decff06ead6acc3da82f666e30d28`  
		Last Modified: Thu, 19 Nov 2026 14:39:07 GMT  
		Size: 13.9 MB (13934096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abfa39d9716757929b0231f29c0e7439720b6f288f6880d07a4524330bfc221`  
		Last Modified: Thu, 19 Nov 2026 14:39:07 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb872022f9fc80dd968c5682b64581ecfe19ceb887c780a14296eff576f5f72`  
		Last Modified: Thu, 19 Nov 2026 14:39:08 GMT  
		Size: 19.9 MB (19943026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e419df310db948b3f4d070237d3c56fb2431021122622b29367f09b109d9cf`  
		Last Modified: Thu, 19 Nov 2026 14:39:08 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80df71484417ecf60a50a7141634e4f01edc0ede804c0ee418bdfe080bf995c`  
		Last Modified: Thu, 19 Nov 2026 14:39:08 GMT  
		Size: 22.2 KB (22209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8834f6a348ef1e591d169887ece729dfc46e7b05fc086944c86230c84a478bb`  
		Last Modified: Thu, 19 Nov 2026 14:39:08 GMT  
		Size: 22.2 KB (22215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc881b0348e8eaed080420679d0e3ad4eba0db2543a0610db578c828cde8b7a9`  
		Last Modified: Thu, 19 Nov 2026 14:56:51 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b128a2df60b85df26f5321fd3f147ba25602667af03927f9f8f9bbbdf83d7cb`  
		Last Modified: Thu, 19 Nov 2026 14:56:51 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca7874a72045000f5ff3b590a3f953f0f84ea681fd075d8c8738580f9db3c75`  
		Last Modified: Thu, 19 Nov 2026 14:56:51 GMT  
		Size: 1.5 MB (1480084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2a53927174a7199f1f90e6e7ba6c4ef6a8efe8e0b1d51930a94ee8d8f38ec8`  
		Last Modified: Thu, 19 Nov 2026 14:56:51 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fe1c0e3dec249138e7d2a650793b35b9b8f3cc5c2889f96e93ca57b1c0d029`  
		Last Modified: Thu, 19 Nov 2026 14:56:52 GMT  
		Size: 673.9 KB (673900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419fc3439abf5571d501ac1333ca3d40758590663cce264707631808db1b8cdd`  
		Last Modified: Thu, 19 Nov 2026 14:56:52 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:d5dc802c02be91b14ac614eaacc668df409453f8ddb9a4cfa90eebedf56a014b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8036b249e1b594985c387cdb286b46a4c8ced40e4e0ad60f7c3e00d483e01710`

```dockerfile
```

-	Layers:
	-	`sha256:3c9671fa7e23496bf62e401e8b142967c46a862e44bcd9d75f87392d2b5d1411`  
		Last Modified: Thu, 19 Nov 2026 14:56:51 GMT  
		Size: 36.0 KB (36034 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; 386

```console
$ docker pull adminer@sha256:fc49f6949c79317e96a4e9ce2813219bf0e891c8e77747ec70eadcc844f02267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46676949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07825a93cfde48ff83d0f1cfb91ac2a628b556ca6cde7862d7b338d5c7051222`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:32:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:32:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:32:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:32:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:32:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:32:33 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:32:33 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:32:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:35:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:35:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:35:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:35:52 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 14:58:11 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:58:11 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 14:58:11 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:58:11 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:58:40 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:58:40 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:58:40 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:58:40 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:58:40 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:58:41 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:58:41 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:58:41 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:58:41 GMT
USER adminer
# Thu, 19 Nov 2026 14:58:41 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 14:58:41 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859a335a03ab51bac0802ba697c6d1b317814ccf5228bff56ae10ad94d401088`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 5.8 MB (5820559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649082d5721c461b69f1b99560146721c73769c2dce33447d0a262e883095b36`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef9b45ba8710857759123c65c289289d1ffb8156b99e73f4e48f7e624749441`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69289a53365187a2cb2091f1422497224749667383864011f5986359d15c532`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 13.9 MB (13934086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9686652165453eac9a9f879798133b94007d466d8b5ddae872b2f4ee80064b6`  
		Last Modified: Thu, 19 Nov 2026 14:36:01 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2dd2d682760101918680accc45c511d28c10917b2da6aab10bab1164f8b18a3`  
		Last Modified: Thu, 19 Nov 2026 14:36:02 GMT  
		Size: 21.0 MB (21019097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0be554b8affc9469277602e84445ade456a6302f8520477c015ff0fbad79b7`  
		Last Modified: Thu, 19 Nov 2026 14:36:01 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54099ce48f86fcfa5f69191dd7edd243533202b849ca6393efdb99714478d4c3`  
		Last Modified: Thu, 19 Nov 2026 14:36:02 GMT  
		Size: 22.4 KB (22385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae935f660dc90e3da1ee093c665d1f88921dacf02c83e5a7a5e40110045b366d`  
		Last Modified: Thu, 19 Nov 2026 14:36:02 GMT  
		Size: 22.4 KB (22392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a04c8f72922482e22827571d612a08166daf5fc7f6d5a62ec412449b8972fd0`  
		Last Modified: Thu, 19 Nov 2026 14:58:44 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ed0e3bca339d5b710be6b4c7660f0f29759ce2f11219ac21e95924d749a971`  
		Last Modified: Thu, 19 Nov 2026 14:58:44 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e3a159e41bbe7f6ef9ee8d242984a580a25cb1bacef9ee6d291c017c3f7b9a`  
		Last Modified: Thu, 19 Nov 2026 14:58:45 GMT  
		Size: 1.5 MB (1496454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22339424d3824dccb4854dfb6e12102b80ca9acd2c3ceba5e895cd7d923d91b`  
		Last Modified: Thu, 19 Nov 2026 14:58:45 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595eaee397f8b5eb402265767159af0e5bf654f5ef2a75f07133682d9837c6ba`  
		Last Modified: Thu, 19 Nov 2026 14:58:46 GMT  
		Size: 673.9 KB (673901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a39a4792243c6966e2d7ff96d70c9de6de046ad38328feb66e92eb1f449be94`  
		Last Modified: Thu, 19 Nov 2026 14:58:45 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:03144140074419e9ee5b88eb5003e454be322130f31cd035252a5e373b11c58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f046c0a8d12c15a1471cc3b046d4b77f0526dddf3ae276b1a14424efe1f24af`

```dockerfile
```

-	Layers:
	-	`sha256:94f9ff9991f9a4a46e67de931d3204b44978bbec215be10368d587489d6946f6`  
		Last Modified: Thu, 19 Nov 2026 14:58:44 GMT  
		Size: 35.8 KB (35813 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:05ed466b3df9ad40aabe86e3c0759ec966fa82bf5909b84ec7abbe4c45d3accc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48114884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d264ead96ab9cf56c4cd8b96959f747b1c35a2a791d3d372088e550cb490c7`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:37:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:37:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:37:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:37:46 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 15:30:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:30:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:34:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:34:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:34:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:34:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:34:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:34:56 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 18:15:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 18:15:10 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 18:15:10 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 18:15:10 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 18:16:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 18:16:18 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 18:16:18 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 18:16:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 18:16:18 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 18:16:20 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 18:16:20 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 18:16:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 18:16:20 GMT
USER adminer
# Thu, 19 Nov 2026 18:16:20 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 18:16:20 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d45d42befed46bba518e63b124c822b4f3e5e56556cd342469e05eef60e1e4`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 3.7 MB (3672704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27df544a7e4deac06d4c069baa6d3874e5a90dfd80a8e6b929669a250180798`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7207e849983464015f2e0550d571425c965d393be98f77abbba0af805774bf`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f50c5920c1abcbda56fc0de094df32352feaf950d0f9c00776cea0e57e0a201`  
		Last Modified: Thu, 19 Nov 2026 15:35:13 GMT  
		Size: 13.9 MB (13934093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d217489c71d274a735610ac4d19240de12eeb8075b36aa422a252d5ba1d88c`  
		Last Modified: Thu, 19 Nov 2026 15:35:13 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a68afb579db0dd3e0757619519c371295b9f146bec04faa261a9f6dc1b0fdc0`  
		Last Modified: Thu, 19 Nov 2026 15:35:14 GMT  
		Size: 24.4 MB (24419722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a958962a30a7ed735b8968ebf7b79dfebd7d278631b2837e80edd6cac2a6eb77`  
		Last Modified: Thu, 19 Nov 2026 15:35:13 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d426b6ea001fdc95d4b8ef466bc6c161b98e84794f1fa14ec7fc6e83e908c811`  
		Last Modified: Thu, 19 Nov 2026 15:35:14 GMT  
		Size: 22.3 KB (22253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284da3c992834457e8342549ea22b57bffcef04675867692a1ef20362ca20941`  
		Last Modified: Thu, 19 Nov 2026 15:35:14 GMT  
		Size: 22.3 KB (22271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d738767a03eb6d6a390630f4adb9bee11fa7d8cfc3d2e2e4a8e137c6e4ea30`  
		Last Modified: Thu, 19 Nov 2026 18:16:29 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1d51db4d7d05408ac1bc5f2d1a03d1eb485b46742f30771147577e83f563fc`  
		Last Modified: Thu, 19 Nov 2026 18:16:29 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55da23ef5a27f3be18d108936281ec228fe2de2d90d6835de411c38c3d02feb`  
		Last Modified: Thu, 19 Nov 2026 18:16:29 GMT  
		Size: 1.5 MB (1540272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f200e15bfca3175d4744a21ef44015615ede8ca0eaaa10a310ea25734b24c40`  
		Last Modified: Thu, 19 Nov 2026 18:16:29 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d6ad42ffce3f9ef213df5785e160d6ebd1957aec7092fa619db5ababbf2b4a`  
		Last Modified: Thu, 19 Nov 2026 18:16:30 GMT  
		Size: 673.9 KB (673906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d27d0e36e73434413f5ec5ddad2c6d473c9bd52ac7bf82d829b8f4aacfe7b3c`  
		Last Modified: Thu, 19 Nov 2026 18:16:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:fac153ddb9f17c816278487dec05d8e95a3417f74505ba1af20a8d69d127a0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b87f5c03db22b1dc8192e01f7382e2a8f190ff8531d3f424b000f95f2ef84e1`

```dockerfile
```

-	Layers:
	-	`sha256:708904037ceace2b95f289c8727d1ae7f9f578d5724812ba078b466fa2d6e789`  
		Last Modified: Thu, 19 Nov 2026 18:16:29 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:d04c088c974c69fd621a3afe29d756e63d9a3afe3dad3ae154549544bbba2824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43084353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b7a1cb3ff5693a5320fe41661c74ffc99c274987fd1fcff58e1ae46d529891`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:56:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 10 Nov 2026 01:56:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Nov 2026 01:56:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 10 Nov 2026 01:56:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_VERSION=8.4.27
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Tue, 10 Nov 2026 13:11:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 10 Nov 2026 13:11:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 14:14:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 10 Nov 2026 14:14:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 14:14:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 10 Nov 2026 14:14:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 10 Nov 2026 14:14:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Nov 2026 14:14:44 GMT
CMD ["php" "-a"]
# Mon, 16 Nov 2026 03:02:04 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Mon, 16 Nov 2026 03:02:05 GMT
STOPSIGNAL SIGINT
# Mon, 16 Nov 2026 03:02:05 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Mon, 16 Nov 2026 03:02:05 GMT
WORKDIR /var/www/html
# Mon, 16 Nov 2026 03:07:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Mon, 16 Nov 2026 03:07:59 GMT
COPY *.php /var/www/html/ # buildkit
# Mon, 16 Nov 2026 03:07:59 GMT
ENV ADMINER_VERSION=6.3.0
# Mon, 16 Nov 2026 03:07:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Mon, 16 Nov 2026 03:07:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Mon, 16 Nov 2026 03:08:01 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Mon, 16 Nov 2026 03:08:01 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 03:08:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Mon, 16 Nov 2026 03:08:01 GMT
USER adminer
# Mon, 16 Nov 2026 03:08:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Mon, 16 Nov 2026 03:08:01 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2e71e8bf35e17fd36dea67046c488a781fc479517ed4b9473d136874457c5b`  
		Last Modified: Tue, 10 Nov 2026 03:00:43 GMT  
		Size: 3.6 MB (3640089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4dc6fcc090aaa20c07d67cb8005b0f862530dfabfcb2632c2e750bfdf69c03`  
		Last Modified: Tue, 10 Nov 2026 03:00:41 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f42907712b4ade383e7911e162dab326a706546aa0daf88fe92b7bb4d01347`  
		Last Modified: Tue, 10 Nov 2026 03:00:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dfdcee18de1f5eb04d51b6206516e523f44c37f70d4d11fdad5d8d23c86988`  
		Last Modified: Tue, 10 Nov 2026 14:16:00 GMT  
		Size: 13.9 MB (13885766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d720a6e268c840f2e2dfc4251be827e981efcd38837b40adf09479aaced15346`  
		Last Modified: Tue, 10 Nov 2026 14:15:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b5fed1c9fb4cb73076576bc02235ae151eed25d06040e09552ae7acd575385`  
		Last Modified: Tue, 10 Nov 2026 14:16:01 GMT  
		Size: 19.8 MB (19762076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0b1ff3a810be69ff39ea7bc2179773795a166da1d539b56f77658b5a80dc11`  
		Last Modified: Tue, 10 Nov 2026 14:15:55 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6e798bac826266c48029b461c6ab1274e72482884714d8034b2adb3cf4ef40`  
		Last Modified: Tue, 10 Nov 2026 14:15:58 GMT  
		Size: 22.2 KB (22190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe730a818a129b2d2b0f2abb657ff161ef34dfc42789088a7f7ebfa0c1c1f7cc`  
		Last Modified: Tue, 10 Nov 2026 14:15:58 GMT  
		Size: 22.2 KB (22210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a2c39de25e4ff990262c0e1f9f86b689cbdbb1f1b41fb9952da8947ec5b77f`  
		Last Modified: Mon, 16 Nov 2026 03:08:18 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6901d58eef75afb6737f5389d194486da05f2ed8aad4bb8ca9f84c92fc8d0782`  
		Last Modified: Mon, 16 Nov 2026 03:08:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0176896e4770b9064b4e5fb9ef9160a518550bfe181ee48de43db9fbceeafe35`  
		Last Modified: Mon, 16 Nov 2026 03:08:19 GMT  
		Size: 1.5 MB (1489760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7254fd3e90351ebbd2e1e330ae6d6e00e382b5c515a41c36521254aa5c49af3e`  
		Last Modified: Mon, 16 Nov 2026 03:08:19 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cc137e46c98a9f9d0b6fd627f0265688d96d5ab06387336e6d0721ee3affee`  
		Last Modified: Mon, 16 Nov 2026 03:08:20 GMT  
		Size: 673.9 KB (673905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8dfff9e3434412bfdc14dcf5f6caf40454c37d9d9f3d8e29aa7744101b8ed4`  
		Last Modified: Mon, 16 Nov 2026 03:08:20 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:df3c11a56171ea57548413fc2b4ed2d6def78291705a60d2d13c60e09be17218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1992e09dddc5e802cfe0e539c17853abacb3c64548fb60ab4517d0b19bdd2048`

```dockerfile
```

-	Layers:
	-	`sha256:c9f35ac34df1af794a94d0d9bcb10c912e8a5aa00567ec9d6a7d0fdf4caf712c`  
		Last Modified: Mon, 16 Nov 2026 03:08:18 GMT  
		Size: 35.9 KB (35922 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; s390x

```console
$ docker pull adminer@sha256:36ce5aaeab9e58a391c9b164b9c96fe013d35ff55e4284892524e255eda2a4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46771081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530313b658236b90be7556073b20e120cde4d46044f1437f0b198872d7c912e9`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:18:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:18:58 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:39:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:39:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:43:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:43:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:43:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:43:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:43:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:43:30 GMT
CMD ["php" "-a"]
# Thu, 19 Nov 2026 15:26:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:26:19 GMT
STOPSIGNAL SIGINT
# Thu, 19 Nov 2026 15:26:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:26:20 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:26:47 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:26:47 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:26:47 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:26:47 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:26:47 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:26:48 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:26:48 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:26:48 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:26:48 GMT
USER adminer
# Thu, 19 Nov 2026 15:26:48 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 19 Nov 2026 15:26:48 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9722c0427342697b5cdc3ada96c16379515126b96d9784dc533dd21780acaa3d`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 3.7 MB (3690989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cce96afb7d29f5567987a267924cefd3043f5bf382a8f086e4ca582accbaf8`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8531dc7abbb6c03e22a51e331a5b8ec6512eb261a07cb4b271b34d6fdd2c2253`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85059fa29151331343aea274973df27139e82cbbe265339a81b631a69dd1c32`  
		Last Modified: Thu, 19 Nov 2026 14:43:43 GMT  
		Size: 13.9 MB (13934089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed9cd65d41f3c7a9f72e8b821d2b514ac3ef97d52b6add05facea841524523b`  
		Last Modified: Thu, 19 Nov 2026 14:43:43 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbda6beb6c38cb2a783ba837dbb462ce42f23f35c8b7c4381331605313f776a6`  
		Last Modified: Thu, 19 Nov 2026 14:43:43 GMT  
		Size: 23.2 MB (23164383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6a6bc1ec4b792ce68801b3a6b62e6e2f69739310b9d1d0f2fd3abf93920e26`  
		Last Modified: Thu, 19 Nov 2026 14:43:43 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96b4330bfead05c7f10654cf3938e57eee95309233e6dbd0dc34b9a722a05b4`  
		Last Modified: Thu, 19 Nov 2026 14:43:44 GMT  
		Size: 22.2 KB (22193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af098da0f7e098f1f50349e995f4b7d471013e2a6f2ba74a88e331eb8f43934d`  
		Last Modified: Thu, 19 Nov 2026 14:43:44 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afbda22e2ffca488770ac6cbd884f973a53b896e474067b919ae96b83fc1318`  
		Last Modified: Thu, 19 Nov 2026 15:26:56 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9b9a6b45323b86b11be3a5d7b00623377b372ca003bb53226df16878aadb01`  
		Last Modified: Thu, 19 Nov 2026 15:26:56 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75332ce52cdf682ff0e352da4cf997a9160c4e8407262ddef9e5dd152f464e5`  
		Last Modified: Thu, 19 Nov 2026 15:26:57 GMT  
		Size: 1.5 MB (1534925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f204ad54280aa7951d6d9c0f30f70b5e8b3c3827b9a277fb30103016a2829f9b`  
		Last Modified: Thu, 19 Nov 2026 15:26:56 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48ba76d6f2f6e695f1072e6dfad0845002c6b01a99c6f59968b97158f96e051`  
		Last Modified: Thu, 19 Nov 2026 15:26:57 GMT  
		Size: 673.9 KB (673902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b2556a02dbf75633e0f00a04b763c3d08d329fa7d889b12ee274c778985460`  
		Last Modified: Thu, 19 Nov 2026 15:26:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:acebbe9a0ead8b9c0b8f6fbd46984b7a8222728a90321478013f046dede86223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa666372a2d9d66b0b92e441f7adc1f4a444cd6046063d12a79a215bd3147c`

```dockerfile
```

-	Layers:
	-	`sha256:848d4cf42c26fdd244e3e555e5454671061cf8bfb0bab543f2e4236b398a2123`  
		Last Modified: Thu, 19 Nov 2026 15:26:56 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json
