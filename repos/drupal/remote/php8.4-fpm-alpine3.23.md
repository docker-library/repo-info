## `drupal:php8.4-fpm-alpine3.23`

```console
$ docker pull drupal@sha256:68c1f4e180979238c2cb795a980942433f5fee463be62dcc34820fa57b35f7e2
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
$ docker pull drupal@sha256:958d8452ea8d5501b1539a01afc66b8445b207069d4f84d0a21b9e2f3d06206e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.8 MB (68828970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3c7524839de78ef0a510b2bb3cf2bf2eb7250d38286bfd73f9a1028f6f02be`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:34:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:34:51 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:34:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:34:51 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:34:51 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:34:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:34:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:38:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:38:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:38:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:38:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:38:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:38:13 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:38:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:38:14 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:38:14 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:38:14 GMT
CMD ["php-fpm"]
# Fri, 20 Nov 2026 19:46:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 20 Nov 2026 19:46:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 20 Nov 2026 19:46:44 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:46:44 GMT
ENV DRUPAL_VERSION=11.4.13
# Fri, 20 Nov 2026 19:46:44 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 20 Nov 2026 19:46:44 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:46:50 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:46:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e051f8900cf96856005319266f9473ec5b145ae1f3f143775e14971fb3d428a0`  
		Last Modified: Thu, 19 Nov 2026 14:38:21 GMT  
		Size: 3.5 MB (3493838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc97ccdb1ce51a87465c75ca8d2f5fd63717901d6b9603ef1d5c76e188cf3c96`  
		Last Modified: Thu, 19 Nov 2026 14:38:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584ccbb4f8b836bde83de179d22bbbceca07d7c1fced564a39018464739749e4`  
		Last Modified: Thu, 19 Nov 2026 14:38:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb646ff0f936e1c2fc2794096bfaa224ddaf596ebf52850d30623dd7cb83c0`  
		Last Modified: Thu, 19 Nov 2026 14:38:21 GMT  
		Size: 13.9 MB (13934064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a0078aa512d35e8f15d0847758c0702f92a1f9502fad7ae4976f6cba4f962f`  
		Last Modified: Thu, 19 Nov 2026 14:38:22 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09cb8a6764f06bc01fd33033ded9f755201e484702cafc69821f6fca9fb54b85`  
		Last Modified: Thu, 19 Nov 2026 14:38:22 GMT  
		Size: 15.5 MB (15471266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670dbdc50f22b825efc2dfccd2ef99e5bd47068be123d863794c38c83e14972d`  
		Last Modified: Thu, 19 Nov 2026 14:38:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da016e73f148f9a9eeb1161e8d4645580521b6749568d847bc96d80b27cc49f`  
		Last Modified: Thu, 19 Nov 2026 14:38:22 GMT  
		Size: 22.3 KB (22294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1ff61bcbcbbbc1519f1c56346b4c9046bee6f9310f1c3f4d63e6a67500bf2a0`  
		Last Modified: Thu, 19 Nov 2026 14:38:23 GMT  
		Size: 22.3 KB (22301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff1096841f02fcbdee3c434c1889cf62dd86a0a524c6b7f1011c10234df290d`  
		Last Modified: Thu, 19 Nov 2026 14:38:23 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdd8ba4f601ca52e172fdb89f6348cc15450ef4a368cba7f190c58c0e6d8561`  
		Last Modified: Fri, 20 Nov 2026 19:47:02 GMT  
		Size: 7.4 MB (7428898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c671cf329808b6507875256555603199ac02cfc4f5e5f8c9f18012fb7de638`  
		Last Modified: Fri, 20 Nov 2026 19:47:02 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0e21b4b93d8f5e32895a19d363d2addc787dbfec54dae0bc1bd7d2cada827f`  
		Last Modified: Fri, 20 Nov 2026 19:47:02 GMT  
		Size: 879.8 KB (879788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3a2c558f1b945f831d3d1542d82589c75c217fce4a0fb2b94ebc7ae123b4ec`  
		Last Modified: Fri, 20 Nov 2026 19:47:02 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e79aa00a1fa6692dae2a613cd2420b7477f4d46bf87923b136ca6544050585`  
		Last Modified: Fri, 20 Nov 2026 19:47:03 GMT  
		Size: 23.7 MB (23710124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:2c8fbdfcb631461e1a494422e0c9c182a1e8e5385b94ef770a505e7674d9236d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 KB (408149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdd93709236a37d77417b6f7a9942b70a04142e6e1195cffe424d805db49daf`

```dockerfile
```

-	Layers:
	-	`sha256:44fc57bde37b27475dfc5630a4dc0b7b922aa2ce39e136b6ba6fc6a8d4da6305`  
		Last Modified: Fri, 20 Nov 2026 19:47:01 GMT  
		Size: 374.8 KB (374776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a56973299c1e68f6e5c9e6eed7c2d7443077700fad685fb44cab5820b75dd384`  
		Last Modified: Fri, 20 Nov 2026 19:47:01 GMT  
		Size: 33.4 KB (33373 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull drupal@sha256:c3f8440d61200fe076ac0dbaa6fbfafba87a9545d1bc7de8495f65dc0daaf700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64227521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aabe9cb0a3a4a19dbc15978464e158ad86ef447c737af289f0205bd2cda5979`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:52:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:52:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:52:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:52:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:52:23 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:52:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:52:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:55:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:55:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:55:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:55:30 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:55:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:55:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:55:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:55:30 GMT
CMD ["php-fpm"]
# Fri, 20 Nov 2026 19:47:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
ENV DRUPAL_VERSION=11.4.13
# Fri, 20 Nov 2026 19:47:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 20 Nov 2026 19:47:56 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:48:05 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:48:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e09dfb7accb407c16e27891643a42af425032892175efba5e55707e040bfd17`  
		Last Modified: Thu, 19 Nov 2026 14:55:35 GMT  
		Size: 3.5 MB (3454571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ff7843f856cf134442bafce011e48a7a652025d72a9b614eb8080b3a8d139d`  
		Last Modified: Thu, 19 Nov 2026 14:55:35 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daee9f67603e9ca2026923ba15dd8553c7b95ca5901970864f59eebe2d9bcced`  
		Last Modified: Thu, 19 Nov 2026 14:55:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ebae2bb6d58d75572fc8180e0364e13a8e71fc1e3e9e5defcff840d28b19c4`  
		Last Modified: Thu, 19 Nov 2026 14:55:35 GMT  
		Size: 13.9 MB (13934099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091acc0fe79876608e54c9015b4a6655fda13560dfac61cc97cf20f1d6e8b5a1`  
		Last Modified: Thu, 19 Nov 2026 14:55:36 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6f9c36e1d63aaa18a5df9c57436a290f377b1630c6c2a377ea97a5c0ad66e8`  
		Last Modified: Thu, 19 Nov 2026 14:55:36 GMT  
		Size: 13.9 MB (13881817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5619e831f6bdb019a5a3aada91661c437547731886cac7788d0c961aedb2d6c7`  
		Last Modified: Thu, 19 Nov 2026 14:55:36 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8a7884d4e0ad6d8d04a87f1cf747ce0f520893a3733a337a17cb6b60968cb9`  
		Last Modified: Thu, 19 Nov 2026 14:55:37 GMT  
		Size: 22.1 KB (22100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ab41a04c1a78692e8f985fd8c5345e9327f5c5f95a6a94ea8c0206d6552066`  
		Last Modified: Thu, 19 Nov 2026 14:55:37 GMT  
		Size: 22.1 KB (22111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49b641b4738a5f461fbbf36568d323c2380bd05e9d96e7cff5816f3c81538ef`  
		Last Modified: Thu, 19 Nov 2026 14:55:37 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a2dd6fe59a94f82e41e3182c25155a5ae3fc2a4d5b2445805e702871d15dd8`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 4.8 MB (4750557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f66fe8235b56a27a74aee52704833d2247d4d82a07af518e90a8d3aead53959`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3343d554450edc4589011788afdd22ff55e9c86257b4f44d028cbde5c87cda`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 879.8 KB (879793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67b36603d3d8941b0fd27f28145b4ef69a203de081ea5a5178817ded3b8471`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1686540f4c51b988cd177194cf722f9918f88f1ba4b636c7cd313986721f6b`  
		Last Modified: Fri, 20 Nov 2026 19:48:15 GMT  
		Size: 23.7 MB (23710413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:697c32dc10d0104d23c7509b6a729ce7f7f43978d56920e22c8200eb62c3b675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565e9b99f5f9a8a2b91c3e68bc0a1316ce49a0813ada82c94541b57cd8da50b6`

```dockerfile
```

-	Layers:
	-	`sha256:5c38af094ffa2ed8e05a3bc7cb5653d088d0789d8eb6fa5c6764a5c710ed55d3`  
		Last Modified: Fri, 20 Nov 2026 19:48:12 GMT  
		Size: 33.3 KB (33286 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull drupal@sha256:e3850a040cf890e26b6414acdbf73a206be48ed9f069a9af91cdd9ba4251706d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63784789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c317031483e63b00fa80ee93cb11456102823ee40a0cb7c1d93528d39d9ef599`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:39:33 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:39:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:39:33 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:39:33 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:39:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:39:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:42:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:42:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:42:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:42:38 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:42:39 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:42:39 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:42:39 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:42:39 GMT
CMD ["php-fpm"]
# Fri, 20 Nov 2026 19:50:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 20 Nov 2026 19:50:13 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 20 Nov 2026 19:50:13 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:50:13 GMT
ENV DRUPAL_VERSION=11.4.13
# Fri, 20 Nov 2026 19:50:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 20 Nov 2026 19:50:13 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:50:19 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c618cae048ede6ef5291e841529bf8d75b30afe8b93ab451be98fb3826f69b`  
		Last Modified: Thu, 19 Nov 2026 14:42:45 GMT  
		Size: 3.3 MB (3262114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410d23069f7558c69a269053de16ae8d4e6d6363a78d304ca804925b218c690`  
		Last Modified: Thu, 19 Nov 2026 14:42:45 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9a86f9f049229a046c1b434257ca671954d53cf01169e030bbb887628fe950`  
		Last Modified: Thu, 19 Nov 2026 14:42:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a14d6b2270e859263a1eb32669905be0753c8159be35968a4653bffa345a3b`  
		Last Modified: Thu, 19 Nov 2026 14:42:46 GMT  
		Size: 13.9 MB (13934095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c0ad6a8e879d09c9bfaf214025abcf3b9dd19bc3e69d9d4629204e58259618`  
		Last Modified: Thu, 19 Nov 2026 14:42:46 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc725be4f27fb3e2abfddc8da08ea20be7b667207d127400b8e0cf6dbb2a6cc2`  
		Last Modified: Thu, 19 Nov 2026 14:42:46 GMT  
		Size: 13.1 MB (13094742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2453db19d2aade91fbcf103b941f570b10bee360bf155ade94aa416f81e19706`  
		Last Modified: Thu, 19 Nov 2026 14:42:46 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862af65695a91bea7d273d30c1d22bb286da1a8b106e27ba8e26bd529229fbb6`  
		Last Modified: Thu, 19 Nov 2026 14:42:47 GMT  
		Size: 22.1 KB (22104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8733af872d4c5aff4c5d3e65ddbe5e02c0df0b0efd7fac2e93a98f5d2898dbe0`  
		Last Modified: Thu, 19 Nov 2026 14:42:47 GMT  
		Size: 22.1 KB (22111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176d7eecd239b2b7039f024c146c063d0a9c8d8d275a82760cbfacdd80b5f2ec`  
		Last Modified: Thu, 19 Nov 2026 14:42:48 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e168a11f474bbc17164b016477cb39e28a0932ec5efad77931ae786cff41cf`  
		Last Modified: Fri, 20 Nov 2026 19:50:33 GMT  
		Size: 5.6 MB (5578781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbd8010811b801976e4a04e66b824cfb77b213f06be48f9a7163b37c2008ff9`  
		Last Modified: Fri, 20 Nov 2026 19:50:32 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b907964eaa9fc37f145426696636543f867f03322f2ee9b84d701290f0c0fac9`  
		Last Modified: Fri, 20 Nov 2026 19:50:33 GMT  
		Size: 879.8 KB (879788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814b89e6649563992c2a5b3f3cfb308721dde02915d15258140594974db6cefe`  
		Last Modified: Fri, 20 Nov 2026 19:50:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c3ceb091b8baf31226a76d866330dc8ca647741eea567e54d4d6f6ddd6e781`  
		Last Modified: Fri, 20 Nov 2026 19:50:34 GMT  
		Size: 23.7 MB (23710415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:e71f767e64cb8b289cf9bb7a66d1af314076824696ae2a74652ab760b5401cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 KB (407663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bfa6a1443ad8dd60ae072d3a3aa2355f1b435a6fb5cbaaaa259adde344c308`

```dockerfile
```

-	Layers:
	-	`sha256:104328bf6ba247bfaf30ff21bf47b29fd8ac481066ba19c50ceaa7dd008f72e6`  
		Last Modified: Fri, 20 Nov 2026 19:50:32 GMT  
		Size: 374.2 KB (374162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6d092c3d21302d61a0d1c78632c9f6be48743e07ec0e062da1153678f8dfa5d`  
		Last Modified: Fri, 20 Nov 2026 19:50:32 GMT  
		Size: 33.5 KB (33501 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:8a9ef022fb540b23a7d4129315a9fe770ad2139fec95d1bd11d04d4821446ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68447854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce59ced537bdda771f73bb17aace76a6d3da66cde39e532190bca7482346f1af`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:35:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:35:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:35:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:35:48 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:35:48 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:35:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:15 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:15 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:15 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:15 GMT
CMD ["php-fpm"]
# Fri, 20 Nov 2026 19:47:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 20 Nov 2026 19:47:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 20 Nov 2026 19:47:54 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:47:54 GMT
ENV DRUPAL_VERSION=11.4.13
# Fri, 20 Nov 2026 19:47:54 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 20 Nov 2026 19:47:54 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:48:00 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:48:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed8f0ef212aec35395d83cb7451fb91bd0d7981a0c8358961546d1b9244e4d6`  
		Last Modified: Thu, 19 Nov 2026 14:39:22 GMT  
		Size: 3.5 MB (3506101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10c7930acae82e56190a24f0360e5cd90da258907f060dcd559b908d5806152`  
		Last Modified: Thu, 19 Nov 2026 14:39:22 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a53a54f0ac733e6ac138b6dc7029ab06edcf69a20a5c4376fa39c641a42c02`  
		Last Modified: Thu, 19 Nov 2026 14:39:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d501184d2bbeec804f84ed6433b7db0c38de033890e65c662af592fef53952c9`  
		Last Modified: Thu, 19 Nov 2026 14:39:23 GMT  
		Size: 13.9 MB (13934111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5779b0cdca9db82c9ab73f158fc9622d8bc329f0eab131c9e75cb71eda8322dd`  
		Last Modified: Thu, 19 Nov 2026 14:39:23 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abc6bfa6df4330305de8d920ce693cec900d6d124bf0f410efd2865fe7f5fc1`  
		Last Modified: Thu, 19 Nov 2026 14:39:24 GMT  
		Size: 15.0 MB (14971384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd41a44c789e83be2cd2ba91b21273ffb5c01a0cea12923eb0ac94cd9b198d4`  
		Last Modified: Thu, 19 Nov 2026 14:39:23 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70541efaa7caab6dc4b333005d1771039d9e8cffd80bce97f14d62ec1343589c`  
		Last Modified: Thu, 19 Nov 2026 14:39:24 GMT  
		Size: 22.1 KB (22130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d320e27c0b95dc7a3640dfa9455a8bd99f612b55d9bba3bdf5d417bc13eb9d98`  
		Last Modified: Thu, 19 Nov 2026 14:39:24 GMT  
		Size: 22.1 KB (22142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56501b0b0d77dc32b35a426861ba26c94cb20b526cb9117994a0b082c0dcae39`  
		Last Modified: Thu, 19 Nov 2026 14:39:25 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8946dd2bcefecd69e2d04c1b7d9f6edf413469e919e002bca265fed550eac2`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 7.2 MB (7198001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180185899c7bc6d80fbeb68df1efd1829d25b4d188911e5907af0f3aac75dcc6`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015b5243c19c5a1311de88eb4b5577dfc4935eba1c2237f59a2ff8905f93d85a`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 879.8 KB (879788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca877a3a22a73a41ff6218446aaff0cf01a29feae6e3a068de929c38de8da51`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb92a22721f80d2c87158d681b51fda9aa7d9a0d08a69f02b55b0f098494f964`  
		Last Modified: Fri, 20 Nov 2026 19:48:15 GMT  
		Size: 23.7 MB (23710173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:63c6c6b9d10020e34ebf5909a736537a9cc08a77df0b4c878dc2c71e8ea8d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 KB (407715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae63c2edcaff38256caf9e9720cd8b12e04aeffa206774aed6492183417a196`

```dockerfile
```

-	Layers:
	-	`sha256:67ff47b940f8b09b0318cbfbc329f4e4801856a5cb3d5f1c6bd58af638b476dd`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 374.2 KB (374182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d19f8abde499f243794e15e501e122bfa35cf08bce25edf685abbafd46d307`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 33.5 KB (33533 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; 386

```console
$ docker pull drupal@sha256:b23c7dbde30f509915149f336457f5d3d1e39e4884f151775682274ea2456801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67922126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00e31f7b39e1b4793166e54600a5d7ba9bda413fac42ec5e6f7086325a4c9ea`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:33:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:33:03 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:33:04 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:33:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:33:04 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:33:04 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:33:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:33:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:36:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:36:28 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:36:28 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:36:28 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:36:28 GMT
CMD ["php-fpm"]
# Fri, 20 Nov 2026 19:47:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:47:56 GMT
ENV DRUPAL_VERSION=11.4.13
# Fri, 20 Nov 2026 19:47:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 20 Nov 2026 19:47:56 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:48:02 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:48:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9805549c951d3b3c914332d6e7b7533c657a0cb2a113c6e373e860aef7d9aa8`  
		Last Modified: Thu, 19 Nov 2026 14:36:35 GMT  
		Size: 3.5 MB (3526879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58331c1d42fb67b750b27a6236f4297d0816b94782c4f69555ff64f7bf4d7fab`  
		Last Modified: Thu, 19 Nov 2026 14:36:35 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59346459478945586d3670639384baa756eb1501e8613efea55072af0cadb986`  
		Last Modified: Thu, 19 Nov 2026 14:36:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6896b8f9a301f125ec3e9513a5b42c59e7d117f212fa29f0323d13101d288870`  
		Last Modified: Thu, 19 Nov 2026 14:36:35 GMT  
		Size: 13.9 MB (13934082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1760206d3139c57b092e438495fd716885c8e51115d889992465344fd33a6215`  
		Last Modified: Thu, 19 Nov 2026 14:36:36 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64011c5ddf3b1b88b1976a1a4a7b9a619216bc115baf9098c4ee26f047584be`  
		Last Modified: Thu, 19 Nov 2026 14:36:36 GMT  
		Size: 15.8 MB (15801949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc73188c82e3cbb5c2a529127294ba665ee76b2158999b35a8caeaadee4acf68`  
		Last Modified: Thu, 19 Nov 2026 14:36:36 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2143e8576d5e43de2d8fe83b153c7918f2d98319c2ee0e533ca861750f4f2fde`  
		Last Modified: Thu, 19 Nov 2026 14:36:36 GMT  
		Size: 22.3 KB (22302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47188082d4199771997a347657d84e1a0ab8069bc80c43df0ec0a1af8592dcb5`  
		Last Modified: Thu, 19 Nov 2026 14:36:37 GMT  
		Size: 22.3 KB (22317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6ce3fe7b094e88175b30950948125d2973765c58ef5873dfffc62b30c5971e`  
		Last Modified: Thu, 19 Nov 2026 14:36:37 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc60060a4456ccce911a5faaa974be17a1b9e812a331bd706769ac2728b5d8f`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 6.3 MB (6331899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6043247407a411095c418eb53ab1028fef0a444e241336b16abcbeb03807ea`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e756ff5c6f52420aa4700ec215b70051850fbe7e61ff1fba5090ac95b8081c2`  
		Last Modified: Fri, 20 Nov 2026 19:48:14 GMT  
		Size: 879.8 KB (879789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67b36603d3d8941b0fd27f28145b4ef69a203de081ea5a5178817ded3b8471`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231367c936ba9dd75bc9dbc08290b5f082743042f38a14c29423cc8fd9c17d56`  
		Last Modified: Fri, 20 Nov 2026 19:48:15 GMT  
		Size: 23.7 MB (23710518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:6636bdc2c4385800c7e109f81beda42ce7d93c1186e0aa83fc3f1d3e0b314f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 KB (408080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e1139ff2d7eb85004f07c162b6f62c5f057b7a1321e90755199ae39d91684b`

```dockerfile
```

-	Layers:
	-	`sha256:c4ac25294a2e0c3f3369f14f66ab5a50af11da57776b1629c79ded6d584d03a8`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 374.8 KB (374751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a10124b0b1bfad41a4ad2db7b0359d1218aa5702e37b24e3fd5e7947ea16b4fb`  
		Last Modified: Fri, 20 Nov 2026 19:48:13 GMT  
		Size: 33.3 KB (33329 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull drupal@sha256:f97c4ef956473cfc42b37ee1051488758c5a0d29109076c5b0a8e0fdd56c2f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69227192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840c1bfd32a5e4a1880fadf449e00b1fc12108b2480af70755acc437892771e1`
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
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 15:37:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:37:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:45:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:45:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:45:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:45:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:45:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:45:56 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:45:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:45:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:45:57 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:45:57 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 21:26:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 21:26:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 19 Nov 2026 21:26:52 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 21:26:53 GMT
ENV DRUPAL_VERSION=11.4.13
# Thu, 19 Nov 2026 21:26:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 19 Nov 2026 21:26:53 GMT
WORKDIR /opt/drupal
# Thu, 19 Nov 2026 21:33:57 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 19 Nov 2026 21:33:57 GMT
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
	-	`sha256:eb5a8c9581c6cfa4991fc7d3ad41c814d421ed40c407bc9247384446c87bd87b`  
		Last Modified: Thu, 19 Nov 2026 15:42:42 GMT  
		Size: 13.9 MB (13934121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27812be787573c10768ae7321aada1d3d3a087b5d472790e1b6c8fae0086e65f`  
		Last Modified: Thu, 19 Nov 2026 15:42:41 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e67f9ca36e843014b6e3b7ec8833fa93d498933315cc24e8a590fe3ca59ee0`  
		Last Modified: Thu, 19 Nov 2026 15:46:10 GMT  
		Size: 16.0 MB (16027810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61505d78dd79a8c42644601a9adc2009e45e050e3ad41b9c32bc35254ac907a`  
		Last Modified: Thu, 19 Nov 2026 15:46:10 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9a8b552aa1b1e35becfd4c639a7b8e0f5bd19101b7401fe1a684ec4243696b`  
		Last Modified: Thu, 19 Nov 2026 15:46:10 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96db86efeda803222d746e847f2fe668ee3c3961709829a973a2085c4da2d4d`  
		Last Modified: Thu, 19 Nov 2026 15:46:10 GMT  
		Size: 22.2 KB (22173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:303d8efe7de5a9a727204374f66a9d1b413b72fbb75ec51bc2f12fa7b0fc6c67`  
		Last Modified: Thu, 19 Nov 2026 15:46:11 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c56218fc8d294d301a18be6639344ac951d4e1137c5ffb95eaa89b59cd4a05`  
		Last Modified: Thu, 19 Nov 2026 21:27:49 GMT  
		Size: 7.1 MB (7125708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f07a2f5678428431f3bd272e12e0d00fe04cd7bcf47cedebd75bb2e7f4c63ba`  
		Last Modified: Thu, 19 Nov 2026 21:27:49 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711ad12dd8611e3f03f62de31130db7470adc15d824f34ada037f47f10e50b77`  
		Last Modified: Thu, 19 Nov 2026 21:27:49 GMT  
		Size: 879.8 KB (879782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a12371b44c8c31f4407704eaa3568bf88f91840265a29db3485e3464eded99`  
		Last Modified: Thu, 19 Nov 2026 21:27:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3da0708f49b26e2cccbd47e5c4f98a4e7a460546897cead410e532db502bfb`  
		Last Modified: Thu, 19 Nov 2026 21:34:34 GMT  
		Size: 23.7 MB (23710763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:921e8bc768457d3f14c9ab6f9df72870974ced57afdf5ee4b172968bd076ae38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.6 KB (407590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd1f8b7b76740ca271cb86fa1f72ecbd88ab3c2caf28baaed819f70f5775949`

```dockerfile
```

-	Layers:
	-	`sha256:63afcafd3d4469286148aef7072c7142a4e53accd8d74e0d10e568c1a3c9b25a`  
		Last Modified: Fri, 20 Nov 2026 21:02:16 GMT  
		Size: 374.2 KB (374159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98b3cf3caab62f876181b89b3d44fb36ddb38ab749b5a5383688a708725e3780`  
		Last Modified: Fri, 20 Nov 2026 21:02:16 GMT  
		Size: 33.4 KB (33431 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; riscv64

```console
$ docker pull drupal@sha256:f68dfb43a420214a8883b620424a2a67438b7f4cd39a9a05b84cdec4c1f0afa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68609153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdba9df019b29b93708b18d17623a8aec3ec2dff3ce35601485a9a66b1ea6d3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 04:08:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 10 Nov 2026 04:08:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Nov 2026 04:08:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 10 Nov 2026 04:08:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_VERSION=8.4.28
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Fri, 20 Nov 2026 17:06:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 20 Nov 2026 17:06:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:12:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 20 Nov 2026 19:12:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 19:12:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 20 Nov 2026 19:12:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 20 Nov 2026 19:12:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 20 Nov 2026 19:12:29 GMT
WORKDIR /var/www/html
# Fri, 20 Nov 2026 19:12:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 20 Nov 2026 19:12:30 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 19:12:30 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 19:12:30 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 07:25:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 07:25:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 24 Nov 2026 07:25:08 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 07:25:08 GMT
ENV DRUPAL_VERSION=11.4.13
# Tue, 24 Nov 2026 07:25:08 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 07:25:08 GMT
WORKDIR /opt/drupal
# Tue, 24 Nov 2026 07:41:57 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 07:41:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71f3874ca1c271878bf7c9de496cfc8d8280c2c03335dc59496c2996738c87f`  
		Last Modified: Tue, 10 Nov 2026 05:12:02 GMT  
		Size: 3.6 MB (3634911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6682e0dd2f43b4706a7e9b2d4aa30bbcc72bea04dcc64383fe8c8834d90129f`  
		Last Modified: Tue, 10 Nov 2026 05:12:01 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461f02bd0f15db75b6a276d6a03ab6735c3e214d379b63a95ac7bd0ffc4302b3`  
		Last Modified: Tue, 10 Nov 2026 05:12:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73993b7f18055768ee2c28f1a5e80928cd1759bea6d6f0ca3803640048df2ca`  
		Last Modified: Fri, 20 Nov 2026 18:09:23 GMT  
		Size: 13.9 MB (13934096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5da376dbf2404c1c62482aeac3afb06a6e5f93326a7b1ee0cec160a70959fbc`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0454c0b033b1c8b1f5879c5834588b386e03e76d58675197394f347be905de56`  
		Last Modified: Fri, 20 Nov 2026 19:13:25 GMT  
		Size: 14.7 MB (14707008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa551a601ab16d2a971c73ef81e3027594696c85f3c31aabadda009b671decef`  
		Last Modified: Fri, 20 Nov 2026 19:13:22 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf9590e47c40c5db03a9f59e4ed08c4ceded4299bc3c73b3c43f01293a07848`  
		Last Modified: Fri, 20 Nov 2026 19:13:22 GMT  
		Size: 22.1 KB (22131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9d701d9c8d285f8a6db9c1e41a3f699431c829ba510c009a6731543e9f30a4`  
		Last Modified: Fri, 20 Nov 2026 19:13:22 GMT  
		Size: 22.1 KB (22146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55bd6a929b2cf3cdf52f266eb94a042b3b494301b12d6488ca32d2b16ea8f2b`  
		Last Modified: Fri, 20 Nov 2026 19:13:24 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b168b2d4635133a80e2fce038f65e5be5c6cac6c1d4dbbaa4dc65fdc55da049`  
		Last Modified: Tue, 24 Nov 2026 07:28:43 GMT  
		Size: 8.1 MB (8103539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09864c4ca742203d620509483d2c8b3fd9d672bf267aef29d88ab76534a80a73`  
		Last Modified: Tue, 24 Nov 2026 07:28:41 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce61a0ed25767a3b9b54b16a6004c32f4720e5c59cde3d431ba28bc364ce9445`  
		Last Modified: Tue, 24 Nov 2026 07:28:41 GMT  
		Size: 879.8 KB (879786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12677e4e2f27784e7a59d01e636a153290c1ff4c5517c9210ee4da9e3f597a20`  
		Last Modified: Tue, 24 Nov 2026 07:28:41 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145cc4b4951b6db9d6025a97512051d6226ffc632cece5188e0d3803d1b5a60e`  
		Last Modified: Tue, 24 Nov 2026 07:44:41 GMT  
		Size: 23.7 MB (23711588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:a8e4d4f17782e1ad0ab3a93db8f9659c6071de9911a9ae13c5981e523cab526d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.6 KB (407585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd9c834a28a76847b1b06cac1374ccfb7a39bc50958987160ba582356cb7cdb`

```dockerfile
```

-	Layers:
	-	`sha256:effc2891675137a4e04a243487ad260c6faadc4729fea7b719067a0aec8c3022`  
		Last Modified: Tue, 24 Nov 2026 07:44:37 GMT  
		Size: 374.2 KB (374155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1460abfe7495e54f837d826106fb086023944e1748f9163814e634d652f8136`  
		Last Modified: Tue, 24 Nov 2026 07:44:37 GMT  
		Size: 33.4 KB (33430 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm-alpine3.23` - linux; s390x

```console
$ docker pull drupal@sha256:2eec6299e14e797d06faea3c08ba1b4bead71ba1ef065d88a8ced83d86c226fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68012959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a395d6f2ac25a5d84a912e69e89a012c7941794efd0f020780a4da82cd94a7b2`
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
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:44:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:44:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:48:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:48:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:48:26 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:48:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:48:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:48:26 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:48:27 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:48:27 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:48:27 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:48:27 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 16:12:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 16:12:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 19 Nov 2026 16:12:30 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:12:30 GMT
ENV DRUPAL_VERSION=11.4.13
# Thu, 19 Nov 2026 16:12:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 19 Nov 2026 16:12:30 GMT
WORKDIR /opt/drupal
# Fri, 20 Nov 2026 19:56:21 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 20 Nov 2026 19:56:21 GMT
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
	-	`sha256:5e1753b6b5df182f53b712d7f227ad1dcc1ae44cec121c0d419c80677708ab8e`  
		Last Modified: Thu, 19 Nov 2026 14:48:38 GMT  
		Size: 13.9 MB (13934098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725fe1681e8877d6024a96289278e3afbed5858d54cf51722ba239763c597d54`  
		Last Modified: Thu, 19 Nov 2026 14:48:38 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7fde36d0524eb2db11ab5047cf46877102a12982f7972107402a62a6459b8c`  
		Last Modified: Thu, 19 Nov 2026 14:48:38 GMT  
		Size: 15.2 MB (15215910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea7b0e9e33b2ab50d4f78fe8b1848ddcea5f8187f5771240203dc7fedae2e85`  
		Last Modified: Thu, 19 Nov 2026 14:48:38 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f8e55cf7f8a238401e81f56502ec13e364592586b21f59c1702f6e0ac2443b`  
		Last Modified: Thu, 19 Nov 2026 14:48:38 GMT  
		Size: 22.1 KB (22107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5600c6e3ba7b47338e814a48bed8ff7cda5aaacd953c89a6bb9ba75ebe4f56`  
		Last Modified: Thu, 19 Nov 2026 14:48:39 GMT  
		Size: 22.1 KB (22111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69c83dfe8616ec1666e13a3da8089614f932dd6baf6367adfb328f4af1d55c2`  
		Last Modified: Thu, 19 Nov 2026 14:48:39 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226bdb2228d7fb2c0d8d4954779b77f43c466f268f33a720ba3c423b840d662f`  
		Last Modified: Thu, 19 Nov 2026 16:12:57 GMT  
		Size: 6.8 MB (6805024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac188406600e3e7de42d23494853c447688792ab030d0296638d886965f5f06`  
		Last Modified: Thu, 19 Nov 2026 16:12:57 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2b9870429709d28fc61ffb6441617a4cc0e24df1520db2fa789eebf2bbdf9c`  
		Last Modified: Thu, 19 Nov 2026 16:12:57 GMT  
		Size: 879.8 KB (879780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f204a50e8b6acab0b50307c6cd7cb74304333db1f357f6b2861c94fade1ff8c9`  
		Last Modified: Thu, 19 Nov 2026 16:12:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e5d33bbc6aa13acafb7fb20821a8e697da0ec393901ddd352bc1075d4d6801`  
		Last Modified: Fri, 20 Nov 2026 19:56:46 GMT  
		Size: 23.7 MB (23710746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:91fded395aa2785cc81ef2e167d11b43d4333187c2434e141f6a725a88de24d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.5 KB (407498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d550a3f00b536c5681020459690c0c77307beafc866d9377a3c8334a1acf7ee6`

```dockerfile
```

-	Layers:
	-	`sha256:adec8413bc360f0c11e14f522e5ea53ed307aa668358d200d8238008d48761de`  
		Last Modified: Fri, 20 Nov 2026 19:56:45 GMT  
		Size: 374.1 KB (374125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7a57c40dac70da9cda37ead81763d911e340e0626b984eb338749a45636977`  
		Last Modified: Fri, 20 Nov 2026 19:56:45 GMT  
		Size: 33.4 KB (33373 bytes)  
		MIME: application/vnd.in-toto+json
