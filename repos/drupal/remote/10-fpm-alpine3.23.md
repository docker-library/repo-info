## `drupal:10-fpm-alpine3.23`

```console
$ docker pull drupal@sha256:4e2670ef95d5c664140cb42c8b6ac6acd9a961589f5a0d0d96d1ea04378d5668
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

### `drupal:10-fpm-alpine3.23` - linux; amd64

```console
$ docker pull drupal@sha256:40d449ae2b812f1f005e427161b0977ee1bd57bb5fbcc4fb13d6633e5e0aebb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66827496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee54e8d78f2858ddb484dd2e4f8eca28a2989f760180fc4ec635c753fb54aca`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:16:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:16:51 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:16:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:16:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:16:52 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:16:52 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:23:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:23:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:22 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:26:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:23 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:26:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:26:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:26:24 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:26:24 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:26:24 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:26:24 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:26:24 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:20:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:20:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:20:35 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:20:35 GMT
ENV DRUPAL_VERSION=10.6.17
# Thu, 17 Sep 2026 23:20:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:20:35 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:20:41 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:20:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cb236e305c7a3a09a1394809e9a9c8ddf911251470bec14a2b0e52da65a895`  
		Last Modified: Thu, 17 Sep 2026 21:20:02 GMT  
		Size: 3.5 MB (3487964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f363bde3e1857fb3a4a11367cc8b9e7515d27f9101b217cf91a42441b26232f5`  
		Last Modified: Thu, 17 Sep 2026 21:20:02 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e617ba8a9939e1b94f093ad458a8ca9398c9e465ffde7a2a6226a30818e1f2`  
		Last Modified: Thu, 17 Sep 2026 21:20:02 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fde5dfc6b74b15757c4dfb5f18851e81e87bf031e17a188c080c0e5474ac1`  
		Last Modified: Thu, 17 Sep 2026 21:26:31 GMT  
		Size: 13.8 MB (13782395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b41077d859f5dc1c11970f192305b837d38e0e64d916a1312d1c1b8718a36a`  
		Last Modified: Thu, 17 Sep 2026 21:26:30 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10eca5a94ff32fa1cf7ccf1cf8319782140d4776118e96751049096f9a1dd8b`  
		Last Modified: Thu, 17 Sep 2026 21:26:31 GMT  
		Size: 15.3 MB (15348324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2149cae16d562fddc3038b00f16f55156c43f644a3eec5698df6dd1733714857`  
		Last Modified: Thu, 17 Sep 2026 21:26:30 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1cda9bcb754bc87bbd08f7eb928e41b6d017be426bb2d422eb202c5bfe9402`  
		Last Modified: Thu, 17 Sep 2026 21:26:31 GMT  
		Size: 22.4 KB (22364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee06171d277309d3e3dd77de57bf86916ad59963af4b8f29599cd1ed6d37741a`  
		Last Modified: Thu, 17 Sep 2026 21:26:31 GMT  
		Size: 22.4 KB (22376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c168cca53c6313a2d3ae2e44b791d1dcd404717a23ea5f1c8a298f7f9b7bceb`  
		Last Modified: Thu, 17 Sep 2026 21:26:32 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f7d218c42367ea4ae89c3d2db80d26083b2248924165e14eae5f975062ea0b`  
		Last Modified: Thu, 17 Sep 2026 23:20:52 GMT  
		Size: 7.4 MB (7426885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a2891667aa2b667cabe4cbe23eaa68adea455ef2ae24633e93304993820036`  
		Last Modified: Thu, 17 Sep 2026 23:20:52 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeea025e1850c21f899dbde43a0cd66ff5ec6375395694a60184fe42f11a9590`  
		Last Modified: Thu, 17 Sep 2026 23:20:52 GMT  
		Size: 833.0 KB (832974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14788e6b4a6a19269050533847304265c7af31cdb9466a6643efc9dbe0f04161`  
		Last Modified: Thu, 17 Sep 2026 23:20:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419267ebf5295225c66eed0a2e3aa79cf55d18ce95a61660e1f4f39afef0f543`  
		Last Modified: Thu, 17 Sep 2026 23:20:53 GMT  
		Size: 22.0 MB (22041898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:a4241b9284f3f9ac4f9d22026319bb7acccdb43137bfd0f2e183d9776c374125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 KB (397841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ee1fd47b3d7bc9cb89e7a67f54ac17679b3523abe03a9ab6e612fd5004cb51`

```dockerfile
```

-	Layers:
	-	`sha256:4eeb08ec05405956e4116f663de162f1320f8f87ff1bceebd70d8e8ffed77793`  
		Last Modified: Thu, 17 Sep 2026 23:20:51 GMT  
		Size: 363.8 KB (363822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4690bd5f891d80faebd9bf0ea47bdd3b4b8ab6a0c96eadfc9dbffa39ded5c60f`  
		Last Modified: Thu, 17 Sep 2026 23:20:51 GMT  
		Size: 34.0 KB (34019 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull drupal@sha256:0cd7c344a719af9e211c067770eb9f11bfd52ff025dfc1e7453a5c2eb9fc613d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62254459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d5d864ad4e2e6e4fbf5c10d3f743edf5ccd7658baa3622b52ccc4640a358dc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:31:01 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:31:01 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:31:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:31:01 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:31:01 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:34:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:34:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:37:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:37:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:37:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:37:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:37:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:37:35 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:37:35 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:37:35 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:37:35 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:37:35 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:19:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:19:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:19:38 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:19:38 GMT
ENV DRUPAL_VERSION=10.6.17
# Thu, 17 Sep 2026 23:19:38 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:19:38 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:20:13 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:20:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872899745cebb83335424fcc4c590ca7831e5ab1e7047feea0764a640ae92a34`  
		Last Modified: Thu, 17 Sep 2026 21:34:17 GMT  
		Size: 3.4 MB (3444665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41b016a09a97af525c6726a3cb5270edf6c09ffa65484776ca6c149ca2fb5fb`  
		Last Modified: Thu, 17 Sep 2026 21:34:17 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a563f368c21cb7850a2bd4aa3c61cd35d08af7e04aa5392c5f274cd534d968`  
		Last Modified: Thu, 17 Sep 2026 21:34:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0567bc766797fac5476cf2e380dc3e1f6cce97a4be0801bc7844546946458e`  
		Last Modified: Thu, 17 Sep 2026 21:37:41 GMT  
		Size: 13.8 MB (13782416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f836d65ebf27c5b16f1eda9c8bb34aeedcab33fe1d6b7e3e8ff65d10a394e771`  
		Last Modified: Thu, 17 Sep 2026 21:37:40 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a38f15ea576627c831e792087686d04e432b64e0755401ed7081e3af161ee3`  
		Last Modified: Thu, 17 Sep 2026 21:37:41 GMT  
		Size: 13.8 MB (13790205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a272b06feabdcd017091221121378ff91dfb7445cf2a9e715bcaaa94ef36f43`  
		Last Modified: Thu, 17 Sep 2026 21:37:40 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f7b93f7212b5b76f7723c42f224c164c8c371b1e968db66384e1abf5466df7`  
		Last Modified: Thu, 17 Sep 2026 21:37:41 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed99a2ee1437c3eb3ae3b7e1f3048224964f46e0bcbd731adebabd80ae398263`  
		Last Modified: Thu, 17 Sep 2026 21:37:41 GMT  
		Size: 22.2 KB (22190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d7aae987533d3a0b7dffdaf33b4c7f52208a63b89a550542e894170b2a912e`  
		Last Modified: Thu, 17 Sep 2026 21:37:42 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e275894a9dd0aa74c4c3884087ec7e2a6dffe3d1aa2272e8ba7064c8fea4ad5`  
		Last Modified: Thu, 17 Sep 2026 23:19:55 GMT  
		Size: 4.7 MB (4749178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba0ba38ce313a539863d19c36a25f2ba26e0c5f04a5d8be4c88f900905ebe58`  
		Last Modified: Thu, 17 Sep 2026 23:19:54 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675fdfc49c98c5d12d6b1ca6b0fb6039f2eca4e7107d78377fd20c9180131dca`  
		Last Modified: Thu, 17 Sep 2026 23:19:55 GMT  
		Size: 833.0 KB (832976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609b75c3ecb589b7df8b3871f767fdec3638e18de33f3b90c1e7ecd3678582ed`  
		Last Modified: Thu, 17 Sep 2026 23:19:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997c8a9b7a8e8383a62bc03f109882c470401b0a4fd57f7d13d9250f974dbe82`  
		Last Modified: Thu, 17 Sep 2026 23:20:21 GMT  
		Size: 22.0 MB (22041915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:d781fd0bba7491d4f177c4d3b5305861527a5711bc9ce7216697024535529d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0807e411aef9a3ba789f46ddde8938dc5afb025a2dfd7c3ceba3369fdad3a3f5`

```dockerfile
```

-	Layers:
	-	`sha256:39cf00e89be198574d5c5ecf247de6354be6c69f7ed9b13824fa2408f1a1292b`  
		Last Modified: Thu, 17 Sep 2026 23:20:20 GMT  
		Size: 33.9 KB (33946 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull drupal@sha256:73f600a4e3de8acdeb038fdbc80988f1ca11f026ed3507b36b94e344e2b4903c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61816986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8822b6b8f06489fddb9d8b75b326109eaec67e57a9787574c99e36030453eb4c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:29:38 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:29:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:29:38 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:29:38 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:33:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:33:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:36:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:36:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:36:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:36:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:36:05 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:36:05 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:36:05 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:36:05 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:36:05 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:23:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:23:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:23:50 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:23:50 GMT
ENV DRUPAL_VERSION=10.6.17
# Thu, 17 Sep 2026 23:23:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:23:50 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:23:57 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:23:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28269077c25d7b52ce7cec27541b823b4cefc609e721d995974161ad8993dcf6`  
		Last Modified: Thu, 17 Sep 2026 21:32:51 GMT  
		Size: 3.3 MB (3253708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e0af4242d0c9b6ca309da2035895a4bf14b25a5c8a90016fa49aee49df1618`  
		Last Modified: Thu, 17 Sep 2026 21:32:50 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2237bd84d271e83ba8ea5ada632438fed62ec0464c28524d627dcb78e13ded3b`  
		Last Modified: Thu, 17 Sep 2026 21:32:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11d2dfa3f798280089e9a299fec9d85bf83f32e10845bcb9ebb31db7d2ac2cd`  
		Last Modified: Thu, 17 Sep 2026 21:36:12 GMT  
		Size: 13.8 MB (13782445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6babf8122d0c24d127d2accb33d9d256a92514600cd5cfaebb3b7be13c0e59`  
		Last Modified: Thu, 17 Sep 2026 21:36:11 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad6d5e00195952ee958540ded820f39b6ee0f36af92b6fbf13fff7688816af8`  
		Last Modified: Thu, 17 Sep 2026 21:36:12 GMT  
		Size: 13.0 MB (13007490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f236fa4dd498945e5a9a261b97c4d75ccc8aa024da9806eb169db7db7eab048`  
		Last Modified: Thu, 17 Sep 2026 21:36:11 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9a17ff95843727b2e56323f1d0bdace93ac9282bcc39027e740044898e363e`  
		Last Modified: Thu, 17 Sep 2026 21:36:13 GMT  
		Size: 22.2 KB (22189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce29de236c59b108ddd3cb58c8a4e884c1918c84a33b3e8ca1a5a6fe9321afac`  
		Last Modified: Thu, 17 Sep 2026 21:36:13 GMT  
		Size: 22.2 KB (22206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c93cceb395ba2ece89217f161cfef74d86b31555a27e53bd3674574bb19843`  
		Last Modified: Thu, 17 Sep 2026 21:36:14 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74392b25c29f8120045bc5b967b00c7f16aa3669558f6c3bdec6fc6fd0c45943`  
		Last Modified: Thu, 17 Sep 2026 23:24:11 GMT  
		Size: 5.6 MB (5577366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3f4a950fb91f2e918b99433a26c246f708c427e8f8b6d5bafd03a695f02317`  
		Last Modified: Thu, 17 Sep 2026 23:24:10 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41593b0704bdb091ebb508cdd65e85cb2e04d315d1849a8385162a355c7d5f58`  
		Last Modified: Thu, 17 Sep 2026 23:24:10 GMT  
		Size: 833.0 KB (832976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54311c4bfd85857b6559b2e8632996ab64b0b25278f7679fcea3850d6b0d3f0`  
		Last Modified: Thu, 17 Sep 2026 23:24:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159497740a19af34fe73b77cffeeb491ba60a78d8f03ae90fa70a4c99a7072ea`  
		Last Modified: Thu, 17 Sep 2026 23:24:12 GMT  
		Size: 22.0 MB (22041879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:1f43ba274ef279b7f00062418118e31d77b7f66113e5a9e1444cf52e2846fb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.4 KB (397387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c10918793633a2a8175c427a8abc7e8cd38e4c5b117710aabca10598645c80`

```dockerfile
```

-	Layers:
	-	`sha256:156d89071d437383c44c1f6b896151c626e27fb024496a770ae38f1d58d3cbbf`  
		Last Modified: Thu, 17 Sep 2026 23:24:10 GMT  
		Size: 363.2 KB (363224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f24610bfcb149b579c9e8cd72baf0b8eb63db50925d4df7f78123a0eccff16f`  
		Last Modified: Thu, 17 Sep 2026 23:24:10 GMT  
		Size: 34.2 KB (34163 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:d6fdbd76857680a5380a16dc25f732629c2585d329e06281188e5257116573b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66451854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d13ade09651275679417587d7f87e4c7fa8ff67f35c2a756e55174db796b35f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:16:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:16:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:16:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:16:16 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:16:16 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:23:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:23:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:26:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:26:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:26:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:26:56 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:26:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:26:56 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:26:56 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:26:56 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:23:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:23:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:23:13 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:23:13 GMT
ENV DRUPAL_VERSION=10.6.17
# Thu, 17 Sep 2026 23:23:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:23:13 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:23:19 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:23:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010016e8c2c27ea7236f91f00c3103635ea1426ffe05d3426a2fbcb49b8650ac`  
		Last Modified: Thu, 17 Sep 2026 21:19:43 GMT  
		Size: 3.5 MB (3496081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3485dd310d8099e2d73de32145dffe3a7b4ea6207e7552d73b70d765da845d2e`  
		Last Modified: Thu, 17 Sep 2026 21:19:43 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ea9dea8671e4aee278b279670946b309dc0de082d11be0f58a3da06c397a4e`  
		Last Modified: Thu, 17 Sep 2026 21:19:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a600ae84a3f1956a0f63d2cb6facee2b7785016e99b15c8dad53f7d0fda95ae5`  
		Last Modified: Thu, 17 Sep 2026 21:27:04 GMT  
		Size: 13.8 MB (13782443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910402492d125c2b6043b1679d1cb86777a92d3486d7a3667c38d61561dee458`  
		Last Modified: Thu, 17 Sep 2026 21:27:03 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575f258fe92dc5f9c21914e2e30ab0e414a4083d88e1d19c77d734f5df1b4b8f`  
		Last Modified: Thu, 17 Sep 2026 21:27:04 GMT  
		Size: 14.9 MB (14857010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8d324eb14dd5c61671205904df4e1f04db9c26ec45a74dc0d753d8babe7109`  
		Last Modified: Thu, 17 Sep 2026 21:27:03 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9dbc7560bd243ce78a96264fcae356f789509aa695a2b5602cd2a62905e0d30`  
		Last Modified: Thu, 17 Sep 2026 21:27:04 GMT  
		Size: 22.2 KB (22196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3277f65a4225e8ed8866291e306a03eebdf634fd663ba747b79455a449e8d2bd`  
		Last Modified: Thu, 17 Sep 2026 21:27:04 GMT  
		Size: 22.2 KB (22210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1582a56b5b5f9addb98407ea2ece6f3658085c33df66a0abfb9d9862558baa`  
		Last Modified: Thu, 17 Sep 2026 21:27:07 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f66a6521d31db25ff5098d13241a27343b3c6853d5a0891ca96420f3a31fcf`  
		Last Modified: Thu, 17 Sep 2026 23:23:33 GMT  
		Size: 7.2 MB (7196538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325a624e9c73c942516b0250f321de9ea127f465339671807e0747547dc84faa`  
		Last Modified: Thu, 17 Sep 2026 23:23:32 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6589c5c33b6668919cce86f3ea3dafd89cdaa1006101af714ff4cd380ee0a1`  
		Last Modified: Thu, 17 Sep 2026 23:23:32 GMT  
		Size: 833.0 KB (832977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9f98cd24c9fa17f27e372e7d123cf45a11c0df7ca160762be6010b71c82124`  
		Last Modified: Thu, 17 Sep 2026 23:23:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ee5441ab6934ee31ecb043a9f4ae757eabfe88728a2cce23f843d99972e964`  
		Last Modified: Thu, 17 Sep 2026 23:23:34 GMT  
		Size: 22.0 MB (22042533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:8d48a065259e18c7f036320c42016e4c8e75ab10d6ca9f56e4cab890ab2899cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.5 KB (397454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08674b02f2d80ea813cb66df81edee0cff921de2acf9fc1bd25dd2c6fc45c9b6`

```dockerfile
```

-	Layers:
	-	`sha256:65c2427226add1ce96f30d236c2cdabc0f26d30c435c532b99e407f09719a783`  
		Last Modified: Thu, 17 Sep 2026 23:23:32 GMT  
		Size: 363.3 KB (363252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8e10e99bf1bd31a7d83c0caab4eaea98ff0c9ead21eab4bbc1309c8b7b6227c`  
		Last Modified: Thu, 17 Sep 2026 23:23:32 GMT  
		Size: 34.2 KB (34202 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; 386

```console
$ docker pull drupal@sha256:a3ebaafc6779f2774c3624a3abf36dd682453b955b80dfcb87114009e2bdda7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65905966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7966d887f0f39558fbab1af050ec53210456d6f40fa4253daa2e7673aa1438f7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:15:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:15:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:15:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:15:54 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:15:54 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:23:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:23:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:26:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:26:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:26:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:26:34 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:26:34 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:26:34 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:26:34 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:26:34 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:19:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:19:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:19:54 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:19:54 GMT
ENV DRUPAL_VERSION=10.6.17
# Thu, 17 Sep 2026 23:19:54 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:19:54 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:20:26 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa26de9442a7c439fa440e0b7574b1edf0eea732ccd90d48431e9deb8ddf03aa`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 3.5 MB (3519947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a365bd92f457d5390bf1cf1d915569571f8d1855832ae10c5b94f430457eaf`  
		Last Modified: Thu, 17 Sep 2026 21:19:04 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ddd7d7d1258b6e4a815b14aaba6ef5ef81a5aacd2ea104612bdac866505d2c`  
		Last Modified: Thu, 17 Sep 2026 21:19:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c615166d0131f6813239a0c7e5eed0ad4bbc68b4207296da6ac50c31e031f4d`  
		Last Modified: Thu, 17 Sep 2026 21:26:42 GMT  
		Size: 13.8 MB (13782404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83c4833287c74a72d1a42b5cb62d7044bced2eb90d6a11473439ed6ffc7636c`  
		Last Modified: Thu, 17 Sep 2026 21:26:41 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0471fb41739e8967cea865c6a066ae3fb336719dfed54e72fe709b7626c2d200`  
		Last Modified: Thu, 17 Sep 2026 21:26:42 GMT  
		Size: 15.7 MB (15665205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570dc9b2bf13d007d6c716f9fada3cb5e3c74cddba3f55b54e0902ebfededbd9`  
		Last Modified: Thu, 17 Sep 2026 21:26:41 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de218de5ec033bdd6934e74adf1af8bf78ed79a8fffcdbe66514dc54e343bd3c`  
		Last Modified: Thu, 17 Sep 2026 21:26:42 GMT  
		Size: 22.4 KB (22369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb890be8ccea922a1a84a1b2e5036fe23bf494629d5af89fae7f9e6f3cf461f4`  
		Last Modified: Thu, 17 Sep 2026 21:26:42 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d1d3377de3ebb20f38b64a388fb853c5479e7306bcc8e65dfd17c2bcafd02f`  
		Last Modified: Thu, 17 Sep 2026 21:26:43 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744940e72038b3e8cdf7048161b2fea9f93b8e3616f663b9823429978a6d6dfc`  
		Last Modified: Thu, 17 Sep 2026 23:20:12 GMT  
		Size: 6.3 MB (6329820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369b9146ffc5c8c252e532258b8ce5b1b821988550ab72dbafc2c850ecea70cc`  
		Last Modified: Thu, 17 Sep 2026 23:20:12 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ccd077e44feb75e4f1c0f01d90caadd430964c17edeeb2c1f688bcefc01221`  
		Last Modified: Thu, 17 Sep 2026 23:20:12 GMT  
		Size: 833.0 KB (832974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd77b94d3d9a42804777a1978f953b41ae26c000d1e285c3d7b30f1528b98eec`  
		Last Modified: Thu, 17 Sep 2026 23:20:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47c5654e519075c244be4b155b8893525074f777360a80b90d53ea02bf7c42d`  
		Last Modified: Thu, 17 Sep 2026 23:20:38 GMT  
		Size: 22.0 MB (22041942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:ebb94a78748cc6928a5b3c718533a3cbf0a7b71434c3687af6c18aee9cdf4e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 KB (397752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aca32d36174e5fa497cdb3972267c6b6df150afe7fd1b4c98d543f079b50bc0`

```dockerfile
```

-	Layers:
	-	`sha256:9cc25f122d125ef62431e8c740fd19099cb6c501e046e62cd83b7fd126df2983`  
		Last Modified: Thu, 17 Sep 2026 23:20:37 GMT  
		Size: 363.8 KB (363787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70573246e3ef5245191d1a3fc3e2f3de9cdf9f9aaa3c31e06eecfa3a21beae0f`  
		Last Modified: Thu, 17 Sep 2026 23:20:37 GMT  
		Size: 34.0 KB (33965 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull drupal@sha256:59019f62022764a1183587c8155908a409d257431536c66c9818ff0d63338bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67215716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c41ef4b6cea149c5943a91b4ce71dc2c1d68e70cb235662e388ab4e7d247027`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:48:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:48:43 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:48:45 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:48:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:48:45 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:48:45 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 22:36:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 22:36:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:45:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 22:45:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:45:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 22:46:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 22:46:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:46:00 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:46:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 22:46:01 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 22:46:01 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 22:46:01 GMT
CMD ["php-fpm"]
# Fri, 18 Sep 2026 03:18:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 18 Sep 2026 03:18:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 18 Sep 2026 03:18:22 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 03:18:23 GMT
ENV DRUPAL_VERSION=10.6.17
# Fri, 18 Sep 2026 03:18:23 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 18 Sep 2026 03:18:23 GMT
WORKDIR /opt/drupal
# Fri, 18 Sep 2026 03:27:24 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 18 Sep 2026 03:27:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcca1f21adebc7b70226e26f666d01d92bed5c2048f2c559294b62f9dcc3c8e2`  
		Last Modified: Thu, 17 Sep 2026 21:52:53 GMT  
		Size: 3.7 MB (3664459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015121b4b13a4c9b4396c78ddd55f052a3f79530fb920338de4a571764d54111`  
		Last Modified: Thu, 17 Sep 2026 21:52:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567858dda9a912aae821dd0e230794fa60c510e5cf25154bd77b466aba687664`  
		Last Modified: Thu, 17 Sep 2026 21:52:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b727a37f5b4c744b2c0a66ffb5b4e5c9490c3a9f342ebcb49f68b8547924d2`  
		Last Modified: Thu, 17 Sep 2026 22:42:14 GMT  
		Size: 13.8 MB (13782403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547eca4005dbf34afabd999f13c075dff02246d767b7f08c5883c172387dcedf`  
		Last Modified: Thu, 17 Sep 2026 22:42:14 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669d78a14bb5ad2fb563e563d5be9701f0427c4b517d690f5eb9eb5afdbeb911`  
		Last Modified: Thu, 17 Sep 2026 22:46:14 GMT  
		Size: 15.9 MB (15897075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52217d9d2faad81b9a89ad0d083739e60107ebafd71761c805953ffc39044bf9`  
		Last Modified: Thu, 17 Sep 2026 22:46:14 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc7ec17b57583abb1b44668a785eb9d616350209fa86d84fdb1f386b3d4eea5`  
		Last Modified: Thu, 17 Sep 2026 22:46:14 GMT  
		Size: 22.2 KB (22192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22d9d616307e21646b691c02c7109c14e70f4f68a791a8d77d63aa0fb61b86b`  
		Last Modified: Thu, 17 Sep 2026 22:46:14 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b9ff9cfa1151c061b349d339b08ae2b50f07f1dc9f0e2e12a094f076e38c83`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9f64b3f882f251e47e4b4e47000c75f8a76eeed3f9145bc525ab9108e5cf41`  
		Last Modified: Fri, 18 Sep 2026 03:19:21 GMT  
		Size: 7.1 MB (7123817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0517be8ff08c8aacf7a666956572ea882a0a5c0cef16fbdaddb8037e41ea22`  
		Last Modified: Fri, 18 Sep 2026 03:19:21 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf38c60ef8de17053f4ecba32a92fbbf6deef141429e95de5db08c589bf58a1`  
		Last Modified: Fri, 18 Sep 2026 03:19:21 GMT  
		Size: 833.0 KB (832977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb32d286fb9552429e9ac8f1319c4d88fd87310301c95a378a69f19c27100ff5`  
		Last Modified: Fri, 18 Sep 2026 03:19:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837203569e588fcf398221a28ce332527eeb41fca22222ff18d19988aad5a281`  
		Last Modified: Fri, 18 Sep 2026 03:27:51 GMT  
		Size: 22.0 MB (22041989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:083b3c914f01cf6a68be880c71502eadd27354bae88a6ebf6f562a20e9e0b77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.3 KB (397306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b7dd6e734669aac6e9a0b768fad37a9d93685a08c59dd22368c692a77ac7e6`

```dockerfile
```

-	Layers:
	-	`sha256:d22f26487e11257e1187e885aadd5f0198f48c692196205748503fbc024037da`  
		Last Modified: Fri, 18 Sep 2026 03:27:50 GMT  
		Size: 363.2 KB (363217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1f185375dd29184090f0f17aca42c2030cd733b9fa7520b81477f00395f1a29`  
		Last Modified: Fri, 18 Sep 2026 03:27:50 GMT  
		Size: 34.1 KB (34089 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; riscv64

```console
$ docker pull drupal@sha256:a2170b299b7818d0bcf7837f6f263ccbb8aea371ce153b53db47a6f047e8f2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66821304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d99c4d6460f4add8d9fc524817d1cfa210d566970534dd04d345faa1f0c2a7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 22 Jun 2026 21:37:25 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 22 Jun 2026 21:37:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 22 Jun 2026 21:37:25 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_VERSION=8.4.25
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Fri, 28 Aug 2026 22:25:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 28 Aug 2026 22:25:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 00:22:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 29 Aug 2026 00:22:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 00:22:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 29 Aug 2026 00:22:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 29 Aug 2026 00:22:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 29 Aug 2026 00:22:53 GMT
WORKDIR /var/www/html
# Sat, 29 Aug 2026 00:22:54 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 29 Aug 2026 00:22:54 GMT
STOPSIGNAL SIGQUIT
# Sat, 29 Aug 2026 00:22:54 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 29 Aug 2026 00:22:54 GMT
CMD ["php-fpm"]
# Sun, 30 Aug 2026 13:54:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sun, 30 Aug 2026 13:54:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 03 Sep 2026 22:53:33 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 22:53:33 GMT
ENV DRUPAL_VERSION=10.6.16
# Thu, 03 Sep 2026 22:53:33 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 03 Sep 2026 22:53:33 GMT
WORKDIR /opt/drupal
# Fri, 04 Sep 2026 02:08:16 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 04 Sep 2026 02:08:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb42bea68a2af79d3ab5c7d97b0d79df81a465d93a9d7af266e102c3724bb82`  
		Last Modified: Mon, 22 Jun 2026 22:40:47 GMT  
		Size: 3.6 MB (3605582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88f0e7707ae583d6042075063a4c05b2191916232960e9aa4f37a61bde64b0a`  
		Last Modified: Mon, 22 Jun 2026 22:40:46 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793f7413b68510356f0ff3df3c37f19645827c4d4847cff60fbdcf56de075be`  
		Last Modified: Mon, 22 Jun 2026 22:40:46 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2eb516a68ea3bb1460ce3b9c6f0efcbee9d6b893aac92a04ae2fe4aa1d7392`  
		Last Modified: Fri, 28 Aug 2026 23:24:32 GMT  
		Size: 13.8 MB (13782389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5234bf8a2b700d7df8a5b4de7b3deb415dadeda6303ba50f1c6d7a0e9015e2`  
		Last Modified: Fri, 28 Aug 2026 23:24:28 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d700ae0ec02acf857ee7d5867403a68affb9ec750068bea9435d67855dafb33`  
		Last Modified: Sat, 29 Aug 2026 00:23:50 GMT  
		Size: 17.9 MB (17859885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d007a568fc4ab25d5a7918c449b227d2ed45b11b1a7dd9ca3c0e73ff90dff6`  
		Last Modified: Sat, 29 Aug 2026 00:23:48 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c4f4b8815a5e50093ffd3accc43e920f7862b635a70dbbd9dd86da328a1aab`  
		Last Modified: Sat, 29 Aug 2026 00:23:48 GMT  
		Size: 22.2 KB (22248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9894bf04d02a1f5ef4a93010be707d1e32b8ed5e2ae2ae8c0057c3bf27a659`  
		Last Modified: Sat, 29 Aug 2026 00:23:48 GMT  
		Size: 22.3 KB (22268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d3679effc5da525b68346b4f34e09413f3cb822c8f00eb0f26806c15dbaa72`  
		Last Modified: Sat, 29 Aug 2026 00:23:49 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577388f443a3119e9a2d7c642b09d09335952bf59dc916d69f3bf202081b5b33`  
		Last Modified: Sun, 30 Aug 2026 13:57:47 GMT  
		Size: 5.1 MB (5066183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcebae5b418b5a2ac8d27a77acc869e5e6b291a12230c0c62079d4ce743e9418`  
		Last Modified: Sun, 30 Aug 2026 13:57:46 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45c2c9363b42cb267901ecdac01ac442f377942f11b01ac26381f2983ec8e4d`  
		Last Modified: Thu, 03 Sep 2026 22:56:57 GMT  
		Size: 833.0 KB (832978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4d06084db2482b229ec1850d394cbcf3462db1a16680c3f1ee9bd6c50698`  
		Last Modified: Thu, 03 Sep 2026 22:56:56 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fbacf369003b0ab92880cf731d5b44f1e367f0b9f4c57801ee8ffa1f19b966`  
		Last Modified: Fri, 04 Sep 2026 02:10:46 GMT  
		Size: 22.0 MB (22042709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:3dc7706776681097d280219c0d829b56cc3748cfd1f683b1f2622f7ab3ac2a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 KB (396008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e9ce18d9003f3b30bc858c9fe46d536a991e72589ca0fae05e3f81f21d2e99f`

```dockerfile
```

-	Layers:
	-	`sha256:8d94913578dbfd392580d8a0d10cfc85e6635edeb68dd5289bd640ed91dead03`  
		Last Modified: Fri, 04 Sep 2026 02:10:42 GMT  
		Size: 361.9 KB (361919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b805219d2afd67fea5cdbf40770ea39f82488bc5b6b3a2228c5e3e03e5c3750a`  
		Last Modified: Fri, 04 Sep 2026 02:10:42 GMT  
		Size: 34.1 KB (34089 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; s390x

```console
$ docker pull drupal@sha256:4de4f830d1fd1690e9619fa3738499f8ffb204cd789ace75a84c8f328ce38824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66013950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8205da30361cd441f2ab4c36a0df6db82650f6818cb7e58046f955239852f2a7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 22:28:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 22:28:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 22:28:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 22:28:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 22:28:23 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 22:51:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 22:51:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:55:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 22:55:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:55:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 22:55:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 22:55:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:55:14 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:55:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 22:55:14 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 22:55:14 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 22:55:14 GMT
CMD ["php-fpm"]
# Fri, 18 Sep 2026 02:44:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 18 Sep 2026 02:44:55 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 18 Sep 2026 02:44:55 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 02:44:55 GMT
ENV DRUPAL_VERSION=10.6.17
# Fri, 18 Sep 2026 02:44:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 18 Sep 2026 02:44:55 GMT
WORKDIR /opt/drupal
# Fri, 18 Sep 2026 02:47:03 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 18 Sep 2026 02:47:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee22d8e553da0681cb93b0e04130928aae96b56c6e394e370cb1e725cc224658`  
		Last Modified: Thu, 17 Sep 2026 22:32:42 GMT  
		Size: 3.7 MB (3686037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a911f794ec381c74e1ec0ce043c5ba5ea7bab0418eb1771e49c51444494710`  
		Last Modified: Thu, 17 Sep 2026 22:32:42 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052989a3b7fff863849e56ea606981a437ddcd24f64f0f1a2060d81bfee48fb2`  
		Last Modified: Thu, 17 Sep 2026 22:32:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55b65865436c48b1bbf1f1eea11aa67d8860754f6067ea981908327d4939446`  
		Last Modified: Thu, 17 Sep 2026 22:55:24 GMT  
		Size: 13.8 MB (13782410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fd8cbf7661618cf8722d5a2f9cd43c3e7f5e7775f46c4194bb70e40818c0c6`  
		Last Modified: Thu, 17 Sep 2026 22:55:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392907a80ae96ab525397c5d5c18afa5898feb336cf5222f4a09ab9c62d05c0c`  
		Last Modified: Thu, 17 Sep 2026 22:55:24 GMT  
		Size: 15.1 MB (15096106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eff94cc03f9dd870b101aef4f272c67f9a7f0e0feeeecd88570810a5906b860`  
		Last Modified: Thu, 17 Sep 2026 22:55:24 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41953c20edb36afd0c7e7b9a8ab83577dfab0e76d9edddcbaee62d8efbfeb7b1`  
		Last Modified: Thu, 17 Sep 2026 22:55:25 GMT  
		Size: 22.2 KB (22189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8644d7e8dbe66999279893a7e85935db0bddbdb1dcdcf6a1d56d3c3b8674bce`  
		Last Modified: Thu, 17 Sep 2026 22:55:25 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c645e1ae93ba6cb7b5d1e68c50da8dd4055a9988abfa9a6fc0f68e2b65749ded`  
		Last Modified: Thu, 17 Sep 2026 22:55:26 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcf031e4d0d1ded0e09516ecca3300ed3fa967a3f2b9880aee63697b980fb00`  
		Last Modified: Fri, 18 Sep 2026 02:45:19 GMT  
		Size: 6.8 MB (6803126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0ac771e2057a5e19d8efce3e2c975f53616b5f5af860f67c62a41029971468`  
		Last Modified: Fri, 18 Sep 2026 02:45:19 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d8fdb23c5d19064e7a8e903baf73448606803734f7f7f58e2e8275c3662bdb`  
		Last Modified: Fri, 18 Sep 2026 02:45:19 GMT  
		Size: 833.0 KB (832976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806e4f9484d58d35cae0387ba551a7e466e9eaa572b5eeb38551679ba928b665`  
		Last Modified: Fri, 18 Sep 2026 02:45:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb27dab7f34501ed296942290c92b0485c7830acc9f42145eefc3ab57103d8cb`  
		Last Modified: Fri, 18 Sep 2026 02:47:20 GMT  
		Size: 22.0 MB (22041832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:e5ce1c8bdfbb12589014fa661329fb18e1a725585185aad19341bc988fb6c23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.2 KB (397190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95628ce975cc4efc746aa245606fe0a560efdebf457335a6a11cfe770160b9b3`

```dockerfile
```

-	Layers:
	-	`sha256:dff3e60540784719203067dae2ce4a6ee9c00fbf968090f6eef693c06ffc839a`  
		Last Modified: Fri, 18 Sep 2026 02:47:19 GMT  
		Size: 363.2 KB (363171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80863839b286be34e3d724283b7d47058c9bffa93c554e5691f8e26dbcae778e`  
		Last Modified: Fri, 18 Sep 2026 02:47:19 GMT  
		Size: 34.0 KB (34019 bytes)  
		MIME: application/vnd.in-toto+json
