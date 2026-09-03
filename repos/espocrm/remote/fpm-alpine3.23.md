## `espocrm:fpm-alpine3.23`

```console
$ docker pull espocrm@sha256:48e9f1c72c7c64aab3675a4d13e38a27ee4c8c9dbb329a9fffa3713e5d1f13eb
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
$ docker pull espocrm@sha256:a7348813c4ba2d82492fcd9a92c5eb87e7bff7e72620bae030008f05c7e61a69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118249364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfa392b40d8da3e2bd1f8592603c1af25d94bd71f474e7c7ea5113ec8e433b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 03 Sep 2026 19:09:55 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:09:55 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:09:55 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 03 Sep 2026 19:10:56 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 03 Sep 2026 19:10:56 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:10:56 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:10:56 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:10:56 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:11:03 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:11:03 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:11:03 GMT
CMD ["php-fpm"]
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
	-	`sha256:a256a28cdbabc5ccdbac4322e072706e0b2f85484fc942e7b81d298f9dcd4387`  
		Last Modified: Thu, 03 Sep 2026 19:11:13 GMT  
		Size: 520.0 KB (520004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a48fb3bfc693948bff7a7614d4d61241d62ca3de40f4681cffc3c2217a9f758`  
		Last Modified: Thu, 03 Sep 2026 19:11:13 GMT  
		Size: 4.8 MB (4803501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d453b8aff22ccb69b9cf8654c11d9ee3718adccc4d83d7199860522f8bd7acf8`  
		Last Modified: Thu, 03 Sep 2026 19:11:13 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9171035dc3b37b48b245fd12d9dd9fec31d152f284b1d9697c634b61ac2a06f`  
		Last Modified: Thu, 03 Sep 2026 19:11:15 GMT  
		Size: 74.0 MB (73954737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c505d10d7cee7ecc85e91689c9e561d4d2dc9be39fb64509e7f1aa1951ee5dc9`  
		Last Modified: Thu, 03 Sep 2026 19:11:14 GMT  
		Size: 3.4 KB (3393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:1562abdf579f362697d51598be53bec3d0e8511181ba8ac14fb10cf718c89ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (40039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1944dac1b80230313a8fa990bbd658e3975ff40b23ca8d5a5cde6641d6fb5d`

```dockerfile
```

-	Layers:
	-	`sha256:769d5c09e3dab8b6e38f5e5ec5c6dbc9df599b42809a6af489b1da586e6afce8`  
		Last Modified: Thu, 03 Sep 2026 19:11:12 GMT  
		Size: 40.0 KB (40039 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull espocrm@sha256:c5da35d4fe4f682edabe9dc15ed404e1a67e731b3aed21ccd29277f8798998bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115645360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a23862519b2edb06db23c7252a9b3e37f17a890c406785d7a21efcfaf9b0c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 03 Sep 2026 19:07:43 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:07:43 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:07:43 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 03 Sep 2026 19:09:16 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 03 Sep 2026 19:09:16 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:09:16 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:09:16 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:09:16 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:09:26 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:09:26 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:09:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:09:26 GMT
CMD ["php-fpm"]
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
	-	`sha256:4545f23b1e3427a54ff548e0bac98e5f02e8ec899617947d336028d0bdc52e1f`  
		Last Modified: Thu, 03 Sep 2026 19:09:38 GMT  
		Size: 522.6 KB (522635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3fa2492da2e6a84d5094a251176a692f5b805edc5108a774e3e8281be1a1ad8`  
		Last Modified: Thu, 03 Sep 2026 19:09:38 GMT  
		Size: 4.5 MB (4454503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de167ab7efb1b9aa3d300db6b0ea06f9867d45b6ba7dba37be505a95d489d7a4`  
		Last Modified: Thu, 03 Sep 2026 19:09:38 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8727d9b8162c81b532e845c706a54e84884f83458454a353d0f2f9357d048471`  
		Last Modified: Thu, 03 Sep 2026 19:09:40 GMT  
		Size: 74.0 MB (73954789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf3354f9814b0e80245f211d805ab2b9563244ffb5da9dd07ca19c2dd828c56`  
		Last Modified: Thu, 03 Sep 2026 19:09:39 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:8d190d383a50510306a9631ab9bf97086fc5baf67cf94ef75f829a29dadbbbc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4838f10b60532dfcefc9067f7902b868906ba186228b960ac89a0b664b64008f`

```dockerfile
```

-	Layers:
	-	`sha256:cabbe0e56118bca8186b8ddd75da1711fbf382473a521bed4da01bf31affc8c9`  
		Last Modified: Thu, 03 Sep 2026 19:09:38 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:5163d0cc037011eceab580ae871dfbe45a89e928e06d2baa4e2081b6dfdf7086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113956489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8672bdd56824c7e009a32a25a2506ba93c66bf7a439fb922bcbcc4afda9c93`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 03 Sep 2026 19:06:33 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:06:33 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:06:33 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 03 Sep 2026 19:08:03 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 03 Sep 2026 19:08:03 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:08:03 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:08:03 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:08:03 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:08:12 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:08:12 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:08:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:08:12 GMT
CMD ["php-fpm"]
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
	-	`sha256:d2ad55507b7154bf50b44e2de041791d3358a2d3f8e85f114f0fc645b4b009d6`  
		Last Modified: Thu, 03 Sep 2026 19:08:23 GMT  
		Size: 479.7 KB (479678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a64cca2fea46f1656833462841308046edd0135c62d2abab0e8ca0eb43979a4`  
		Last Modified: Thu, 03 Sep 2026 19:08:23 GMT  
		Size: 4.2 MB (4231136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8355206c0f87bced94eb8c4986de2df154fbd4318952aebb5d3d0374f9a517ac`  
		Last Modified: Thu, 03 Sep 2026 19:08:22 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d40174c1414745d6d5433ed90a013c5057b2e6f02d57621fa33fead602a91e4`  
		Last Modified: Thu, 03 Sep 2026 19:08:24 GMT  
		Size: 74.0 MB (73954860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d79ca1a560601ee5d85d262ec92e55bca24f3b5fde196f3d582c86af4e0c8f`  
		Last Modified: Thu, 03 Sep 2026 19:08:24 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:05c66afa2448b519b6dc675b90478bb4b9d31ae97d7b9aadf0f22632325fbd57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4334adb749bed97f246d0e3add22dd58bc0c08e96ffde1f1b061192cd03ae77b`

```dockerfile
```

-	Layers:
	-	`sha256:0e2666053748eee9346fad97d0d088b211a8806ae231a232d03ef59e67474267`  
		Last Modified: Thu, 03 Sep 2026 19:08:22 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:05589bd4908eb3c6d29c01c8d70e5597de556b88cfc2b544de9f3cf9e4cf91e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118397506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab480ef54c3a0fd0d3a05d26df67a49642864373d4701dfc1d2d07914c3798bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 03 Sep 2026 19:18:38 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:18:38 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:18:38 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 03 Sep 2026 19:20:00 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 03 Sep 2026 19:20:01 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:20:01 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:20:01 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:20:01 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:20:09 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:20:10 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:20:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:20:10 GMT
CMD ["php-fpm"]
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
	-	`sha256:2af3ee0f971d6edaa6802582c32326479eda5c89ba285c4b236bf8aa5009453d`  
		Last Modified: Thu, 03 Sep 2026 19:20:20 GMT  
		Size: 581.9 KB (581853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249527c0c604296c46960b38dcd6bacad9daf1d1837df305de8e3a270a4d8b3`  
		Last Modified: Thu, 03 Sep 2026 19:20:20 GMT  
		Size: 4.7 MB (4734032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d06ab6fd69cc667fa65d87d21ce3cd49267f07da8d45b061107c4e3ef67a6e`  
		Last Modified: Thu, 03 Sep 2026 19:20:20 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c147ba72aeefbf5cf53810ebaadbf1de342516059f3bec1b2b71dfd087838d`  
		Last Modified: Thu, 03 Sep 2026 19:20:22 GMT  
		Size: 74.0 MB (73954780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fbc975b2a69628ac1680d8b36b1356f8d956117cc9321cda8ca53507102584`  
		Last Modified: Thu, 03 Sep 2026 19:20:21 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:0d39bc37a83a56478ee02a96141c618d359b0c10d2d2ee3736b924b325f83fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed84d93f3510036321bd34f56ce8abb61e59fe9ba8a163f29badb753065f3693`

```dockerfile
```

-	Layers:
	-	`sha256:e348f58f7d1f70f79e633c04fbcbfe20044a39c548d1f0fc8e42c7cf79e219c9`  
		Last Modified: Thu, 03 Sep 2026 19:20:20 GMT  
		Size: 40.2 KB (40235 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-alpine3.23` - linux; 386

```console
$ docker pull espocrm@sha256:d519a8ec5f9420ea07d1a978e01fc2b9fc1ce90a62b7f935bf11dc73b669659a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118373336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfe307a6ebc083463a0fc9be00e3ebf9fa92150ca4e19697421e6bb3b7c97cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 03 Sep 2026 19:08:12 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:08:12 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:08:12 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 03 Sep 2026 19:09:26 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 03 Sep 2026 19:09:26 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:09:26 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:09:26 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:09:26 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:09:35 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:09:35 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:09:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:b78c962215fb04ea01a65978e4b6d5d8218cd8a9e9a0ffa156c92b08d7b89116`  
		Last Modified: Thu, 03 Sep 2026 19:09:44 GMT  
		Size: 530.3 KB (530264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8da2333af3a84ca82ad923573124a6fd719ca5ea391d610b213f735b383fa55`  
		Last Modified: Thu, 03 Sep 2026 19:09:45 GMT  
		Size: 4.9 MB (4941538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e8388627441d07221d84adb9025cc5aa211ded4f33c18e28788d0367f6834e`  
		Last Modified: Thu, 03 Sep 2026 19:09:44 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095333bdd4e9e412500bb5cfe709a335c0b8552cafc95b4595f66772fc30365`  
		Last Modified: Thu, 03 Sep 2026 19:09:46 GMT  
		Size: 74.0 MB (73954810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40895bc1fd1fae00e0e95669d51df9a3f056ea04b4f46d0de442ecf3adb9af9`  
		Last Modified: Thu, 03 Sep 2026 19:09:45 GMT  
		Size: 3.4 KB (3398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:aa2508f148aba0173d2ab6c537fac18399b75410a9b8670334b371ee75b64d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (39981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6552f2467283c539c09eb4a4b99b6ada2e8a8d7d0d5c7a8132d7c5a26bdd927e`

```dockerfile
```

-	Layers:
	-	`sha256:48481b13c6abe19c3578552206c462ed429f67001a1e2f21a3305aaa7446e30b`  
		Last Modified: Thu, 03 Sep 2026 19:09:44 GMT  
		Size: 40.0 KB (39981 bytes)  
		MIME: application/vnd.in-toto+json
