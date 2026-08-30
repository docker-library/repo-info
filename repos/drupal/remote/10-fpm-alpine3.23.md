## `drupal:10-fpm-alpine3.23`

```console
$ docker pull drupal@sha256:69955cd65660e93d5c94b995c690d35226bda3ac696cba9a54f7eb07b53dddec
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
$ docker pull drupal@sha256:bd63acf3f3eff42fee0470973e6262597b8ffb680a8179300e2f3314e98a3e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69245252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbf452f88b54fdd8113afc7c134f6959c64250e47f71ca7334fccd9a5bddea1`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:21:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:21:06 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:21:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:21:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:21:06 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:21:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:21:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:24:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:24:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:24:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:24:28 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:24:28 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:24:28 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:24:28 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:24:28 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:29:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 20:29:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 20:29:05 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:05 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 20:29:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 20:29:05 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 20:30:04 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 20:30:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e585331d6be81b58c379f94357b74cc7ad47cf5aa336ca0a6b3f37441c33372d`  
		Last Modified: Thu, 27 Aug 2026 20:24:36 GMT  
		Size: 5.9 MB (5933595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a551c6b609feb87a06f21b1c039232d5ad8ed6c69378277ad9dd2d9c0faf40d3`  
		Last Modified: Thu, 27 Aug 2026 20:24:35 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d121592662917ec7e79b868ce8acd887204b675b8d921377832a0afbb45c011`  
		Last Modified: Thu, 27 Aug 2026 20:24:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa9d55626c6f84bebe1a97d83bacd3dc4cff86b0c7c34010d8555935f3078ec`  
		Last Modified: Thu, 27 Aug 2026 20:24:36 GMT  
		Size: 13.8 MB (13782384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86ddbcc36fc19bb08ded97adfb6c07cf01ace0b8d1cb1f121dd79ba5d07c2da`  
		Last Modified: Thu, 27 Aug 2026 20:24:36 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37cbac1c163488e8c8c4284c213e6e582a14693ef41b96a8a9fdbf410680998`  
		Last Modified: Thu, 27 Aug 2026 20:24:37 GMT  
		Size: 15.3 MB (15348810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209a01b9329286c0e99aabe7e48d7d9acac3423f9bd6aa6b417f78ca0d2ae68a`  
		Last Modified: Thu, 27 Aug 2026 20:24:37 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbb92798935f7886248cee70ff2f397bc9f47417b7d22bccd5d78f875b609b1`  
		Last Modified: Thu, 27 Aug 2026 20:24:38 GMT  
		Size: 22.4 KB (22351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559d9032ad9dc4cec6dbdd70924c8bf57daba82ebf96579e4ae8171b59f71745`  
		Last Modified: Thu, 27 Aug 2026 20:24:38 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d08f278e99cbf2ad46b2898a089f719b8af38905ac660a0790b466737e48382`  
		Last Modified: Thu, 27 Aug 2026 20:24:38 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22757ad5e1d2c656f5d2a70bf12ef30bece010f1070f6ca9932d711f281dda7d`  
		Last Modified: Thu, 27 Aug 2026 20:29:25 GMT  
		Size: 7.4 MB (7426916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf46ab98382f09bb962a784e11b32e89e5789af3e6c59147b32f0ab61b88d186`  
		Last Modified: Thu, 27 Aug 2026 20:29:25 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1c54f8234a87817760cf3894fc51fe1a0fd4d0cee0a28515d82940904ddbe4`  
		Last Modified: Thu, 27 Aug 2026 20:29:25 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281543e747715249db6680aec3303e83a6b2e23fd365f78115389f431cb97931`  
		Last Modified: Thu, 27 Aug 2026 20:29:25 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00785437381ed5bbc47295bc50c3b4f767021c216c941b1742827feed24a1c81`  
		Last Modified: Thu, 27 Aug 2026 20:30:17 GMT  
		Size: 22.0 MB (22018311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:2b4776d47dbf7f8f270bf7871307e6009cf5bb78c238f8fa53a2e176b84e735b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.5 KB (396547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551a9cd1123ffe1e236dbd4539670a53e1cd47640a10951931eeadbc74be5eba`

```dockerfile
```

-	Layers:
	-	`sha256:4c210a621e5a14a73d5babdfbb545e32af0cb3724f01a9d3aa44db2eef6c3e5b`  
		Last Modified: Thu, 27 Aug 2026 20:30:16 GMT  
		Size: 362.5 KB (362528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:377e9a47a30a8bfadd92e0ffc13a6c2c5a2d641d896254a33579f1f220da043a`  
		Last Modified: Thu, 27 Aug 2026 20:30:16 GMT  
		Size: 34.0 KB (34019 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull drupal@sha256:c4c5986d8bd8f57e383b2e7dae3ff081d503d44aa2ed36fc834491c6d2a38cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64310674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7c589e047559c18a25fc098554b13c1bc58a7df91cc076b7f484b559bf76c8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:15:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:15:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:15:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:15:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:15:40 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:15:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:15:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:18:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:18:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:18:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:18:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:18:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:18:46 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:18:46 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:18:46 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:18:46 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:18:46 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:35:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 20:35:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 20:35:07 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:35:07 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 20:35:07 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 20:35:07 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 20:35:16 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 20:35:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6727f2d07f13df97a859a54c68412061950672abb107be200795e661ba4ff0bf`  
		Last Modified: Thu, 27 Aug 2026 20:18:52 GMT  
		Size: 5.5 MB (5526997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6579420f1f1455694abda3f6f76ded3c9c46b74c66fca1c9b03a369999eb24`  
		Last Modified: Thu, 27 Aug 2026 20:18:51 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3aab3692a6b8037ba59e3a9800d3d6afc37204062a90ece8866691a3c24d758`  
		Last Modified: Thu, 27 Aug 2026 20:18:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37633bd26a66ca00b11539432ddc26653620fac31ce984b46c381444dba24c5f`  
		Last Modified: Thu, 27 Aug 2026 20:18:52 GMT  
		Size: 13.8 MB (13782425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42ec429ce2a374dde9830612999b50f7f8175c1049aba3a9177c197f5a2d42c`  
		Last Modified: Thu, 27 Aug 2026 20:18:52 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1616f41f7c3a596d7c80f15725dbbd15ca2b82c6fcaf29981da88cbdf20fed`  
		Last Modified: Thu, 27 Aug 2026 20:18:53 GMT  
		Size: 13.8 MB (13789839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e0801695392bb39e44caa92b294b4a12e7766b478a7e67ca0b04efbf458856`  
		Last Modified: Thu, 27 Aug 2026 20:18:53 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a9dd12dc56bb38907fec172f886fa3d4e6c9427832b27be411b7ab4955c79f`  
		Last Modified: Thu, 27 Aug 2026 20:18:53 GMT  
		Size: 22.2 KB (22175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1052da78b44a8e72a219566ee3294d002fafc29df67784fb17b55ef240f73c34`  
		Last Modified: Thu, 27 Aug 2026 20:18:54 GMT  
		Size: 22.2 KB (22193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f10816a6fc0deaa2a778e6d25a244c0442dff0953a212507700f496213951d`  
		Last Modified: Thu, 27 Aug 2026 20:18:54 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6cb0e8d1f45f6eaffebfe2a3ddc8cbee9e7c8c6ca7958078ffa6ba56c29954`  
		Last Modified: Thu, 27 Aug 2026 20:35:24 GMT  
		Size: 4.7 MB (4749312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bb8220f538eecf2ca9d76f7b28298096c1c6bf970edce3512e65729844cf84`  
		Last Modified: Thu, 27 Aug 2026 20:35:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f790358be7a3195198b3c7f2ed352bc8bbe5fce0296807e5a8ae0265378e19a3`  
		Last Modified: Thu, 27 Aug 2026 20:35:24 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f16926b2d6739cf6bea8b83f30c5bd31adfc81ef9517526a0aeb22f592df7c`  
		Last Modified: Thu, 27 Aug 2026 20:35:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b19782ef02b5f55666c299b1166936f8d7b0ea530090cdacb39c9632d9d607f`  
		Last Modified: Thu, 27 Aug 2026 20:35:25 GMT  
		Size: 22.0 MB (22019039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:3a806be907c61ad1548f817a74bfe77cfaf3153e1985dc6a911c8e997bbdd4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d2a11f112beb1d58cff00f67df2011ddd371ccc4541df32958fc91ca98f023`

```dockerfile
```

-	Layers:
	-	`sha256:34c2df7520624c3bbced704505101d44965111f785bf14d17f7a01539ee9408f`  
		Last Modified: Thu, 27 Aug 2026 20:35:23 GMT  
		Size: 33.9 KB (33948 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull drupal@sha256:54807b3b0c505cd8f1daf6ee2d3f4cd3a24e9c7c9f9950be9e4d47461ebe2489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63715524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e65357bdd0a6ed4586077fc541a6561cbb90a975f74c64b05c740539481745c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:28:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:28:00 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:28:01 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:28:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:28:01 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:28:01 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:28:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:28:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:31:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:31:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:31:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:31:05 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:31:05 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:31:05 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:31:05 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:31:05 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:17:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:17:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 21:17:52 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:17:52 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 21:17:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 21:17:52 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 21:17:59 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 21:17:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5daafeccfb86175ae72401a3a9ada24b3a2a182e66aa50a54526297cf39560`  
		Last Modified: Thu, 27 Aug 2026 20:31:12 GMT  
		Size: 5.2 MB (5177350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37b8e0f6d411bdd4718be4151821cbc7b9c2693e1c4b921b6806bd1949c73dc`  
		Last Modified: Thu, 27 Aug 2026 20:31:11 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eeb8602c52d07a4761fc2d2e2c4ffad5e4fbdeff31e9893da52008ac8ade4fa`  
		Last Modified: Thu, 27 Aug 2026 20:31:12 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c46c56e33fd6e7dc71ec893b6e080fdfcea70d1df539f853c1526f6c628c6c9`  
		Last Modified: Thu, 27 Aug 2026 20:31:12 GMT  
		Size: 13.8 MB (13782433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529b205cadcec1cc4d9ced8bc61f51370bb630f7cb1d696e6a578ba1d481c1c0`  
		Last Modified: Thu, 27 Aug 2026 20:31:13 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e9e899d05e82b045c0f96206c97fce1ed7dc8eec31dd17cef277a5ed578bd3`  
		Last Modified: Thu, 27 Aug 2026 20:31:13 GMT  
		Size: 13.0 MB (13007584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01de4af4397386d448e1f994edf184d66963a571f1c5f34737994894a4cbefc8`  
		Last Modified: Thu, 27 Aug 2026 20:31:13 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8dddedddc8eebe80a9a3fdd873dd046235ae6b78d145e96b06f311ee54642c`  
		Last Modified: Thu, 27 Aug 2026 20:31:13 GMT  
		Size: 22.2 KB (22182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0799d4ba567c2174f74618f2ac7d6faab955ba7a59880b6c0ddf8bd9f67f6f0`  
		Last Modified: Thu, 27 Aug 2026 20:31:14 GMT  
		Size: 22.2 KB (22198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0685f033a31436089bdd82690d694b61328d2b6c6d78fd3ef75b9b1d61689a2f`  
		Last Modified: Thu, 27 Aug 2026 20:31:15 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9caf6b1e484784eeea70d3d70ff84f7c198230158029d36f514643eb6376beff`  
		Last Modified: Thu, 27 Aug 2026 21:18:12 GMT  
		Size: 5.6 MB (5577362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0170d9bcd61edd8b27616714c006c5631d01d903b7e3e4aa6be53825a51a55`  
		Last Modified: Thu, 27 Aug 2026 21:18:12 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6707bf88a5dd9ad58812e2d91ad23944a42abb59d2a636e23f7ed0d1de200fad`  
		Last Modified: Thu, 27 Aug 2026 21:18:12 GMT  
		Size: 832.3 KB (832284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0871ee889c8079e1a2a065931a42b348ef7207e27a1d29238e40be6723b0f5`  
		Last Modified: Thu, 27 Aug 2026 21:18:12 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4947d2ec7fe3eadaa8dabb705415f7140c2698651c61a908b29bd72e675227f3`  
		Last Modified: Thu, 27 Aug 2026 21:18:13 GMT  
		Size: 22.0 MB (22018460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:52596f96a0652fce72210fceeac5da49b628edbc548042a01d5f7f763040a87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 KB (396093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae8ca08cd43fef7b1a031d08033530fb0d830c79625a75028e021ebc1f46a5a`

```dockerfile
```

-	Layers:
	-	`sha256:6764eba00ed1ea6d17be24a2a245708de86cbe05e8841122a2515c14d08f6ef9`  
		Last Modified: Thu, 27 Aug 2026 21:18:12 GMT  
		Size: 361.9 KB (361930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d4e8005fe8f076f69b270fbeaf424dcca41de6333ddf6a08173486880a3860`  
		Last Modified: Thu, 27 Aug 2026 21:18:11 GMT  
		Size: 34.2 KB (34163 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:06040021eb5fea6952e3aadf5bfc53a367d9b611961cf6d03b3e2c89cb628722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69171403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792005d8718fce9b5bcddf0d95a7a675f53583f04da71e2a1998faca523dd4da`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:17:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:17:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:17:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:17:48 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:17:48 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:36:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:36:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:39:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:39:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:39:20 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:39:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:39:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:39:21 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:39:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:39:21 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:39:21 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:39:21 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:13:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:13:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 21:13:05 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:13:05 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 21:13:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 21:13:05 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 21:13:12 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 21:13:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfda5c94439be4e6fb19a1c26736c2b19a1408cef12ceb04cad672bf9c787d03`  
		Last Modified: Thu, 27 Aug 2026 20:21:17 GMT  
		Size: 6.2 MB (6244087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9010f5176531fc5d9450d781b5851af137a552e66f7609deefc9a9e4310183`  
		Last Modified: Thu, 27 Aug 2026 20:21:16 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06274a80d390b700711b7bce5d0c14b4f911743c90adae0c56def5f0067aee1a`  
		Last Modified: Thu, 27 Aug 2026 20:21:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d5dffdd8ca89de2ba201106d41999c9af51e73ef2da9275ebe37883c3fcd2`  
		Last Modified: Thu, 27 Aug 2026 20:39:28 GMT  
		Size: 13.8 MB (13782400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6d853e4694f2d3553258eb147e6eb6cb94bd653c1fcb232e500f261267928c`  
		Last Modified: Thu, 27 Aug 2026 20:39:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a3aea910ef6545ada6a83accd7ef435ed3db034f2a3b573cc1caf060f739e3`  
		Last Modified: Thu, 27 Aug 2026 20:39:28 GMT  
		Size: 14.9 MB (14856917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b0243ebecf707d60cd5f54c8d4d17ac882b517bcac9206fbd328794f89cc9e`  
		Last Modified: Thu, 27 Aug 2026 20:39:27 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42a8e2892b1b4d5273469a27c408fb4096af9e739d8e8cf8f928d7069812f1d`  
		Last Modified: Thu, 27 Aug 2026 20:39:28 GMT  
		Size: 22.2 KB (22187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c5eba3579a8089502eeba1b64eca70798671e8a5e0b174141cdb379f2ccb90`  
		Last Modified: Thu, 27 Aug 2026 20:39:28 GMT  
		Size: 22.2 KB (22191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c1cdb1c6e9a92e7a2e1fdf9dace49a1013752a6bdf35c4cab4cbbe21003569`  
		Last Modified: Thu, 27 Aug 2026 20:39:30 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c32c3ce24fbd3e1d460a9f839b53168a2fe00889ca11fa74199ab940bb53d6`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 7.2 MB (7196429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed9586ec1b2eaf911d54bde713293bed350e9e1c53d7b3a8c401f5afd7c1324`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442b99ed71d5f80bb20f1bd769e20dc7f7007be50e2f43742a6a61d7ba7927c3`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 832.3 KB (832283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5399560b129d9723f536258c7d1edda35715815bc63fadb8aaaca5afd14674f6`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e297fcc6b1ee8b9a81228cb61fd2cd450025168666aba1d2c8be83e98e1eea`  
		Last Modified: Thu, 27 Aug 2026 21:13:27 GMT  
		Size: 22.0 MB (22019245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:15fe0f3a10c4214362acc51c17731af744472e6130e8d46ad2147789535c2d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 KB (396160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef8814032051313f8067c526d78d359151c6862b9ecb286bacec67bc461609f`

```dockerfile
```

-	Layers:
	-	`sha256:5d9c675ab997eab25b63f87338b48c0a1b1ae72b2e7fdc953978f256036a2c38`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 362.0 KB (361958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:163060f92caa5efbb0b4ffc71db4674b2ea8412f36223b42996c0911c504fc6d`  
		Last Modified: Thu, 27 Aug 2026 21:13:25 GMT  
		Size: 34.2 KB (34202 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; 386

```console
$ docker pull drupal@sha256:3c6f7331f4797f6faa1e6c262082bce661470c10f02b78ab14c5ce19f2416d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68123878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8bf6ce3519b695d0626917a9caaf64abd29e4c8c9d62c8197d0ab975bac3873`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:26:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:26:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:26:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:26:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:26:41 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:26:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:26:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:29:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:29:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:29:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:29:53 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:29:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:29:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:29:53 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:29:53 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:14:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:14:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 21:14:39 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:14:39 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 21:14:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 21:14:39 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 21:14:45 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 21:14:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8290e5043c7fe3f71781c07bc2341fccfeb5852ce88da4f24c88818e3565e03`  
		Last Modified: Thu, 27 Aug 2026 20:30:00 GMT  
		Size: 5.8 MB (5769169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0f5a29d841113807ceae8a01f6b0ed7d0951d603eea0a1680ad6bb7cf1bae0`  
		Last Modified: Thu, 27 Aug 2026 20:30:00 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0548fed92b485da60570f40e9025a5aba1188145f5785df6da27788f93dac8`  
		Last Modified: Thu, 27 Aug 2026 20:30:00 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32bdeef04e2d101c2c044edd553ec0b17a48f2a28984bec53c58765c1c4799a`  
		Last Modified: Thu, 27 Aug 2026 20:30:00 GMT  
		Size: 13.8 MB (13782369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59bcbb76f5d43501220d8eeb45eebdda429c8337c168feb79596951129b06eb`  
		Last Modified: Thu, 27 Aug 2026 20:30:01 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a3e64df6c33ae677cba35a672fc2a9c0fd8bb5b5c73c8eea034aec1c5c9727`  
		Last Modified: Thu, 27 Aug 2026 20:30:01 GMT  
		Size: 15.7 MB (15665305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d412468d5c791b8cf80dfb6f1602c6bd300176ea3e3cfa791b880924aae4fd0d`  
		Last Modified: Thu, 27 Aug 2026 20:30:01 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f2ebf437eb164c173d40a0106f88f902e6d32bacc92c0c8426389672ac3eb3`  
		Last Modified: Thu, 27 Aug 2026 20:30:02 GMT  
		Size: 22.3 KB (22337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa228cbb3ffea0877b59f1090ade801a7be2c34ad9d7fc51fc1b65d65617a25`  
		Last Modified: Thu, 27 Aug 2026 20:30:02 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3adcc383e17b7da69e7ae8aa5197bbe1cba77c125432cf64cd761c4bcd51502`  
		Last Modified: Thu, 27 Aug 2026 20:30:03 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d854a9bb70e2635d91eac4562609657ae5a1e4260196eb3286c9d21ae0c9cb5f`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 6.3 MB (6329832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ff2f608faf1c7e6e06cdd24cfe72e88a10d473bad57f7fb1417997bceb997b`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89790dc79c88458bf3fbd43ea9bbb219584e558cf122bef5b90cb30e88b53a61`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049e9123b0b6da92692fb7cc9b1b5046f80ad4121f8cdf638629a95e54035fa5`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e110ae333633284f6040a1af53dcc2efd4fb72d5f169fc7e55a8a9c2558d75e2`  
		Last Modified: Thu, 27 Aug 2026 21:14:59 GMT  
		Size: 22.0 MB (22018428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:6080304abba4c2a1f4f3ed301eb9ff0d8b6e9fdc5b2238e0b0ac4444bbd67b7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.5 KB (396457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba192666faeee23e10bbb1a499606954c51433ce4bc700dad59a7e891d002439`

```dockerfile
```

-	Layers:
	-	`sha256:c5462b031de51b372270191947ffa99108085dbc39be0e956882f4f71d828d01`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 362.5 KB (362493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:509a7570385ecdc806fa343dd1980dadc8a56e5743dfbc3d2b6b05aa484e3281`  
		Last Modified: Thu, 27 Aug 2026 21:14:57 GMT  
		Size: 34.0 KB (33964 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull drupal@sha256:4a45968f678de1c85ff8ec0463581026ad7a4760a5f603537e9f89bce9ec963e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69503169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4007feef83efc128344aede379112cbaee21b87630b5ccceb9a16e3433b44fba`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:38:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:38:17 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:38:17 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:38:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:38:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:38:18 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:38:18 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 21:10:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 21:10:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:16:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 21:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:16:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 21:16:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 21:16:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:16:45 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:16:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 21:16:45 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 21:16:45 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 21:16:45 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 22:17:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 22:17:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 22:17:15 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 22:17:16 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 22:17:16 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 22:17:16 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 22:19:21 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 22:19:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5947755e3cf42c462c426f53e14caed7a702e77d81c2970646133ca65db44bf`  
		Last Modified: Thu, 27 Aug 2026 20:43:01 GMT  
		Size: 6.0 MB (5978409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f24ed9a69c029e77f70ef41e0c786d1753a2f22e6e4caa185a1e5cb917438f8`  
		Last Modified: Thu, 27 Aug 2026 20:43:01 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29383ef97b06d20feee8136e024862eaca742eb648d1f75f38ac44c0ffd4b58f`  
		Last Modified: Thu, 27 Aug 2026 20:43:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d77caccc27473ad8d5fe76801538fcd5b6e48db629c03775b2c44301012408`  
		Last Modified: Thu, 27 Aug 2026 21:14:21 GMT  
		Size: 13.8 MB (13782399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0524198ac8c1083b4aa20863dad3c31c82f1952d7d0c6b65ab5ad3ac96310815`  
		Last Modified: Thu, 27 Aug 2026 21:14:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2bad380b507038322f3832d1b5aa7ec1561691b74a3c5fc44255f4302d11245`  
		Last Modified: Thu, 27 Aug 2026 21:17:01 GMT  
		Size: 15.9 MB (15897112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8cd1444cc7547a99eebaef4507e3a14228607316af59a1c197b565cd80be0c`  
		Last Modified: Thu, 27 Aug 2026 21:17:00 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0216e180ff3d81a6af0f0fc3f7c5e5f6dc833d6aa23033347ad236b1a73c4d`  
		Last Modified: Thu, 27 Aug 2026 21:17:00 GMT  
		Size: 22.2 KB (22196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb5a3973fbd4cc121a35245c0146cab6ed1be53afd609391d4c3f5398583c45`  
		Last Modified: Thu, 27 Aug 2026 21:17:00 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d27e4682a9197f7b7d46bc5319252843e1aea3d5ca3b4cc8fbdba650693b05`  
		Last Modified: Thu, 27 Aug 2026 21:17:01 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c294b1b239f081f68bdaac4d3768e08e7bce105df8a05cad70447da06435d988`  
		Last Modified: Thu, 27 Aug 2026 22:17:56 GMT  
		Size: 7.1 MB (7123908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54b862d518c18fa3a06dca4b3f5d8453c944292d5460ead468e2030aabc4f9a`  
		Last Modified: Thu, 27 Aug 2026 22:17:55 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7d11e225d2521c3c933ebaf180b098d1fbf5a7f68f6ded6eac151ae578e054`  
		Last Modified: Thu, 27 Aug 2026 22:17:55 GMT  
		Size: 832.3 KB (832287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72df9e74d02bcee64cde23d74838be56d005f76236dc37582d0ee4187efcfae8`  
		Last Modified: Thu, 27 Aug 2026 22:17:55 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd1cab15780727d91e238e3b35a622640ff7bbccefa00f3993cb7a1a6617b40`  
		Last Modified: Thu, 27 Aug 2026 22:19:54 GMT  
		Size: 22.0 MB (22018527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:dc3f62da109703c37176106182a24eee53a3ee86eea11301a4313f5e7a6eadd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 KB (396010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbbeb5dae16c41ade6561339275874507fd80530dab17c353b4766dc4c63792e`

```dockerfile
```

-	Layers:
	-	`sha256:1513143a64c1f5af1e75860d0cd1cf5af020c14b6525c93aece32e8b38f08715`  
		Last Modified: Thu, 27 Aug 2026 22:19:53 GMT  
		Size: 361.9 KB (361923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6d7ce431dd9c0d380debe07773907d8d60874c8b06e784bed71ef5590bacc4f`  
		Last Modified: Thu, 27 Aug 2026 22:19:52 GMT  
		Size: 34.1 KB (34087 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; riscv64

```console
$ docker pull drupal@sha256:a458488ac5fdfeb51fedab1d5859b1c8daf308012cc3e6060c024627a8d30fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66796549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acca3a9aea61ec0375d3f62b80fadf7d7f8b22cc06331602975f31b6c9325b09`
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
# Sun, 30 Aug 2026 13:54:23 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 13:54:23 GMT
ENV DRUPAL_VERSION=10.6.15
# Sun, 30 Aug 2026 13:54:23 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sun, 30 Aug 2026 13:54:23 GMT
WORKDIR /opt/drupal
# Sun, 30 Aug 2026 14:02:47 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Sun, 30 Aug 2026 14:02:47 GMT
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
	-	`sha256:61a1e11f38b7a646dc660059f3c802e48123d3e3ef5dbadadd8ddffffb5ea3e2`  
		Last Modified: Sun, 30 Aug 2026 13:57:46 GMT  
		Size: 832.3 KB (832286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5d9f668d51ddb8606f05462c2487bfdbd574454b5917ac9f4b1256ccede776`  
		Last Modified: Sun, 30 Aug 2026 13:57:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22d3ed571bf6ed53492e541f38e7ca68fc0ac2fb29c706c232d99c55625b510`  
		Last Modified: Sun, 30 Aug 2026 14:05:16 GMT  
		Size: 22.0 MB (22018646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:324c72e3a4f78c2a89b2e200ff84264d1b4e564deb2e2ae122de3334be13fed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 KB (396008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4733c97f8a745493e7bbc6414cd76e12a203185908c33fc7bbf86e43271eb5`

```dockerfile
```

-	Layers:
	-	`sha256:c932c88679bc492e72e8b02d42b57bab42b1365e8e9c3572db58399f36b8ccdb`  
		Last Modified: Sun, 30 Aug 2026 14:05:12 GMT  
		Size: 361.9 KB (361919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a4dde1eabac8a1c861cd8a93c8285f437663010405d197dd305b03fe70e5d6`  
		Last Modified: Sun, 30 Aug 2026 14:05:12 GMT  
		Size: 34.1 KB (34089 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-alpine3.23` - linux; s390x

```console
$ docker pull drupal@sha256:fe26a8b1b12e52e3b63117a8045cd4b725c3fc2ce09419b0b3b17de457e08220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68198599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf279f37e3f404384b21663f84682841507147fa8d141072aa278b228256501b`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:42:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:42:55 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:42:59 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:42:59 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:43:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:43:02 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:43:02 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 21:10:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 21:10:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:22:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 21:22:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:22:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 21:22:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 21:22:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:22:59 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:23:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 21:23:02 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 21:23:02 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 21:23:02 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 22:14:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 22:14:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 27 Aug 2026 22:14:17 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 22:14:17 GMT
ENV DRUPAL_VERSION=10.6.15
# Thu, 27 Aug 2026 22:14:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 27 Aug 2026 22:14:17 GMT
WORKDIR /opt/drupal
# Thu, 27 Aug 2026 22:15:09 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 27 Aug 2026 22:15:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe2e964de3e3b7f9f16de8347771ac1b75d67c947f4920afb7a0c40b4606ed4`  
		Last Modified: Thu, 27 Aug 2026 20:53:54 GMT  
		Size: 5.9 MB (5900527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7882dcba28090c8e023dad3baeb34dc127aa87aa507df6df1338b63d17d145c`  
		Last Modified: Thu, 27 Aug 2026 20:53:52 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf2950971275b380113e2665fea4ac212d524afc1242eaaa283364389475a94`  
		Last Modified: Thu, 27 Aug 2026 20:53:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d056f75ef032e670b0e7d9d489e2275956ae4c7338857255a8dda67c3d20f8e2`  
		Last Modified: Thu, 27 Aug 2026 21:21:23 GMT  
		Size: 13.8 MB (13782395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d6d3327093585da5139718d0f95bd8670487af2b212b1b23be2dddc7581a7e`  
		Last Modified: Thu, 27 Aug 2026 21:21:13 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcda575dfe5d19df0deda22df531f7f9fb9c0f51bdceb464f31e37faa6dd9205`  
		Last Modified: Thu, 27 Aug 2026 21:24:13 GMT  
		Size: 15.1 MB (15096361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca421500afd3d38aeadab9abb2cbbe2b6ba9a3b17bb68673de8c119a75ef8ad`  
		Last Modified: Thu, 27 Aug 2026 21:23:59 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69341ad03907905c9b48e7f69e3006040809afaac982d80be0ca80915e49029`  
		Last Modified: Thu, 27 Aug 2026 21:23:59 GMT  
		Size: 22.2 KB (22193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48df6155a51e75442a9ef7a44491aaa4b87e012c53aebb26ba135ecd17561ea3`  
		Last Modified: Thu, 27 Aug 2026 21:24:01 GMT  
		Size: 22.2 KB (22210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394f9260b995a25e3793b6a52c4f5ea018bd3282c0edcc7438a2efb2d637cf9b`  
		Last Modified: Thu, 27 Aug 2026 21:24:10 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3f8e69bd3243884d5a64d621b622a4d33c387063cb59446c8f1a6a2b101df7`  
		Last Modified: Thu, 27 Aug 2026 22:14:44 GMT  
		Size: 6.8 MB (6803037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4cf06825e8484f7606b14a8e13eaa53378090f95091674f9303436207a4b4b2`  
		Last Modified: Thu, 27 Aug 2026 22:14:44 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06a97d4de3a633d3b2c008a6f34109a27a04c5b5658169793195b5439ba7bd9`  
		Last Modified: Thu, 27 Aug 2026 22:14:44 GMT  
		Size: 832.3 KB (832284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0356488fa4b3370d76c37d4b9316f813b2ab2a3b8fcecb9aa6a243f12da823ed`  
		Last Modified: Thu, 27 Aug 2026 22:14:44 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b925b1bf068ba8852541a35345a513ade78fda0a47a3a4916cf3a2ba541f51b`  
		Last Modified: Thu, 27 Aug 2026 22:15:28 GMT  
		Size: 22.0 MB (22018523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull drupal@sha256:d6ca7ab1ba1379cf1e6cb4b677f98e7eb52fe8b3be1a1df78e89304b11d26188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.9 KB (395895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b684589164dccbdfac914fdaca4fc7f39f364899c3a0f9b7ecc850f9665d683`

```dockerfile
```

-	Layers:
	-	`sha256:be104bd7a74fddcca7d7f7c99e8d009b1c4be9c9e126e4290bfd139f6f5a9f25`  
		Last Modified: Thu, 27 Aug 2026 22:15:27 GMT  
		Size: 361.9 KB (361877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:016a20337c8fa7307a0ff292e281d6d8c4c37afe76d312a320689707ce9cb664`  
		Last Modified: Thu, 27 Aug 2026 22:15:27 GMT  
		Size: 34.0 KB (34018 bytes)  
		MIME: application/vnd.in-toto+json
