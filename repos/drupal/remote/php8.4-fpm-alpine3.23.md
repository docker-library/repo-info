## `drupal:php8.4-fpm-alpine3.23`

```console
$ docker pull drupal@sha256:60dec6e3ee027dacc2a014ca7f015bd8071588dcfabe4bfaba0b760f426a5437
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

### `drupal:php8.4-fpm-alpine3.23` - linux; amd64

```console
$ docker pull drupal@sha256:51d2f53ecd4324d5740f4b65ac4d7b6a7ca03df0dea899e6559ebf0a3b3b8f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68762300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f75e3b93e67f30219b6d8afbfb5e9e1f3307786e1ec00f4268b50a26bfe9833`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 19:01:06 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 19:01:06 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 19:01:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 19:01:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 19:01:06 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 19:01:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:01:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:04:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:04:26 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:04:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:04:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:04:27 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:04:27 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:04:27 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:04:27 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:04:27 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:41:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 10 Nov 2026 21:41:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:41:18 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:41:18 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:41:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:41:18 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:41:25 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:41:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31eff523d629d413bbb93a96dfc9f921454bd26e06a97875547c7efe6692da6f`  
		Last Modified: Thu, 05 Nov 2026 19:04:34 GMT  
		Size: 3.5 MB (3493832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c090fe37fa948a49839acf99e9940a390c8767aac7834f5de27cf93239e6c65a`  
		Last Modified: Thu, 05 Nov 2026 19:04:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f971b6a58f1398ab25b145aa3e9936894d0c16f8e468a20314da06ec291bf0b`  
		Last Modified: Thu, 05 Nov 2026 19:04:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b888feb23beeae73d2e2cae2c4d52d54d5c18dce82342b0fae26f9dde7dd08f7`  
		Last Modified: Thu, 05 Nov 2026 19:04:35 GMT  
		Size: 13.9 MB (13885716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73b2fba9e0b77bc2260e17169061c3bcc62f118cdab6dbb1d542c6965d9210f`  
		Last Modified: Thu, 05 Nov 2026 19:04:35 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f316a5c7c94687affd1738ff54972263b938c998ce830b41adde95343b92172`  
		Last Modified: Thu, 05 Nov 2026 19:04:36 GMT  
		Size: 15.4 MB (15399887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27882027e5440943cd506bd255f6fd053718367f817ef9b6a84e0d0821f6d1a2`  
		Last Modified: Thu, 05 Nov 2026 19:04:36 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8a8c8466094efe97ed2d4306938f7190a128f386e40f6954fd187f43d01faf`  
		Last Modified: Thu, 05 Nov 2026 19:04:36 GMT  
		Size: 22.3 KB (22271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2c20f298a72d298752d61e6abb398aec05b19f7b55b78a0b8b59cba2c86586`  
		Last Modified: Thu, 05 Nov 2026 19:04:37 GMT  
		Size: 22.3 KB (22289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feeefc531cacd7016b29f161a8008d1682df6a5461a73a12bf77c6f714e019f1`  
		Last Modified: Thu, 05 Nov 2026 19:04:37 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de21119b1ad2a1c54aa9f0a9ab612ba869b0bfe71e0b7cea949662b411ee34dc`  
		Last Modified: Tue, 10 Nov 2026 21:41:38 GMT  
		Size: 7.5 MB (7484921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d920c255668871f4b11001869b839da7e057ec5e58c8898c2821ca8123ffafe`  
		Last Modified: Tue, 10 Nov 2026 21:41:37 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c383520619b1bf7c4ed27288f8dda840add70a5dbcf45074b8dbe765b66aa53f`  
		Last Modified: Tue, 10 Nov 2026 21:41:38 GMT  
		Size: 879.8 KB (879788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4c9e6479c6862114c4ac82f7e2254b6c7e0bf002bbd1743b5cd14348579951`  
		Last Modified: Tue, 10 Nov 2026 21:41:38 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1ca6b3652f68bbed4d4b086afc097cfd820d33f8fb891e86611da0fc2e32f7`  
		Last Modified: Tue, 10 Nov 2026 21:41:39 GMT  
		Size: 23.7 MB (23707196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:f16fa676402f037e8afdee98aaed608061ca8e07878155cbaa32b32ad758aa14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 KB (408149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1380ba02782c907b5531b724010f269a31e4cbefed94b6f07a34f7e36b2ecc06`

```dockerfile
```

-	Layers:
	-	`sha256:b82979cd24a899b55e945779a5948edd4d027012a5bda3e9897dbca3f6159038`  
		Last Modified: Tue, 10 Nov 2026 21:41:37 GMT  
		Size: 374.8 KB (374776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10265d00b85f5b52e1a770e70796f98b2a0162c1c2098789447f7e7c8be7546a`  
		Last Modified: Tue, 10 Nov 2026 21:41:37 GMT  
		Size: 33.4 KB (33373 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull drupal@sha256:77f797f17f4b81250c29e8c3402ac1fd4793edac2f6b31bc039657301a3d083f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64169700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d237bb403275fbf3b985d4685811cd4f231987e9c7e446db36adb5e8aae15b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:30:12 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:30:12 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:30:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:30:12 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 18:30:12 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 18:30:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:30:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:33:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:33:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:33:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:33:17 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:33:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:33:17 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:33:17 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:33:17 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:49:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 10 Nov 2026 21:49:20 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:49:20 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:49:20 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:49:20 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:49:20 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:49:29 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:49:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6ab306db7fe724114d40182416e48969a1ef0c297bf051e915d0662b3ad3b5`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 3.5 MB (3454596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d37ed434244dd1624008475082620586be680d5b993b932e5a3a77ad043192`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68eb8de27f6274226283018a68ce8dc176bdab81cc4ffe18b5f3815e55d6c3de`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1da6dcbe134c92441ed73ca574f080c4c6764878a36b2b823e7f3626692492`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 13.9 MB (13885754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590d6e82643b4d56de3863843592cee0af716c65f76dd673a94dc67264a3a732`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157d47a67edd2a1fe5ed1c647d4a34e5c87adf9e61e75f5b2028aff9edb9712c`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 13.8 MB (13826496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0504f53276c012fbfe1d06ca4a90a3e5cb11b6e44667a105035613a3f2e8679`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7145764515f1aa461efd32059ad80a2ec2e93a6572129286220aac680ec73ac3`  
		Last Modified: Thu, 05 Nov 2026 18:33:24 GMT  
		Size: 22.1 KB (22074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c428573f84a27eee7d7425604210e60161a18ce7dc227281600155f65cd31e09`  
		Last Modified: Thu, 05 Nov 2026 18:33:24 GMT  
		Size: 22.1 KB (22088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b994943a1d8c4822fa630d03e9c2dc5ec1e12a3e8fb60f42b95426f7615e642`  
		Last Modified: Thu, 05 Nov 2026 18:33:25 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376349f27c73f8c2727dd36b98c0191ef27577868db81d5bbf488a97eec08809`  
		Last Modified: Tue, 10 Nov 2026 21:49:38 GMT  
		Size: 4.8 MB (4800850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20bc7fae26a0b3bd7fbbf86dd8dd22c8912d9fe1573b38d1e234aa93b2d9afa`  
		Last Modified: Tue, 10 Nov 2026 21:49:37 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5b74935ff634ea64293991ed1a4bebfa72647d309782ff4473a677b1ffa5a8`  
		Last Modified: Tue, 10 Nov 2026 21:49:38 GMT  
		Size: 879.8 KB (879792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909f4e12b391ed0d746a9943c9bed9d5114431cf3985a961c81eb226e9f6b04f`  
		Last Modified: Tue, 10 Nov 2026 21:49:37 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ce94a75bcab95350727de678e8f4d47dac8c70faf225b437c5057c44cf9bbf`  
		Last Modified: Tue, 10 Nov 2026 21:49:39 GMT  
		Size: 23.7 MB (23706005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:26c23a5892b84baae0e37d2db5455d6760b522d2ad42b64df33fd842281574ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea6bfd1b82a34a562cf318764a8c739f78e58216d7e115af4e621df48ce222c`

```dockerfile
```

-	Layers:
	-	`sha256:000250d41fc613ffab94cf125ff9505de6e81c81dd151c58b056faff8a1d43a4`  
		Last Modified: Tue, 10 Nov 2026 21:49:37 GMT  
		Size: 33.3 KB (33286 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull drupal@sha256:47213495ae665cec6f749fe159a237228b0f76ca3cb7b705510cefd29345f617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63729930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07460e82ab4acf7ae8859f4386caf95fa7e0eeb844407b552bd8cb3f40177810`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:23:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:23:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:23:51 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 18:27:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:27:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:30:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:30:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:30:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:30:31 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:30:31 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:30:31 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:30:31 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:30:31 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:53:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 10 Nov 2026 21:53:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:53:34 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:53:34 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:53:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:53:34 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:53:41 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:53:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78008ab9cd4bf7a83a5e67d555426fa4e90f47c7a91448a48f1a46e4eae8ba2`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 3.3 MB (3262088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13705ff4bf9ac1ee5b01678136f987cc8d527eb8da04a4646bf8bdaa163d38d`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8ff4c4b4ba03bb2742cbf5d2596b2281d8fc47e4b61b5d89377396b91fc872`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39812be1a609244b64c62d9257bcefe5d707815af00cf45d55dbad6fb2a71f4f`  
		Last Modified: Thu, 05 Nov 2026 18:30:39 GMT  
		Size: 13.9 MB (13885749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884327438006176965a49c4ddc93e711f5b468829b6f6049cdd051ac63ed5bb4`  
		Last Modified: Thu, 05 Nov 2026 18:30:38 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96285115a84375283c905f15f42620f7af4175b4c5e953f4cacf1f5f0f240664`  
		Last Modified: Thu, 05 Nov 2026 18:30:39 GMT  
		Size: 13.0 MB (13047395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cffc08c2fad699b768a42c79a45b33088d3d1ab4c90e474910483329b5d5bff`  
		Last Modified: Thu, 05 Nov 2026 18:30:38 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fda1a6df8b0c356f9b92764fb48808b56ceb99e999255ce4e344a868c07e0b6`  
		Last Modified: Thu, 05 Nov 2026 18:30:39 GMT  
		Size: 22.1 KB (22074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f1c5632c71be1dc6fba400083cef7dfbf41033235bf51cf3f6f15992a5cc3e`  
		Last Modified: Thu, 05 Nov 2026 18:30:40 GMT  
		Size: 22.1 KB (22085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce4c5541f38b92feda4b2abfaffd976cdcf8c05074e41e7e9f8e12de390fb1`  
		Last Modified: Thu, 05 Nov 2026 18:30:41 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba84f50f9762db1de336983f37bd6586c6f803c5019371ba64f4d0267ef6c5e`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 5.6 MB (5623020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789e845a51dfcb7d7d50d82a3f8ac9b1b89d337131c037e1cd8fc5a2bf3ca535`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7aa94c5ba4c8ef7d44100ae72f9c0ca8709f1ae99428885b9f5b7ff7f1fbfc`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 879.8 KB (879790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb8824ec127da8ae4bc172e4cbc1c5f3b3ef01a8a473ad2213f7baa6e789b54`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947b0a60fcc207f0995f3d02462be07749221596ae070055ca3c22fdf546ec3a`  
		Last Modified: Tue, 10 Nov 2026 21:53:57 GMT  
		Size: 23.7 MB (23707094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:b75a7b8ebc59cae7fffb3736c5d4bf4c60facaf81d6ac28b4c1fe4059dfa5d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 KB (407662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdce21ef0fb44d5d5a3e656ab7d51eba9a56750763d095fc733459b8f273cefa`

```dockerfile
```

-	Layers:
	-	`sha256:5226e1b40c6ae99c9cbfaf579e9028f01f3e3def7c7b11f4cce8289795e418a2`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 374.2 KB (374162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d2134017be7bcb0cf5a7993aad500b0ba008fff344aeabf8a82eb2a45f04fd9`  
		Last Modified: Tue, 10 Nov 2026 21:53:55 GMT  
		Size: 33.5 KB (33500 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:5d4f826e403882ab74a0d4dfaf5eef4e822c849ffc2c47cf1278f567adf2a1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68390800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05da5f4aec866afbd8396a6024f4e8b7819835879fe423d9ed3ac9a733be4d57`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:52:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:52:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:52:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:52:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 18:52:22 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 18:55:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:55:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:59:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:59:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:59:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:59:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:59:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:59:18 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:59:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:59:18 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:59:18 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:59:18 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:43:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 10 Nov 2026 21:43:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:43:12 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:43:12 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:43:12 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:43:12 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:43:19 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:43:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d950b25c76494e34591f9b569316146a7902f9bceeabe912117524fabd5d13`  
		Last Modified: Thu, 05 Nov 2026 18:55:48 GMT  
		Size: 3.5 MB (3506086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7604642c0da68f0e9489a9a2359f1a3dbfcda86ba7a6a57eca357175293320e`  
		Last Modified: Thu, 05 Nov 2026 18:55:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19887755b79ba9c820a36dc2015db6a8b35f16271200c2d9b762ae189b443d3f`  
		Last Modified: Thu, 05 Nov 2026 18:55:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4ae0500b21ab2d8766393a7ec05fa94275ff6c6195a18878a3e4130aee61d8`  
		Last Modified: Thu, 05 Nov 2026 18:59:26 GMT  
		Size: 13.9 MB (13885760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2054d2bd940b86e41375803e8e23d4a7fa21772a6782cc67f2eea9f268aa0ca3`  
		Last Modified: Thu, 05 Nov 2026 18:59:25 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03099b73dadf4ee49dff1d8d57206f911c28f1f1b8f441b86a9df93983d6053b`  
		Last Modified: Thu, 05 Nov 2026 18:59:26 GMT  
		Size: 14.9 MB (14911424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15979669ce56031ee7303ca976da65affed7f0cc2024718105f8faec12b4ca1a`  
		Last Modified: Thu, 05 Nov 2026 18:59:25 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a7ffd55f7ea7f87391be75058f53ce0776d4f8f7353319079bceba01859877`  
		Last Modified: Thu, 05 Nov 2026 18:59:26 GMT  
		Size: 22.1 KB (22114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f58d1ed45a5284ac285ee3bf7a04217063af1313994ccfcf9aaa18fceff8fdc`  
		Last Modified: Thu, 05 Nov 2026 18:59:26 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc49929ee8581a8141d57e585ef4bcb70cfdc55fe0b8bdd5aa6133c3a25db987`  
		Last Modified: Thu, 05 Nov 2026 18:59:27 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce09d0391b09c5e452dc5f62da8103348e50145c51bbe32c14e961a9d7764d9`  
		Last Modified: Tue, 10 Nov 2026 21:43:33 GMT  
		Size: 7.3 MB (7252550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6b7ef9130ab7086e46afd73f975295c4f9ab961b9d3bf9bcdb9c88324b1128`  
		Last Modified: Tue, 10 Nov 2026 21:43:33 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d5aa7433dc18e65dadef6aed805ee569431d2a43fa38b425388ddbba793195`  
		Last Modified: Tue, 10 Nov 2026 21:43:33 GMT  
		Size: 879.8 KB (879791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519d55e0d62f907d4cc92af6d3b785fda25dfacf765732196cc976f52600f60e`  
		Last Modified: Tue, 10 Nov 2026 21:43:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c86247e7f3c716e19ea41713f88d6048c81e52a0ed4006d5c9983d080e8dc88`  
		Last Modified: Tue, 10 Nov 2026 21:43:34 GMT  
		Size: 23.7 MB (23706918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:b028e5a1a8461d5ebb1d3c20ba1f8a25f772ec837c3d35c806b4a12930107f76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 KB (407715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6ba417b3ef0e687f2ac1e734bb02e892b2b6662575e0d6fa0d30cd20958d1c`

```dockerfile
```

-	Layers:
	-	`sha256:2a7a7a65ea81121fd73914ae07aa26e99af45e08deb9fbb5ec1f8fcee7653cdc`  
		Last Modified: Tue, 10 Nov 2026 21:43:32 GMT  
		Size: 374.2 KB (374182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d5c249ee393e266ce045902a758b3a8e92737c11608ca60a47bd61df91ce57`  
		Last Modified: Tue, 10 Nov 2026 21:43:32 GMT  
		Size: 33.5 KB (33533 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; 386

```console
$ docker pull drupal@sha256:b3e422c0d7ed412ddffce38f8badee4134137f9e64e840e844c22c6a1164ed78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67857722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae2f1439e0bccc54b88d7a41b667cb4d166c63e5242969eba57b54afb7952fb`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:11 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 18:17:11 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 18:20:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:20:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:24:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:24:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:24:11 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:24:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:24:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:24:12 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:24:12 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:24:12 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:24:12 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:24:12 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:40:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 10 Nov 2026 21:40:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:40:09 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:40:09 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:40:09 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:40:09 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:40:16 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:40:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ab0db030d4a5f49fe1604f58aac3bbe511c0850d5d3acf790ed2cadf496a7c`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 3.5 MB (3526874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23519e0a156dd341d96db175d6df0db568a2421b87d3470641bcf559fcee0456`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5dae3cb2971da297698d31e8fd6e799455c11a179b1bc9e0f065323ab23240`  
		Last Modified: Thu, 05 Nov 2026 18:20:43 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91428030bb2a00d072b672419caf182345b185e0ec15c9f6c2ef06131bf6801e`  
		Last Modified: Thu, 05 Nov 2026 18:24:20 GMT  
		Size: 13.9 MB (13885732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f57c705787c0d0a8b68b194d65a300db8205d8d3593f641064fd5ef9be7f41f`  
		Last Modified: Thu, 05 Nov 2026 18:24:19 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf2bc0ba1aae8defd9269c95bde245cf58b9c3347d0d98113308decbf29fb15`  
		Last Modified: Thu, 05 Nov 2026 18:24:20 GMT  
		Size: 15.7 MB (15733441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1078a8b2c8831be96f399a4b925b77069c37c57b76b572987cebb3c38b6ae737`  
		Last Modified: Thu, 05 Nov 2026 18:24:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3385b9d5e8867fcac95c4264137755a51145952859bda05ec14e124d88de5d20`  
		Last Modified: Thu, 05 Nov 2026 18:24:20 GMT  
		Size: 22.3 KB (22276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804fc6d001102e224eb08d6e83bbb0ae3c7b81df8e4956827648f7f2dce8d0b1`  
		Last Modified: Thu, 05 Nov 2026 18:24:20 GMT  
		Size: 22.3 KB (22296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b11d603e71d760773f749ca784cccb77ba14314d8b5ea57bfd11ccc7284e7c`  
		Last Modified: Thu, 05 Nov 2026 18:24:21 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b44fe40b90de84f3dd6387fd05c110bd5a6c57869d63c1b2c1432aa1e6aa91d`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 6.4 MB (6388134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def7d0e528d783626f01ecf070e4c027acd568cab94377cd6ba5ad81c4b5734f`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed8c8b0a4682024b9808539e48d376917b6e1e483cd7549963824545658a58`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 879.8 KB (879788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0960d18c486cc886dbc2e774a79776d4026b0877fe7d4791dba7868ba76b53`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09718e6c9a72be59b1278f53cc5e96032e3c33104d1e76d2e49224e63d70c4a7`  
		Last Modified: Tue, 10 Nov 2026 21:40:30 GMT  
		Size: 23.7 MB (23706798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:672ea34590c5a69b0c6ad31e1f1f3187008065eddbdb5757b3dbd0c922d2273b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 KB (408081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0431b6ee822334ce7f7355ef8ab0eab50c26cbf38d546e7b6b0d3ca4fc6e5f0`

```dockerfile
```

-	Layers:
	-	`sha256:b30144095d73882347480806852b64328f77cfc34ed7a04274b3f5ab7edb9bbc`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 374.8 KB (374751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5148406f0d5afb011702595d9f926583fc0e39e88b13903aec26df6cdf3ea34f`  
		Last Modified: Tue, 10 Nov 2026 21:40:28 GMT  
		Size: 33.3 KB (33330 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull drupal@sha256:ffb599c795765aaf0b363d22ea41551acfcaf86db2512325b61e00712774e707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69083960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8122a367b550fb48277c180d1e33a391cf624842fa649d64dc3202e1e2e01e9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:44:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:44:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:44:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:44:10 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 22:14:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 22:14:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:22:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 22:22:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:22:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 22:22:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 22:22:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 22:22:41 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 22:22:41 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 22:22:41 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 22:22:41 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 22:22:41 GMT
CMD ["php-fpm"]
# Fri, 06 Nov 2026 14:04:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 06 Nov 2026 14:04:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:17:20 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:17:22 GMT
ENV DRUPAL_VERSION=11.4.11
# Tue, 10 Nov 2026 20:17:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:17:22 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:25:15 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:25:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1af1e2ce2d8537c5f1086c9f309b875a6c8da48e3fbb9506ea9f7625a14e172`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 3.7 MB (3671859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a142126428352fbcc113bc84fe73459202321fb58b139da9ef4f17632612f58`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a73b08e75f2cf18162697c373f39d4e2142d8b6da4f5b8ad76c83e1f11467fe`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0778b9b24f61d291ab45bf21f9fa2d7a4e534338d7dbddc27b0b26a965448bd9`  
		Last Modified: Thu, 05 Nov 2026 22:19:10 GMT  
		Size: 13.9 MB (13885765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9296fe2d9db750c2b101784f5b15af4f7ec878e7ed05f09657e35ba58e9ab9`  
		Last Modified: Thu, 05 Nov 2026 22:19:09 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a53d3fbbb478d84ed5bb65244270f09519d6fc866c4f5d62e30eefa9bff2d4`  
		Last Modified: Thu, 05 Nov 2026 22:22:55 GMT  
		Size: 16.0 MB (15958271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e9e05d32628e0b3c0150095f31e00b54a159dd7bbadd6d45f3d7b4c5a35dd2`  
		Last Modified: Thu, 05 Nov 2026 22:22:54 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c58db612507f7e406d782035e1188618b27b3c9183384bfa9bdab8e1f7ff064`  
		Last Modified: Thu, 05 Nov 2026 22:22:54 GMT  
		Size: 22.1 KB (22124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbe49907bf22bbc514c81f39a818954ad6962cdd71680ff57d24d8919968086`  
		Last Modified: Thu, 05 Nov 2026 22:22:55 GMT  
		Size: 22.1 KB (22148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c314db0d307fef26443588ec1aadb97cbb6e3d666931013200368278ae64441a`  
		Last Modified: Thu, 05 Nov 2026 22:22:56 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f78b2248c1ee9595f7a17b1adc09688e626aeb9a0206e9383a9cda54124603`  
		Last Modified: Fri, 06 Nov 2026 14:06:22 GMT  
		Size: 7.1 MB (7125336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3882046c4bb815b6caccd432f247729763d12a520e4d577244995b3aa138fd1f`  
		Last Modified: Fri, 06 Nov 2026 14:06:22 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893aae672c0770cba3a75173052e6b40bfa9d7858fe0ffb16f0197db01989f76`  
		Last Modified: Tue, 10 Nov 2026 20:18:12 GMT  
		Size: 879.8 KB (879795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e8d5cdbd7207d5f94e3e723b54d27498263bcfe5198f77eb958b2c09b16cde`  
		Last Modified: Tue, 10 Nov 2026 20:18:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d345ee5adea812b0ac4eba2329d418fbaaf9b2501ff1851a886294b42a975f7`  
		Last Modified: Tue, 10 Nov 2026 20:25:57 GMT  
		Size: 23.7 MB (23685840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:6ad8f87a345a8cc04e733f19f6945f7fdf52211566fecda8659ea13a7c2abc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.6 KB (407596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ff9a823581c58a855a5401e11ecaf2080675b59b8068b0ce47aad22611afd0`

```dockerfile
```

-	Layers:
	-	`sha256:3c28d07165941c22989dfae636702f7444aa1d7610c49de46ae31ea30b42817a`  
		Last Modified: Tue, 10 Nov 2026 20:25:56 GMT  
		Size: 374.2 KB (374165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac1456348d37326776b49330e5e211d949a05c15f06bd5aaa2e435101e85c1f3`  
		Last Modified: Tue, 10 Nov 2026 20:25:56 GMT  
		Size: 33.4 KB (33431 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; riscv64

```console
$ docker pull drupal@sha256:a668961dadc99eeb7321b874c961f60b2d748466df21af20bc66b69178f0f24c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65437414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ccacae47e765e8f8c36cb51eaec5f638a7fe721e709e77181429321429704d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 19:12:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 19:12:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 19:12:17 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_VERSION=8.4.27
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Sun, 25 Oct 2026 07:36:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 07:36:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 09:44:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 09:44:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 09:44:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 25 Oct 2026 09:44:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 09:44:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 09:44:53 GMT
WORKDIR /var/www/html
# Sun, 25 Oct 2026 09:44:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 25 Oct 2026 09:44:53 GMT
STOPSIGNAL SIGQUIT
# Sun, 25 Oct 2026 09:44:53 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 25 Oct 2026 09:44:53 GMT
CMD ["php-fpm"]
# Wed, 04 Nov 2026 19:10:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Wed, 04 Nov 2026 19:10:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 04 Nov 2026 19:10:24 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 19:10:24 GMT
ENV DRUPAL_VERSION=11.4.11
# Wed, 04 Nov 2026 19:10:24 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 04 Nov 2026 19:10:24 GMT
WORKDIR /opt/drupal
# Wed, 04 Nov 2026 19:53:04 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Wed, 04 Nov 2026 19:53:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b154fd5622374b2b22208c20e5c2f7ea6063545f72a1fa82ace2fcc16233439f`  
		Last Modified: Sat, 24 Oct 2026 20:17:28 GMT  
		Size: 3.6 MB (3630757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aeed8417eb3f9e6991ece59c4edd6fffb9209f16426f13fc69964b7d2a6d015`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131d702d31cfa740f6ee17896229a6af7c5eeda3a2cac611535ff23f26d11ab`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5a845647971d2a01289d71209efa9b81ab91b6abed14426f4a5e7b09c7f3fc`  
		Last Modified: Sun, 25 Oct 2026 08:40:20 GMT  
		Size: 13.9 MB (13885746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2464606024cbffae3b46732c6ca3d46f2521d716dd6db152d6ea11bd0d5252`  
		Last Modified: Sun, 25 Oct 2026 08:40:15 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449ef4fe45ae500ed826a05023235b21a7cbc988aa940137f72d81af05bf6d99`  
		Last Modified: Sun, 25 Oct 2026 09:45:58 GMT  
		Size: 14.7 MB (14653341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbac6b3a1f87acd6cc1915f0ffcea57a431eceb8593e789003b2592af5320d5`  
		Last Modified: Sun, 25 Oct 2026 09:45:56 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dfe6e8fde6bf1782cfcd6ac1ded6649726e2c6158486bb8d264fdeed4d40b5f`  
		Last Modified: Sun, 25 Oct 2026 09:45:56 GMT  
		Size: 22.1 KB (22106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76aaf4b032c6e713ae6ab093920c1615fc630fe3989afc7b3a69c8a8c98649a2`  
		Last Modified: Sun, 25 Oct 2026 09:45:56 GMT  
		Size: 22.1 KB (22124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37f2f949ca298c31e350532b35dab550b7dbdb9c45f31f204f305ac753e8a9d`  
		Last Modified: Sun, 25 Oct 2026 09:45:57 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adaa75318c417152679d2b4bb415e89ca0ef51442a0026cd0cb08c9af87126d`  
		Last Modified: Wed, 04 Nov 2026 19:13:56 GMT  
		Size: 5.1 MB (5067808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471a583d2eaab1bf43e1f5b5aab52af94ecc4c7eb0daa40e3941937a0374fe2f`  
		Last Modified: Wed, 04 Nov 2026 19:13:55 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b744d24fde18323173acfa129b1ea311020efbea2403416416fd0fb693898e1`  
		Last Modified: Wed, 04 Nov 2026 19:13:55 GMT  
		Size: 876.2 KB (876206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7276dffa135b56a96a79fc39bc94fab05da0844d6b4782792530fe9aa1f670`  
		Last Modified: Wed, 04 Nov 2026 19:13:55 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b7a8628f178038b0fbbfac2c58bbd5853730a767136092fd3f89c2f39568b5`  
		Last Modified: Wed, 04 Nov 2026 19:55:57 GMT  
		Size: 23.7 MB (23685892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:2555e6c0299db2b113f7c3b68e4a0c61c4307ad714e196c0936f6700a1f7159b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.6 KB (407590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28907f5d2d6906689dc1ff214491f578689b57ed16505c4522053a46c84d2d7e`

```dockerfile
```

-	Layers:
	-	`sha256:8de3a6e0e7d3cbdfcb0b27a4eb04d4ba94b604a8b59cec0f080bb11c78e4178e`  
		Last Modified: Wed, 04 Nov 2026 19:55:53 GMT  
		Size: 374.2 KB (374161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be398a05b8f0839a6e9797ccbeb1851509bd54962964b1d81b8635b3b8a2d1d`  
		Last Modified: Wed, 04 Nov 2026 19:55:53 GMT  
		Size: 33.4 KB (33429 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; s390x

```console
$ docker pull drupal@sha256:32a78fcd2b63de0453b3533d6584098159eea892e96c06e7e91edd9c86faa10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67870573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dedadc371c51863d328b28e485b2b35092265f59feb2912b843e5c34f459933`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
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
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 18:35:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:35:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:40:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:40:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:40:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:40:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:40:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:40:48 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:40:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:40:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:40:49 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:40:49 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 22:28:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 22:28:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:12:35 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:12:37 GMT
ENV DRUPAL_VERSION=11.4.11
# Tue, 10 Nov 2026 20:12:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:12:37 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:17:23 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:17:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5537a41ab5e8265e056aca54a7d95524c54f442f590452fdc183b5062df6d5`  
		Last Modified: Thu, 05 Nov 2026 18:24:04 GMT  
		Size: 3.7 MB (3691025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a66195b83326d5857adba959681c0fd0180b1cb088aebb9a5803532cb3ca044`  
		Last Modified: Thu, 05 Nov 2026 18:24:04 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8531dc7abbb6c03e22a51e331a5b8ec6512eb261a07cb4b271b34d6fdd2c2253`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1add233d14837424fb36691cdcf0ff2453fceaf34dbbec0f96bca55eb50ac2`  
		Last Modified: Thu, 05 Nov 2026 18:41:03 GMT  
		Size: 13.9 MB (13885746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71029f8dc1eae2ce95abe9b874cddc2626135cc47bc954eef87eff894d97bb25`  
		Last Modified: Thu, 05 Nov 2026 18:41:03 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4032c203dd47e56ae7d443f75b5c1b85401c8c0b02bf182353dbf930c5f3360`  
		Last Modified: Thu, 05 Nov 2026 18:41:03 GMT  
		Size: 15.1 MB (15146978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df040644c5c7df4ac31f9498c54a515e35c39ffa42b6fd9a5804993756a7f495`  
		Last Modified: Thu, 05 Nov 2026 18:41:03 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f155179f27d8b466bf5d023d1e3966b210c56f502616908385633e91ce0a25c`  
		Last Modified: Thu, 05 Nov 2026 18:41:04 GMT  
		Size: 22.1 KB (22076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad79d2801e18c4fd80203cc436f33fefba17a059654551673045e1f51bb6bad5`  
		Last Modified: Thu, 05 Nov 2026 18:41:04 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02618b3bcdd7ae2827e459ec379ab0f0b1c92d6712d7f170b33c6ce5126cd2e4`  
		Last Modified: Thu, 05 Nov 2026 18:41:04 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930b2cde837d310ce8b24b54e01b65f17f13e98e50eb4f13df5daa61e7a90c4d`  
		Last Modified: Thu, 05 Nov 2026 22:28:51 GMT  
		Size: 6.8 MB (6804773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de50093ab825aeb3f191adf5512532162813a626b40fb0ad9fd7035ed574959`  
		Last Modified: Thu, 05 Nov 2026 22:28:51 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ef0965bf72f7db9cdb4f42237d22071529f9709344c1354a499fcff57b011dc`  
		Last Modified: Tue, 10 Nov 2026 20:14:04 GMT  
		Size: 879.8 KB (879796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8817b03b0091fcac0081c362a3de5b63c48c69c6ca589ec37ee2ae90d05bd8f`  
		Last Modified: Tue, 10 Nov 2026 20:14:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649c5203f782a7550fee1af334a616c1a26c5515abc8f8888cc885db726670d4`  
		Last Modified: Tue, 10 Nov 2026 20:18:10 GMT  
		Size: 23.7 MB (23685930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:19cbd8c386f01901745768c25459bc5cc1fd6fc3b5a27beb0b314e873981d4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.3 KB (405304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9f7016bfdf83ce6dfcaa8fbf8c176d324276bda3b630aa0412f7ad55731d0b`

```dockerfile
```

-	Layers:
	-	`sha256:a89eeedcc808ce1bc0088d928f212e2ab0bc4be1364a1f25ff80dafef4794a73`  
		Last Modified: Tue, 10 Nov 2026 20:18:08 GMT  
		Size: 374.1 KB (374131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f398d4a3241e6821f6bef4bed2282a1009ef3a0cc02bccaefe816afc833be5aa`  
		Last Modified: Tue, 10 Nov 2026 20:18:07 GMT  
		Size: 31.2 KB (31173 bytes)  
		MIME: application/vnd.in-toto+json
