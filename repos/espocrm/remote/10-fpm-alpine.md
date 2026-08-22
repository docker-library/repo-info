## `espocrm:10-fpm-alpine`

```console
$ docker pull espocrm@sha256:36c82bb772882505ef0e2cb6417eb4552607f1e024ce2245b1be8e99af7f192c
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

### `espocrm:10-fpm-alpine` - linux; amd64

```console
$ docker pull espocrm@sha256:b946de77934db90519a18ee90a9edb9497cd1c4393a842e353a39b7d80f89dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116655415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2968b6dbd1c77ca4ebd28b048d210454990dfae688eb396f4bb4d479874884c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:34:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:34:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:34:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:34:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:34:39 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:48:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:48:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:51:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:51:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:51:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:51:12 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:51:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:51:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:51:13 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:51:13 GMT
CMD ["php-fpm"]
# Sat, 22 Aug 2026 00:01:03 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 22 Aug 2026 00:01:03 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 22 Aug 2026 00:01:03 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Sat, 22 Aug 2026 00:02:08 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 22 Aug 2026 00:02:08 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 22 Aug 2026 00:02:08 GMT
ENV ESPOCRM_VERSION=10.0.6
# Sat, 22 Aug 2026 00:02:08 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Sat, 22 Aug 2026 00:02:08 GMT
WORKDIR /var/www/html
# Sat, 22 Aug 2026 00:02:17 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 22 Aug 2026 00:02:17 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 22 Aug 2026 00:02:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Aug 2026 00:02:17 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b531b87dbcfb32098dee9c4c0f6f2bfe12dc5dec4afca0a0c983346a28e423`  
		Last Modified: Thu, 30 Jul 2026 22:37:48 GMT  
		Size: 3.5 MB (3465181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e0b11ff3b93f45ef397d80f49dad8d1161f1fc216548b32ec7ffaf8f1820db`  
		Last Modified: Thu, 30 Jul 2026 22:37:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365ef29f71ea43f8b8ab0d511b035273254257a8a9bc005d5b1a5a519650fbdd`  
		Last Modified: Thu, 30 Jul 2026 22:37:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a78753ff37e2ccdd173d2cdeed1b599031a57168ced7090e8027211415f38e8`  
		Last Modified: Thu, 30 Jul 2026 22:51:20 GMT  
		Size: 13.8 MB (13775191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d03841908c7dba8744101a8de50cf2f8eaf0b9c70ff81f140ed745b0378396`  
		Last Modified: Thu, 30 Jul 2026 22:51:19 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50de9f0522c83de903a9fe5274e19f9f0fca8427dd9cc22db1ba276746378cb`  
		Last Modified: Thu, 30 Jul 2026 22:51:20 GMT  
		Size: 15.3 MB (15328544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf3fa37d7a0499952e7e52597daeb2071b9ba15e553a8dfbb58ca8917461fa5`  
		Last Modified: Thu, 30 Jul 2026 22:51:19 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921334d184053b9c1ea6ef9a3d831816a3c6d6871264a700afb3f94e66637eed`  
		Last Modified: Thu, 30 Jul 2026 22:51:20 GMT  
		Size: 22.3 KB (22320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add95760490de5da756ee36ebcc660d69983dc4f613288b674272c4ccb283a44`  
		Last Modified: Thu, 30 Jul 2026 22:51:20 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb2c1bb152b49d25833ef76d64c7c45ba8ce9440a9811b5cbb09142614efe22`  
		Last Modified: Thu, 30 Jul 2026 22:51:21 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31d2a6203e8814e51ce64033ef0be7a5536c8d6ed0ff3dc16693865e02bbf31`  
		Last Modified: Sat, 22 Aug 2026 00:02:28 GMT  
		Size: 520.0 KB (519959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cefa79c95254a1780289c1fe0c961ff460898b0b33e313391c4116dd50981f9`  
		Last Modified: Sat, 22 Aug 2026 00:02:28 GMT  
		Size: 5.7 MB (5710053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390340c543a0cfcbb4f559728043c6ab509f43f1b0b5b76328d2e1582fe08c29`  
		Last Modified: Sat, 22 Aug 2026 00:02:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e244f0f69e2fc64dd8e0c773ec9606e0a65af463013092d4b784cb99941b4625`  
		Last Modified: Sat, 22 Aug 2026 00:02:30 GMT  
		Size: 74.0 MB (73950208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50df5173116fec1793e515ea4807d7bda1caf11508eadccbf2ee35fedcdade86`  
		Last Modified: Sat, 22 Aug 2026 00:02:29 GMT  
		Size: 3.4 KB (3398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine` - unknown; unknown

```console
$ docker pull espocrm@sha256:83efeea91be603fa9f86e2e0d59618e10a31aeb2a1c9ae907d01e958d434f2b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (40039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14881a7a2130e17a855a4e14405660c4f045eb2ede1d0b0d28ca264dc0176d75`

```dockerfile
```

-	Layers:
	-	`sha256:3b1ba79b22bda8e5a2d77d47bce0dcc11e6ee125adf643bd7b89c8c795a5221b`  
		Last Modified: Sat, 22 Aug 2026 00:02:27 GMT  
		Size: 40.0 KB (40039 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine` - linux; arm variant v6

```console
$ docker pull espocrm@sha256:2af37f39c30062bc457869096fa35f45f29f80aedfac1880e67c5cfe3b4f816b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114341761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22177a9bbb254c4f658d7880bebd418a070e6cd377356e9f6b74f6928b7518e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:45:49 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:45:49 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:45:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:45:49 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:45:49 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:45:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:45:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:48:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:48:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:48:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:48:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:48:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:48:53 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:48:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:48:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:48:53 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:48:53 GMT
CMD ["php-fpm"]
# Sat, 22 Aug 2026 00:02:32 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 22 Aug 2026 00:02:32 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 22 Aug 2026 00:02:32 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Sat, 22 Aug 2026 00:04:10 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 22 Aug 2026 00:04:10 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 22 Aug 2026 00:04:10 GMT
ENV ESPOCRM_VERSION=10.0.6
# Sat, 22 Aug 2026 00:04:10 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Sat, 22 Aug 2026 00:04:10 GMT
WORKDIR /var/www/html
# Sat, 22 Aug 2026 00:14:08 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 22 Aug 2026 00:14:08 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 22 Aug 2026 00:14:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Aug 2026 00:14:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07eb56d201d3c9b9a7b96ca4da6bdc91e7fce8c18cdb0f56f0a4253ec5f07085`  
		Last Modified: Thu, 30 Jul 2026 22:48:58 GMT  
		Size: 3.4 MB (3416209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb4b94c4eb1bda7f87e334808a1d63d23d9420b4417cfc3b4d6e58e57866c20`  
		Last Modified: Thu, 30 Jul 2026 22:48:58 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342bb9abd08b5c6237edd65e3c5030f0983e07764e95e356a68e702c9d739399`  
		Last Modified: Thu, 30 Jul 2026 22:48:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0854b25fee831473b419d0b5df98c8301d0f52930719b6b0f2c6ffb6e9f62d1b`  
		Last Modified: Thu, 30 Jul 2026 22:48:59 GMT  
		Size: 13.8 MB (13775223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4553c1bcf1c3e39e4df3f3c217fcec03c8475413f7d5f217bb181fb81a8fe5ea`  
		Last Modified: Thu, 30 Jul 2026 22:48:59 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46a82ccd368e788d33194e30ba1ec1f648d0f1b7a88a12338efdc3a39fb418c`  
		Last Modified: Thu, 30 Jul 2026 22:49:00 GMT  
		Size: 13.8 MB (13769453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42153bef1db9aef478a1580e3aae372e2319a2f0da3270f399b945317620f68f`  
		Last Modified: Thu, 30 Jul 2026 22:49:00 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5359f76bc2aa508da31cdf09362c3798c27f40406a9570763d26143792800912`  
		Last Modified: Thu, 30 Jul 2026 22:49:00 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ba493d7a3807b20e0081e29d34575a4b03bb8402041f57f0bf56c8bf95aafb`  
		Last Modified: Thu, 30 Jul 2026 22:49:00 GMT  
		Size: 22.1 KB (22145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0af6e18d793df5ea98e166e9f3aa44919cfa2199002ffabea07f5d73496fc4`  
		Last Modified: Thu, 30 Jul 2026 22:49:01 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8a6924e151df5325cf0956b09cd927d90884ee320f000c8cc425e55ce4e607`  
		Last Modified: Sat, 22 Aug 2026 00:14:19 GMT  
		Size: 522.6 KB (522592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d834eeb2bb900a7e6680dd14ba8d68171c215b03cb53b5a5bc81829d663732b`  
		Last Modified: Sat, 22 Aug 2026 00:14:19 GMT  
		Size: 5.3 MB (5294052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43ea2e1d6dd9e421ebca398a038162a72726a2c2fbf31c346c2062aa0863fc9`  
		Last Modified: Sat, 22 Aug 2026 00:14:19 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ffd85908295fef3633b46984b488c4fd123789372cda0b345e769146897d01`  
		Last Modified: Sat, 22 Aug 2026 00:14:21 GMT  
		Size: 74.0 MB (73950155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd0f4a25955d7175f498d920f2e88d921abb4f60b407aaa0d253aba60118e17`  
		Last Modified: Sat, 22 Aug 2026 00:14:20 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine` - unknown; unknown

```console
$ docker pull espocrm@sha256:0c62a87a0033a958f9261bb31ccecec89d2d76dd045cd785b8a0322961536656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3290fb5d1713436939c5c78c7e5a05879e7ca20bf673b1d15a2c9579624c683d`

```dockerfile
```

-	Layers:
	-	`sha256:886515cd43f285879c47e34b08b15a252460d6d0e2051e7e7e21442cfa66ce66`  
		Last Modified: Sat, 22 Aug 2026 00:14:19 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:0b7e9c9db2ed7fed82b5c401e554717114d6466a42e85b559a3341e4c274d7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112731763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a419602dabf68fdb9b2387791fd137c22b30b2bef457fb6e891dd9e5882b6180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 23:09:02 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 23:09:02 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 23:09:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:09:02 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 23:09:02 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:09:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:09:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:12:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:12:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:12:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:12:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:12:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:12:08 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:12:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:12:09 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:12:09 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:12:09 GMT
CMD ["php-fpm"]
# Sat, 22 Aug 2026 00:02:45 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 22 Aug 2026 00:02:45 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 22 Aug 2026 00:02:45 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Sat, 22 Aug 2026 00:04:20 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 22 Aug 2026 00:04:20 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 22 Aug 2026 00:04:20 GMT
ENV ESPOCRM_VERSION=10.0.6
# Sat, 22 Aug 2026 00:04:20 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Sat, 22 Aug 2026 00:04:20 GMT
WORKDIR /var/www/html
# Sat, 22 Aug 2026 00:08:15 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 22 Aug 2026 00:08:15 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 22 Aug 2026 00:08:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Aug 2026 00:08:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db08aca6ecec38934b559d554d6b2613467e03ced5320e931966af70e60cfbc`  
		Last Modified: Thu, 30 Jul 2026 23:12:15 GMT  
		Size: 3.2 MB (3230043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857df2247982978ca05649d60409613560e84197a7085de4ac734a8616cc0cfa`  
		Last Modified: Thu, 30 Jul 2026 23:12:15 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29378e84a22f0ef0b354d529baa8d21acb5ab95a81c4df0bc55bab7b81aedd53`  
		Last Modified: Thu, 30 Jul 2026 23:12:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c4dbd43de5a5c71e2dd4a27efb44d93355e3239d087c56a7c561d79f1f7cfd`  
		Last Modified: Thu, 30 Jul 2026 23:12:15 GMT  
		Size: 13.8 MB (13775231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd483a1039021aad376eaad26ae65e09c85d6f2b536424149164a64deaca00a6`  
		Last Modified: Thu, 30 Jul 2026 23:12:16 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b90cf06d8d74e145bd8d7fd417c9e38f8846b360acc92a50e071bcf6f8b870`  
		Last Modified: Thu, 30 Jul 2026 23:12:16 GMT  
		Size: 13.0 MB (12993583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdad13bdebee357a2ba603375200ad807faf0999937d6eec65379a469bfa997`  
		Last Modified: Thu, 30 Jul 2026 23:12:16 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86a5ba2f50981e1e49eecdb77ae9853884b2e957ae115c46a61fcdd638b619b`  
		Last Modified: Thu, 30 Jul 2026 23:12:16 GMT  
		Size: 22.1 KB (22145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5fa3abe82ec4f0e408272ea8d23f05c7558f76169a3257a075af9ab321c516`  
		Last Modified: Thu, 30 Jul 2026 23:12:17 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44bb9b44f734642c89b8650d696a717a201f33e9f77f18a4de3279e4eec92d55`  
		Last Modified: Thu, 30 Jul 2026 23:12:17 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b521f49277d5df06d9d884d539f7c20efed8606294d0e68fade75ca17de14c`  
		Last Modified: Sat, 22 Aug 2026 00:08:26 GMT  
		Size: 479.6 KB (479636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e443b7c2fd65e2f2d1dff9147be6b1d2e4293cd55adb0488e02fff4a14f1f228`  
		Last Modified: Sat, 22 Aug 2026 00:08:26 GMT  
		Size: 5.0 MB (4979742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244d8980ce2bc152f5d3a4bc5a494a7427333c58b1044cfd3008e94ac4e468df`  
		Last Modified: Sat, 22 Aug 2026 00:08:26 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3f7fc1bd43e5b430a61adb384efd508e52dcfc185e69f2f0ac6ddc5ccfce5f`  
		Last Modified: Sat, 22 Aug 2026 00:08:28 GMT  
		Size: 74.0 MB (73950166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8897776f3539a168c2b2d7238610caf4c2b98b8c241275871e113a261b14a7e9`  
		Last Modified: Sat, 22 Aug 2026 00:08:27 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine` - unknown; unknown

```console
$ docker pull espocrm@sha256:1b00a47d52edf85f77899ac33d5125d4e46c1df7b7471a0ea081e50019c51180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64332f05255068cd6c29820636fc21e35b34fcb70c153f1e57024c2513069e5`

```dockerfile
```

-	Layers:
	-	`sha256:5427af66ecc45d557480043f7eadf3ece1bc5a031abdc7ceee7946bbdcb405de`  
		Last Modified: Sat, 22 Aug 2026 00:08:26 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:54fed6cf6ce746ccedafbfb111001ee8ab2c7f03ae9d0a5fce778db3d6534991
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116481266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac1d1107554efd369da7420688ab3438f12e13e560d1e5a0f41d01b0e7c90ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:01 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:01 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:01 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:01 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:47:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:47:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:50:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:50:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:50:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:50:40 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:50:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:50:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:50:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:50:40 GMT
CMD ["php-fpm"]
# Sat, 22 Aug 2026 00:00:18 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 22 Aug 2026 00:00:18 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 22 Aug 2026 00:00:18 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Sat, 22 Aug 2026 00:01:40 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 22 Aug 2026 00:01:40 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 22 Aug 2026 00:01:40 GMT
ENV ESPOCRM_VERSION=10.0.6
# Sat, 22 Aug 2026 00:01:40 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Sat, 22 Aug 2026 00:01:40 GMT
WORKDIR /var/www/html
# Sat, 22 Aug 2026 00:11:22 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 22 Aug 2026 00:11:22 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 22 Aug 2026 00:11:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Aug 2026 00:11:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79661adbfeec60c21c35dfe361f67c60308a2565dde8006549d09220f0127ba`  
		Last Modified: Thu, 30 Jul 2026 22:50:47 GMT  
		Size: 3.5 MB (3475168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef811f212f79d7b42db9f6ef1f730490585d244d1326fd52cb1151ec3ce06d9`  
		Last Modified: Thu, 30 Jul 2026 22:50:47 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46fc8defaef741a6a9290871d2dea214bbbb4371ac624684fa0ff1eb71d7771`  
		Last Modified: Thu, 30 Jul 2026 22:50:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17dc114602c40a28ed31ace76c009f8eec317b14b0b15f3872cdd95d53285e91`  
		Last Modified: Thu, 30 Jul 2026 22:50:47 GMT  
		Size: 13.8 MB (13775198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0fe004be0bc89076da6867c503f2fe16c53ed3189a4ac240d4783d0d4e6cb1`  
		Last Modified: Thu, 30 Jul 2026 22:50:48 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ffb9d3c44e516c7d9968848bdecbe407dd558375f9f4a391f141ebd2d791ac`  
		Last Modified: Thu, 30 Jul 2026 22:50:48 GMT  
		Size: 14.8 MB (14833222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fcaae6a173d45a9585e7624b3a48a2d7f774e0972c3b615e7f9d909211af0ea`  
		Last Modified: Thu, 30 Jul 2026 22:50:48 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5be65db0bf4f151bbacec56dcb723a8c9fa60aaef8fa356db763c67b3055324`  
		Last Modified: Thu, 30 Jul 2026 22:50:48 GMT  
		Size: 22.1 KB (22148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544725d60ee1e007b163fe387c315064e990828e5356406ab31560cd569587bb`  
		Last Modified: Thu, 30 Jul 2026 22:50:49 GMT  
		Size: 22.2 KB (22173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddba1fe56280ebc10733d1f4d31b9105f07beb95291d94d626ba4fe58e9cc69`  
		Last Modified: Thu, 30 Jul 2026 22:50:49 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a527c28f87a64a27fb03dc5bdfc9f36a33682217da5e554c7a6176fb1a660bf`  
		Last Modified: Sat, 22 Aug 2026 00:11:32 GMT  
		Size: 581.8 KB (581830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc2121b09f032caef2afa9b191ffee138f44eac948ee16534940f94305e8d4f`  
		Last Modified: Sat, 22 Aug 2026 00:11:32 GMT  
		Size: 5.6 MB (5622140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd12fcb4cbd73658a592f7ec2013ea4525754a65821a1b71cdf5cd59fcc389ed`  
		Last Modified: Sat, 22 Aug 2026 00:11:32 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d6f615bb6af1200de0a54c65c031203f5e4c63efc30c2c7865c97abc61bee4`  
		Last Modified: Sat, 22 Aug 2026 00:11:34 GMT  
		Size: 74.0 MB (73950330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a7fde4422adcf9b7f02a15de06e55877070813ec253a5ff8ea55e75035e8dc`  
		Last Modified: Sat, 22 Aug 2026 00:11:34 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine` - unknown; unknown

```console
$ docker pull espocrm@sha256:c54b0f1f62a0b3c0f5641967cc3b101067bc414d646aef5bac69a713af42a493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545f2dc09970542e87f0fb6535a49a2d2a0c689b5e3082d00e74d6bd3e3b9c30`

```dockerfile
```

-	Layers:
	-	`sha256:cf50088c983dfc9e7404329d5d6f9cac5a445ca676e29d802c256c60e4b0c1a4`  
		Last Modified: Sat, 22 Aug 2026 00:11:32 GMT  
		Size: 40.2 KB (40236 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine` - linux; 386

```console
$ docker pull espocrm@sha256:5b30365264eb20e1bc5d74df93536c538725deda8e22dd88f02b4150bd8cc59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117047668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d492626cc001932fa006f35fe4e93e774f013c2337743631837c6ac6a3edbc71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:49:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:49:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:49:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:49:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:49:07 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:49:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:49:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:52:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:52:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:52:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:52:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:52:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:52:46 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:52:46 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:52:46 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:52:46 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:52:46 GMT
CMD ["php-fpm"]
# Sat, 22 Aug 2026 00:00:38 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Sat, 22 Aug 2026 00:00:38 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Sat, 22 Aug 2026 00:00:38 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Sat, 22 Aug 2026 00:02:00 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 22 Aug 2026 00:02:00 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Sat, 22 Aug 2026 00:02:00 GMT
ENV ESPOCRM_VERSION=10.0.6
# Sat, 22 Aug 2026 00:02:00 GMT
ENV ESPOCRM_SHA256=88bcb177dbe38b79ec3c13d491d78b727dc14fe18fc91deea1bfa72b313f7fb4
# Sat, 22 Aug 2026 00:02:00 GMT
WORKDIR /var/www/html
# Sat, 22 Aug 2026 00:03:15 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.6.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Sat, 22 Aug 2026 00:03:15 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Sat, 22 Aug 2026 00:03:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Aug 2026 00:03:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f21e2101c005de7eec7dda74f18156e4afc7932263723f5457692e40b82859`  
		Last Modified: Thu, 30 Jul 2026 22:52:54 GMT  
		Size: 3.5 MB (3495194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180334cbc3d020b47950dd5764c6bd531adb7b84790850063df2cfa2b325ae0f`  
		Last Modified: Thu, 30 Jul 2026 22:52:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f3f90726165b1ddc7cc9eeaf636c32c10b18863dd28a61c1788926b26f5454`  
		Last Modified: Thu, 30 Jul 2026 22:52:53 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0222931e04f329c3722cae194d9d625e3614a1f2c12a1d7dc1dbf25c520a043`  
		Last Modified: Thu, 30 Jul 2026 22:52:54 GMT  
		Size: 13.8 MB (13775174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5daffb454c26044138de36f99793f0fe5543990172f879048f341063badf659`  
		Last Modified: Thu, 30 Jul 2026 22:52:54 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2220e6214571ce43b1dd0b8b98a72169785073c18887da5068e31e98667d92`  
		Last Modified: Thu, 30 Jul 2026 22:52:55 GMT  
		Size: 15.6 MB (15640180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c95c705dd9ab17c409d747d5d3ec1055494ded36a7d8fda273e2dc819c778a`  
		Last Modified: Thu, 30 Jul 2026 22:52:55 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d61e5c3ac24560235049e1840db8761e846261b0c42d073ff1aa44336d923b`  
		Last Modified: Thu, 30 Jul 2026 22:52:55 GMT  
		Size: 22.3 KB (22320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3286efd38fe0373cfb41ec4bb9fe81d77c67cfe0d2a5ab72229b58ad0a8b76f`  
		Last Modified: Thu, 30 Jul 2026 22:52:55 GMT  
		Size: 22.3 KB (22326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73e3f993876e8605a7de7f935401d4a64541ef21c7fe0cfd5a36901ce1276a0`  
		Last Modified: Thu, 30 Jul 2026 22:52:56 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc73f801c61749e14a6368f04b19b2d28b85f8759322fea7ad3fbe7205e55a9`  
		Last Modified: Sat, 22 Aug 2026 00:03:25 GMT  
		Size: 530.2 KB (530239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddf95cd706abd0bb429a81fbae620ea64fc58c8e5fc63f32e4cdba0d8fbccbd`  
		Last Modified: Sat, 22 Aug 2026 00:03:26 GMT  
		Size: 5.9 MB (5927766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5fa65dd708f6d1e0f1afc7523079cc7a86c2e0d089bcb5c6d9882e8f68ca3`  
		Last Modified: Sat, 22 Aug 2026 00:03:25 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619651bc44cccdc97779b5221585cf8e5bb39abf7c4f8fb4de59ea02a6dcb0c8`  
		Last Modified: Sat, 22 Aug 2026 00:03:27 GMT  
		Size: 73.9 MB (73949272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326a33e8110446f014cc3f0d2e7263a51d0553aa78a51c55dbc204310a268c99`  
		Last Modified: Sat, 22 Aug 2026 00:03:26 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine` - unknown; unknown

```console
$ docker pull espocrm@sha256:9f8e1b6179e9624861b9c240823ea5c68f42b8ac69fc818a65fbbbbea5e0fd26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (39980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bbd6644cf70b472ecad4196656328721a3d13a65e890e13641f303d408b9ef`

```dockerfile
```

-	Layers:
	-	`sha256:c4aaa60b33f720c8ed1cdf6ac5e890b51ab5242128865c9680dedf862f311724`  
		Last Modified: Sat, 22 Aug 2026 00:03:25 GMT  
		Size: 40.0 KB (39980 bytes)  
		MIME: application/vnd.in-toto+json
