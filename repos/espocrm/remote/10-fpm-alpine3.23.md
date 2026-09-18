## `espocrm:10-fpm-alpine3.23`

```console
$ docker pull espocrm@sha256:3ea5a0d3753572e356acef2d3a5c4dd58ab972bcdcc8988df7d3f4240e6c20ab
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

### `espocrm:10-fpm-alpine3.23` - linux; amd64

```console
$ docker pull espocrm@sha256:875b4399a66da94db828d93d4f283745815b893ce9d0f00adce52adcba41eca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115816434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca676299c6cb836f5b58e8ca18bbe045833894bd7fa8f7f6faaa66a56def5ec7`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 17 Sep 2026 22:23:30 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 17 Sep 2026 22:23:30 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 17 Sep 2026 22:23:30 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 17 Sep 2026 22:24:29 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:24:29 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 17 Sep 2026 22:24:29 GMT
ENV ESPOCRM_VERSION=10.0.8
# Thu, 17 Sep 2026 22:24:29 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Thu, 17 Sep 2026 22:24:29 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:24:37 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 17 Sep 2026 22:24:37 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:24:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:37 GMT
CMD ["php-fpm"]
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
	-	`sha256:67ad185c1dc7f584590067e9660fef988d071272684804571e671caacc38decf`  
		Last Modified: Thu, 17 Sep 2026 22:24:46 GMT  
		Size: 520.0 KB (519993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815cc864a7267b1aaf0493a197c3aca11997a9a5e39f95d2fc8a8826f9b43b92`  
		Last Modified: Thu, 17 Sep 2026 22:24:46 GMT  
		Size: 4.8 MB (4803488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13986688841a9ea82fa7f62e1323499e322935e0cf88593148bad799d896c4cd`  
		Last Modified: Thu, 17 Sep 2026 22:24:46 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be6d7f8d7eb49477c35e93fb967bcdee019d08a634754019d7374a1e8a5ff51`  
		Last Modified: Thu, 17 Sep 2026 22:24:48 GMT  
		Size: 74.0 MB (73963822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0a36109f0cfae779296e9bda59afe2097a8f2915a08a40868ebe61c249268a`  
		Last Modified: Thu, 17 Sep 2026 22:24:47 GMT  
		Size: 3.4 KB (3398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:749068bdac0b5e847c2ff940425c88f3b9e105f6e570199ca23ada9210d16180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (40038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec281b21682facce99bb372c878b85172a284a1b1e61c33556be42da96fa5be9`

```dockerfile
```

-	Layers:
	-	`sha256:5dac2948d83777f4080e7b77a976666574fb7b6f85296058cbdc46198927b5eb`  
		Last Modified: Thu, 17 Sep 2026 22:24:46 GMT  
		Size: 40.0 KB (40038 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull espocrm@sha256:39cfe3bad9947cc82e4b7203490e025156dcfc0e85bf0f9174400a6551b1019a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113574789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a327d7a19bf57a78cfe2e35b2d0c9284ffda39c7126077aa9152dad3de80a7f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 17 Sep 2026 22:37:44 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 17 Sep 2026 22:37:44 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 17 Sep 2026 22:37:44 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 17 Sep 2026 22:39:15 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:39:15 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 17 Sep 2026 22:39:15 GMT
ENV ESPOCRM_VERSION=10.0.8
# Thu, 17 Sep 2026 22:39:15 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Thu, 17 Sep 2026 22:39:15 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:39:25 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 17 Sep 2026 22:39:25 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:25 GMT
CMD ["php-fpm"]
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
	-	`sha256:6c701c9f0f7dc6d49ad4dac005f71e84e565e546e895ef166958e229d787b7e8`  
		Last Modified: Thu, 17 Sep 2026 22:39:35 GMT  
		Size: 522.6 KB (522603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604410136d56d76910e1595e4bccca73a8fcea6afce32dc40b7ee44845786d2`  
		Last Modified: Thu, 17 Sep 2026 22:39:35 GMT  
		Size: 4.5 MB (4454661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1157c3f10e2bbd248e93653611bb571b3d894ad9d29199899447be5fa1fdf1ac`  
		Last Modified: Thu, 17 Sep 2026 22:39:35 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856dbb75435ad1e3d4647c8f8ae0d7b1d71055c2fa33212b5dbeeb41edbb5297`  
		Last Modified: Thu, 17 Sep 2026 22:39:37 GMT  
		Size: 74.0 MB (73963750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd11bb07ed124f7c0b1f459e8dc9d6fea88a6e7b4e66ae952661ee1eee295a1`  
		Last Modified: Thu, 17 Sep 2026 22:39:37 GMT  
		Size: 3.4 KB (3394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:e9dd2fd48cec94c6ed17df50bd8d7fe11416dec4bf53b18d28a464542aed3f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b993a9a5f4450ec733cca87bea020944c13de47d2904a9aa360442717b51329`

```dockerfile
```

-	Layers:
	-	`sha256:306433d87d34c9f0fff5a9b83a85bded3d3f6c4d2ec94b149c095b46cfb7a87f`  
		Last Modified: Thu, 17 Sep 2026 22:39:35 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:2bfd848f32934468acad20d77cda2a280558242c63db0672f51cc34608f6076d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112042964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88cba612591a4c09237b84aa45efb8c52e6ae905d470c9dad54618eb41e1ba7`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 17 Sep 2026 22:38:35 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 17 Sep 2026 22:38:35 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 17 Sep 2026 22:38:35 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 17 Sep 2026 22:40:06 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:40:06 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 17 Sep 2026 22:40:06 GMT
ENV ESPOCRM_VERSION=10.0.8
# Thu, 17 Sep 2026 22:40:06 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Thu, 17 Sep 2026 22:40:06 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:40:16 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 17 Sep 2026 22:40:16 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:40:16 GMT
CMD ["php-fpm"]
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
	-	`sha256:69ec703e765c69ddb59d1df1d79e1acecfdf439eb44b2f6c44d218a859b3fb05`  
		Last Modified: Thu, 17 Sep 2026 22:40:26 GMT  
		Size: 479.7 KB (479717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdf4261f61cafb975bd9e129ab573fba9caaa33d1b38eb498b6cb58ee0c2590`  
		Last Modified: Thu, 17 Sep 2026 22:40:26 GMT  
		Size: 4.2 MB (4231230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5562bbe3e5cfb03773ac6dcffb021ea30347d0f5ef8bf17c174bdab216e7ebd5`  
		Last Modified: Thu, 17 Sep 2026 22:40:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e71bf7ea4d0aa8b1c844c544c347d6b4af394ffa4533f480ac33b2c68b5d16`  
		Last Modified: Thu, 17 Sep 2026 22:40:28 GMT  
		Size: 74.0 MB (73963862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3e6c89dceaef3c88bc199ac795a7bc07f39961e89fbfb526c74ae0ac5e0aa5`  
		Last Modified: Thu, 17 Sep 2026 22:40:28 GMT  
		Size: 3.4 KB (3397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:f6f9c01f81989dc366464da23134c713809ba31ea3daedaf0f056c0b34b24f35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2685be88e5540f48c652762be766ca480908db0ebecab68b3bdd7591ee04144d`

```dockerfile
```

-	Layers:
	-	`sha256:8fab40148e5364c5e5a4ddfbc77708bf12be78e3568c24200b5beb9c1b6b6b96`  
		Last Modified: Thu, 17 Sep 2026 22:40:26 GMT  
		Size: 40.2 KB (40190 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:7ecdf0fd31e78604e945922caf9888eb4614d552f493ae6b59bb707500364b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115663191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c3dba8f5c26f651f95461d736c55d75aab8e51cfa276703d2b952becc33ac9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 17 Sep 2026 22:47:57 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 17 Sep 2026 22:47:57 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 17 Sep 2026 22:47:57 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 17 Sep 2026 22:49:21 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:49:21 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 17 Sep 2026 22:49:21 GMT
ENV ESPOCRM_VERSION=10.0.8
# Thu, 17 Sep 2026 22:49:21 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Thu, 17 Sep 2026 22:49:21 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:49:30 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 17 Sep 2026 22:49:30 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:49:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:49:30 GMT
CMD ["php-fpm"]
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
	-	`sha256:3e6b2a0555674258e9e5c73865b0fe4183bc4e2104003b30b404ed2f8f54600f`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 581.8 KB (581841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c581f1697e82e416d42b6fae2b6dbb6603f89d565a0db5a997cfa77903200bb0`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 4.7 MB (4734123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cda7aea9a8126f16ad89ca0ddc2a989439779d42a1dff441d895fc6cdebb11e`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2eff4ee516c758af205a7c6e9da713757d1a2d631d205c0848d115985fe5f3`  
		Last Modified: Thu, 17 Sep 2026 22:49:42 GMT  
		Size: 74.0 MB (73964033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ffc458735804927a962e2439c78c86badc0b21d36153565d8a1b79bddd5968`  
		Last Modified: Thu, 17 Sep 2026 22:49:41 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:bfee559369e0bf662641ad2e3824ee23c85344a6142c5cdf9c0892d69c3a970a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.2 KB (40236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409290d3e8716b75462b1ff070106482151a1c5c62849a100d626ce7619cfe31`

```dockerfile
```

-	Layers:
	-	`sha256:85d09a6abc2503ea8d94f61dfc89fecbc07b19fbd300b03b1be4fe644c65b6d1`  
		Last Modified: Thu, 17 Sep 2026 22:49:40 GMT  
		Size: 40.2 KB (40236 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:10-fpm-alpine3.23` - linux; 386

```console
$ docker pull espocrm@sha256:518f7bd2eafe105cc5695f0aada36ae6393b452ec57d9b341225d0a6f0c48552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116140371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7873b2b20667a6aa12c09e045a4d03b675f6052e8cea0662004394f480f0451f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Thu, 17 Sep 2026 22:22:02 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 17 Sep 2026 22:22:02 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 17 Sep 2026 22:22:02 GMT
RUN set -eux; 	apk add --no-cache 		bash 	; # buildkit
# Thu, 17 Sep 2026 22:23:15 GMT
RUN set -eux;     apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         postgresql-dev         libzip-dev         libpng-dev         libjpeg-turbo-dev         libwebp-dev         freetype-dev         openldap-dev         openssl-dev         libzmq         zeromq-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr/include         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;     rm -r /tmp/pear;         runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)";     apk add --no-network --virtual .espocrm-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:23:15 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 17 Sep 2026 22:23:15 GMT
ENV ESPOCRM_VERSION=10.0.8
# Thu, 17 Sep 2026 22:23:15 GMT
ENV ESPOCRM_SHA256=b40f1631cda1f49a1958734bddef5831a48363a1785bc9d57ff67ded58419163
# Thu, 17 Sep 2026 22:23:15 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:23:23 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.8.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 17 Sep 2026 22:23:23 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:23:23 GMT
CMD ["php-fpm"]
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
	-	`sha256:cd981ee2110037d39670f1d576e11ee0f3273f226633add5f5b4fa0004c0867b`  
		Last Modified: Thu, 17 Sep 2026 22:23:33 GMT  
		Size: 530.2 KB (530244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddfd9f7faa8c5b60b2bdeb375522c0f1190ca4c89f04840109164647fcf80d4`  
		Last Modified: Thu, 17 Sep 2026 22:23:33 GMT  
		Size: 4.9 MB (4941743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b186460a6457e20fdc3d2ea2dd8043ce20b0940138ebe984f265a3b0f2805ff`  
		Last Modified: Thu, 17 Sep 2026 22:23:33 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea06ef05a76dd0229257280ec83b199425eab3322b0e4f2da01a59172f9f2aa`  
		Last Modified: Thu, 17 Sep 2026 22:23:35 GMT  
		Size: 74.0 MB (73963762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebaae2d87925ff7a806f84ddd159677b6c9f590097bd10c976c171fa262dfeed`  
		Last Modified: Thu, 17 Sep 2026 22:23:34 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:10-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull espocrm@sha256:dc80e497d0477c26254fb1d6893d9c4c483afced824b2385edb2d62871a33551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 KB (39980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5eeef9bf481376d07e9f01f7a59a587f30adfa06b213ffb8251bbcd6bc8e94`

```dockerfile
```

-	Layers:
	-	`sha256:1e404d3cfcd76ef1418d5e2fa35c30682db499c878a8bfb6f9e598873b4725c8`  
		Last Modified: Thu, 17 Sep 2026 22:23:33 GMT  
		Size: 40.0 KB (39980 bytes)  
		MIME: application/vnd.in-toto+json
