## `espocrm:fpm-alpine3.23`

```console
$ docker pull espocrm@sha256:1497d7319dc072c175fce7ae9520e75d18d37c80d5c723b77523a3747e33e540
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `espocrm:fpm-alpine3.23` - linux; amd64

```console
$ docker pull espocrm@sha256:9f31104ee580cb70ceeedd06104e9f93e836a776f0bbd48b5b5b202fffea8da4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115746189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f113143938ca96dc5ca3268778e4260a12adde526103c78acccd7ace922b10`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 05 Nov 2026 20:00:25 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 05 Nov 2026 20:00:25 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 05 Nov 2026 20:00:25 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 05 Nov 2026 20:01:35 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 20:01:36 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 05 Nov 2026 20:01:36 GMT
ENV ESPOCRM_VERSION=10.0.11
# Thu, 05 Nov 2026 20:01:36 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Thu, 05 Nov 2026 20:01:36 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 20:01:44 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 05 Nov 2026 20:01:44 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:01:44 GMT
CMD ["php-fpm"]
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
	-	`sha256:088f588e0da2ab98eb950e3e0f8bdd798cd60cce7e35ca7e1c2df71cbab8eeb2`  
		Last Modified: Thu, 05 Nov 2026 20:01:54 GMT  
		Size: 519.9 KB (519917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b32cb61f9c74d4e67019f32c954f4b1e56e948fc59eb11983fa898f84cf4727`  
		Last Modified: Thu, 05 Nov 2026 20:01:55 GMT  
		Size: 4.8 MB (4814883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c719b13f4cd7cc3878bc69f03299f3f2541497d3f48a4f33e66c3719a7824af1`  
		Last Modified: Thu, 05 Nov 2026 20:01:54 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2860e5b3dd292cf75318af63c6d4857b9e8bc583fa45c13244925a27cc136e16`  
		Last Modified: Thu, 05 Nov 2026 20:02:24 GMT  
		Size: 73.7 MB (73717587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5735f7e4511807fd7fc77fa0ce50b5d63a797bb3d5b1c175fe85a1c3a82d48b`  
		Last Modified: Thu, 05 Nov 2026 20:01:59 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:20321889856af5f75e7bba102081847f3a18a9e476e9d9e20adfcf98fe27d10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (40049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e449f805afcfb2fba113d1ab3e1378a7b58fdf8b22cc87b911a4a182fc3c2d`

```dockerfile
```

-	Layers:
	-	`sha256:0f212b0700e0f5b2546bd3f4528c404fc495776c75af7e08b1e6a5474bb16e22`  
		Last Modified: Thu, 05 Nov 2026 20:01:54 GMT  
		Size: 40.0 KB (40049 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull espocrm@sha256:1b7d37866b6ec8fb2aedb3f0daf98648905b8b748c4d3f2e7585beaa0a2800c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113490784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35844fd82aceca526f428c25c691b96895688a652c63a29cc05d0bdea9570527`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 05 Nov 2026 19:30:43 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 05 Nov 2026 19:30:43 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 05 Nov 2026 19:30:43 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 05 Nov 2026 19:32:17 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:32:17 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 05 Nov 2026 19:32:17 GMT
ENV ESPOCRM_VERSION=10.0.11
# Thu, 05 Nov 2026 19:32:17 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Thu, 05 Nov 2026 19:32:17 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:32:26 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 05 Nov 2026 19:32:26 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:32:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:32:26 GMT
CMD ["php-fpm"]
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
	-	`sha256:ac00aeb0ec9636556b12c3e0054ab29633b857775463e85341a8c2cd55b822dd`  
		Last Modified: Thu, 05 Nov 2026 19:32:37 GMT  
		Size: 522.5 KB (522545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a427f5b16c7ca13a33e0a7ab47066fa18b0310d10525b999363928b09a3d78`  
		Last Modified: Thu, 05 Nov 2026 19:32:37 GMT  
		Size: 4.5 MB (4464402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd5a298083bb8d8c61be681004e57952300998a2e0011d82e226cd3eddc2429`  
		Last Modified: Thu, 05 Nov 2026 19:32:37 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfbb424718a7a3948cceb6b8f74f6f3b3a655f52a999d73e4a58861a40a7c90`  
		Last Modified: Thu, 05 Nov 2026 19:32:39 GMT  
		Size: 73.7 MB (73717381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3764afa00a8b7ea3cf1bfe512581a49ce0311b8bf99b1b4b1970723bf805797c`  
		Last Modified: Thu, 05 Nov 2026 19:32:38 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:3ff1ac193160730e7ed9c1f8c7508b09ed5d7695c739f4ab1de151d8a3d1118a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f0869e01c0e1ebd378037fd21a5146af433d18f87a85d242e616957ea1c27c`

```dockerfile
```

-	Layers:
	-	`sha256:d532041d2fa651e1d8d51d9b82c07ac941952356523076bdb82367070b990f19`  
		Last Modified: Thu, 05 Nov 2026 19:32:36 GMT  
		Size: 40.2 KB (40200 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:2e7fc4c7df63e13975031478eca25a8d8b6754ab1cd54c73e479df18389398b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111962438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226210c54595192ebf764b4c7d59c4edc9c4e0712d6ba1bc1bde43c0fc351292`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 05 Nov 2026 19:41:39 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 05 Nov 2026 19:41:39 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 05 Nov 2026 19:41:39 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 05 Nov 2026 19:43:13 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 19:43:13 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 05 Nov 2026 19:43:13 GMT
ENV ESPOCRM_VERSION=10.0.11
# Thu, 05 Nov 2026 19:43:13 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Thu, 05 Nov 2026 19:43:13 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:43:23 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 05 Nov 2026 19:43:23 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:43:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:43:23 GMT
CMD ["php-fpm"]
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
	-	`sha256:f97faa9e4c108bbaec29571d5be1d4265d36418e54a25014949bd0564624ab4d`  
		Last Modified: Thu, 05 Nov 2026 19:43:33 GMT  
		Size: 479.6 KB (479600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2b5daeb1d7fbf83dcccc93c51ddd339a0ef25eab0e7620c7a62e770f82966c`  
		Last Modified: Thu, 05 Nov 2026 19:43:33 GMT  
		Size: 4.2 MB (4242096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eca42eb595c3cf9643210a425eecd9292a1c14894cc26bb97e231d587f17b3`  
		Last Modified: Thu, 05 Nov 2026 19:43:33 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925b8ad281c987299dc98867a70cbe6c058f033301e7d85e4651672723485f06`  
		Last Modified: Thu, 05 Nov 2026 19:43:35 GMT  
		Size: 73.7 MB (73717311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7febe0ecca2f80678a249568e01b921fcf72731a74bcc5e88ec9b2b70180cd`  
		Last Modified: Thu, 05 Nov 2026 19:43:34 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:a61a3d83ec9856498af194999367382e0a08b01eef763b0a4deeb53a50aa3100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a2222bef289c85249eb806de2055c7f66b1486a9ab750437c9417d0a42eb11`

```dockerfile
```

-	Layers:
	-	`sha256:9ded289fcb916db0ba7c166b326778a1a11b678ac64e7e11aa02cca822600c75`  
		Last Modified: Thu, 05 Nov 2026 19:43:33 GMT  
		Size: 40.2 KB (40198 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:4f020aeee03e3326c2c2216f44e01b46986d6fe290b46316ec191bf2b4847cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115598432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28a6f13719345189048d8d459f06eef015a878c1a5d1a6fc0f2a27d7d3856e`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 05 Nov 2026 20:17:00 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 05 Nov 2026 20:17:00 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 05 Nov 2026 20:17:00 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 05 Nov 2026 20:18:24 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 20:18:24 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 05 Nov 2026 20:18:24 GMT
ENV ESPOCRM_VERSION=10.0.11
# Thu, 05 Nov 2026 20:18:24 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Thu, 05 Nov 2026 20:18:24 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 20:18:33 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 05 Nov 2026 20:18:33 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:18:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:18:33 GMT
CMD ["php-fpm"]
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
	-	`sha256:5d575c5349da521e459fb5584cc919e528b4ecda49ce593770afb13349a2f680`  
		Last Modified: Thu, 05 Nov 2026 20:18:44 GMT  
		Size: 581.8 KB (581778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a93e50ffadf5d77337ed1a73b84d321c987f6c2e1516c5a24d8f10c1f3e4a0d`  
		Last Modified: Thu, 05 Nov 2026 20:18:44 GMT  
		Size: 4.7 MB (4744405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a9889819bd43d24b1150e13c8c2fd40924d5ab36da1d4adbd082a008d0b7e6`  
		Last Modified: Thu, 05 Nov 2026 20:18:44 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdc6f277ae02ca091dade1258dee5a60ebd7dab8fbadf4bb57ade883de5ea31`  
		Last Modified: Thu, 05 Nov 2026 20:18:46 GMT  
		Size: 73.7 MB (73717307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f562f04257a25e8bb696c9b3a422f368ae577f285ffcae4e9216a5c6198ee043`  
		Last Modified: Thu, 05 Nov 2026 20:18:45 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:368517704f7dfa5f74771d40d0ceea4ff285a21441255cd57f55ee3a4343cb04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc72e93fff596b58d0c8e563a83fcc7bbc4f28736a20abc4c572f36b23163aaf`

```dockerfile
```

-	Layers:
	-	`sha256:1453f6ffe931df3b473352d6249ef8f7f9d47b83ce8d4bf746ec0e128067e401`  
		Last Modified: Thu, 05 Nov 2026 20:18:43 GMT  
		Size: 40.2 KB (40246 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; 386

```console
$ docker pull espocrm@sha256:121962dab29ee200e4e40e31bc975122f4c02c8dce994715cf8ebcddff567ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116088050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b638d85ac8fa4db295a75620ac215a07da2f63db5a59b26a8ab41cb8146fb3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 05 Nov 2026 18:46:16 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 05 Nov 2026 18:46:16 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 05 Nov 2026 18:46:16 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 05 Nov 2026 18:47:26 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 05 Nov 2026 18:47:26 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 05 Nov 2026 18:47:26 GMT
ENV ESPOCRM_VERSION=10.0.11
# Thu, 05 Nov 2026 18:47:26 GMT
ENV ESPOCRM_SHA256=cdd04f7efa52a59025ef824c75b06e0a84cf986724a8c5bc4b56fcd2ce8e0ab1
# Thu, 05 Nov 2026 18:47:26 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:47:34 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.11.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 05 Nov 2026 18:47:34 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:47:34 GMT
CMD ["php-fpm"]
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
	-	`sha256:5b847907527fb6dc94b1d2706fb712ca6f3a98381c5b858035f04f8f182913a4`  
		Last Modified: Thu, 05 Nov 2026 18:47:43 GMT  
		Size: 530.2 KB (530173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1eced3a7e11b53f668bcc1e8cd0d92a390bc9812ac871ad85edfa112850a55d`  
		Last Modified: Thu, 05 Nov 2026 18:47:43 GMT  
		Size: 5.0 MB (4954146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c823c64d6f915f76e6593b86ab8f3c82fdf1fe1218e6bfa6e277f1605458e067`  
		Last Modified: Thu, 05 Nov 2026 18:47:43 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56761296de0b6f2ea81f77dcf6ceab952290bf82ed642c6773dcdd597e52b7bf`  
		Last Modified: Thu, 05 Nov 2026 18:47:45 GMT  
		Size: 73.7 MB (73717329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd36a5578660364f74f0abe5c385bc13e3ddc422b85fd171f1a05a83b7d7249`  
		Last Modified: Thu, 05 Nov 2026 18:47:44 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:a5c1efd3cabbd87d8fbe6c68b00a42b6ec483d71c20913486d9c43788afa71aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (39991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4662880ec3297dd4df5c5c45f30461055f29be71082527aa1872025885892a`

```dockerfile
```

-	Layers:
	-	`sha256:65ebbaf8345f20f950fb40b53bc33d66ab0f8e040b9ce1879b61f31b831997b6`  
		Last Modified: Thu, 05 Nov 2026 18:47:43 GMT  
		Size: 40.0 KB (39991 bytes)  
		MIME: application/vnd.in-toto+json
