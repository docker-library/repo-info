## `adminer:5-fastcgi`

```console
$ docker pull adminer@sha256:a6e3ea6a38eedd8e421e27d69778ad43b0379cc16e193b656a6f2e9f2a7af5b5
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

### `adminer:5-fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:8e7d115ac1cc22dd0ab63183df8b2c3924280c558c60e523d869982223b5c5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41388144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72187331b13952c386fa3c13b389b0ec95fd2298f068182e6dab9fc7cb6b6f67`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:34:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:34:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:34:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:34:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:34:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:34:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:37:36 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:37:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:37:36 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:37:36 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 14:58:58 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:58:58 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:59:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:59:23 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:59:24 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 14:59:24 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 14:59:24 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 14:59:24 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:59:24 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:24 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:59:24 GMT
USER adminer
# Thu, 19 Nov 2026 14:59:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ebc06c32d905c5d4bb7306a95c31c25e4ff859d66f0544a8c0d00940b7d4e2`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 6.0 MB (5974109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291ae8562b49d2fb31bd1dd36a2ef6a7d0407f99b9ffa07ce0d2decc840eed79`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035441d6ce965261faa7ef6b7a08d0e3dddf23f4eefd9973f3d5d62da034d842`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec09b1c9a409c6c82fcf6379b3540debc55d4e5c27851c4e43a3a0950e42cf`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 13.9 MB (13934105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf59848d04237d7edcb057f7c1c76d02d30ce299697241176171ab5014facbc7`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944d04c6024b7bd4cb76ba6944e44d356a098ca32107e6f5c5a11efbf44db999`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 15.5 MB (15498319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c792c0c6fdea309b93a0f0ac9f6a3b21ae5d1a7daf8c20452d4abbb082f5d5`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604c7957c1fba81229bc298ee606bd7d77887eb26fccc1ca56ac31506443c373`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 22.4 KB (22382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e7a1eb1d95522dfd1336166950d3e83f5919518c23ede1ba749a7c4b7b3808`  
		Last Modified: Thu, 19 Nov 2026 14:37:45 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60b2b03cfe97a1e60f1a4b5a08dee8cce8a633302b1a034c5a0d6e045f5e388`  
		Last Modified: Thu, 19 Nov 2026 14:37:46 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040daab3174e24a8fbdef76658e4f843bbb6e3cf9465d99d070011291b5e56e`  
		Last Modified: Thu, 19 Nov 2026 14:59:28 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47967beb541c9811449daed82f15440ceb01adec2ef2ea984e2201fcc7ad4a7c`  
		Last Modified: Thu, 19 Nov 2026 14:59:28 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74003ea241ee5fadd884fccbf5dd2c8d2ab57b2c87a1c90baddc5ed4466720e4`  
		Last Modified: Thu, 19 Nov 2026 14:59:28 GMT  
		Size: 1.5 MB (1468027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b089d2bea45d0634c8554d7fff7a2eb233df11be2456b31b60c8335e63fde`  
		Last Modified: Thu, 19 Nov 2026 14:59:28 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47cb07d324742a929bb9dd024bd27895ad745fc743d1ee76cb85cddd58276741`  
		Last Modified: Thu, 19 Nov 2026 14:59:29 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab43d81979e7487b652c4b7d9d3a72bdd6bd533727a84982196712d9a3d934b`  
		Last Modified: Thu, 19 Nov 2026 14:59:29 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:06a48a6cc9158e2ec6e2ca1a131ceb20baa20050b189beef7b4ce00244faf608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129903e65f5f80d68c8c964e52d5e4f9cae2d25e98ea4a0342a4ceabccd598b2`

```dockerfile
```

-	Layers:
	-	`sha256:88734d3f163ad535d45587fd62bc2c7fabf27d63065494ac156655af0c0199ce`  
		Last Modified: Thu, 19 Nov 2026 14:59:28 GMT  
		Size: 33.7 KB (33709 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:111f83b3e67477b5c3c0b5b0e072bac810b54a861911eb44d3c439e6f68f23c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39102459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2492ca70280a546155550de0e60dec01ccacce266224ba4af40c7ae2ab1704da`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:49:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:49:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:49:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:49:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:49:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:52:49 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:52:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:52:49 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:52:49 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:47:21 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:47:21 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:47:58 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:47:58 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:47:59 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 15:47:59 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 15:47:59 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 15:47:59 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:47:59 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:47:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:47:59 GMT
USER adminer
# Thu, 19 Nov 2026 15:47:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13335f3c617ee7500f5ee26c9f499347f3621acfd1bffcf1329991693fa4fc67`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 5.6 MB (5566929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace733846d422103e2874cff3c9b2d7616dae72a34f19148d66b8ed3643593a1`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c247c0f71a42e01c8466509ed111398006973f9c904840e3773d672275debd`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b873a2c2f2a39533acf3026065dc27599a5107f48f42bb8aaf3d1d7e73d641`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 13.9 MB (13934123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f19fbb383aa964613839a23483be1ac1f1eda9c8fbd6d510b79e213dda8cfa`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6373807b77b42e897f5271ad36bfbc6fed7005da0758e2671945d4b0d1ac5277`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 13.9 MB (13919453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bad5104b32cd6f6eaf28c3241b20c19b426581d353ec065a96ad699c3d6e91`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a1b943dd7758edfdc451daf80c699bdfbbe37161ddc3221a8e180ec7265fc9`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26fdd3fd0a0e0ee49330a15bc693e7e800b893c414f4285b5d499bb92b4cc3e`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 22.2 KB (22187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e47ce417c4a54157271dd8352d3e2138f09cb410cda90f30e2168de6747e91`  
		Last Modified: Thu, 19 Nov 2026 14:52:57 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aee4bb69ab1b365d8743d16f3655681e4e585f8b017c50a1f01c5cdbdb1f64e`  
		Last Modified: Thu, 19 Nov 2026 15:48:03 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6406cb858d753d380e1b3af21421a0c438b8ce6a9143b9bb1301d409b7cfe674`  
		Last Modified: Thu, 19 Nov 2026 15:48:03 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2401a8cb471646517ab337418520ab074a5787358341fc166f9ad12037a4988`  
		Last Modified: Thu, 19 Nov 2026 15:48:03 GMT  
		Size: 1.5 MB (1464061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d181fcc5998410f0316153dcd10efa318d5f8d5d84875b5821913e63434f975e`  
		Last Modified: Thu, 19 Nov 2026 15:48:03 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6033edea38b2d5daa16cda519c489eeaada1d3000ecc72a4a3036e1c99db6284`  
		Last Modified: Thu, 19 Nov 2026 15:48:04 GMT  
		Size: 598.2 KB (598152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21e49f663b1408d09005fb759e64f21da387428eca69cc371834d872ca13354`  
		Last Modified: Thu, 19 Nov 2026 15:48:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:8f399969488ccd435abe26dc56eda7f8f6112bfa85e0a2f383c8cd4b327c5990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f16779863a60dc46873f7a743cd738bb5a41f6eb23608857481be087f9f9572`

```dockerfile
```

-	Layers:
	-	`sha256:da2f14c5a4bcaaf0e6cf63e2b4aadfa64d39712b71c5a49a40f9cbe725cbebed`  
		Last Modified: Thu, 19 Nov 2026 15:48:03 GMT  
		Size: 33.8 KB (33812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm variant v7

```console
$ docker pull adminer@sha256:9b6f71ac6aba8dde95b8cce19b3f780109b5ab504640adb0ddc0bd4b8abee953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37524593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b765961e5d3bf714822a691beaa1242c806fc78a64f4d7b398f70b27e24fbf`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:36:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:36:28 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:36:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:36:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:36:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:36:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:33 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:33 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:33 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:02:50 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:02:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:03:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:03:24 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:03:25 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 15:03:25 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 15:03:25 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 15:03:25 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:03:25 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:03:25 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:03:25 GMT
USER adminer
# Thu, 19 Nov 2026 15:03:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262751b61cc3a59f0af0ad90d2187b0e7e1912e412dcd9179f400ab890b3a514`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 5.2 MB (5211748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f52525c86724969d18711b457f854a880c2893558d374971659892d1e354f2`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5216a241b30bdadce6aab85cb351c30ff76d60b2f6224f2fafdfa0fc644113ca`  
		Last Modified: Thu, 19 Nov 2026 14:39:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce5c11110c9100c064b9d7e21bd0f6ee7f1a19ba657671cd85ef0419d172e22`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 13.9 MB (13934117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c98bf99602f3b0801ab91d9712b325aace02e35a97fd38123cafb912bcb6686`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38dfb012f13a3493f1bc78e46a8a945eb7c25d9c3ffc068ca55f5e03293fcd1`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 13.1 MB (13137499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98b3433eac770fc8d868724950d7aeda3c9a0a335a42f6ed9826ad40326a42b`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a129d8f10e7fba4cde9ce04e42c128aa71666b98e7ec46d63bd750eca7d9ba1`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759b27678e6e5d17871da0ddb2d489aa97de1e989f275669cc997430cd184bdd`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dfdf05d49a0834dfac0aa634cb54026211cc7cd72bd3c6d8e45390994916a7`  
		Last Modified: Thu, 19 Nov 2026 14:39:42 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038cab7ae35ffad566a366824a65faaaf166eeca178a59dee1f107913e4ec399`  
		Last Modified: Thu, 19 Nov 2026 15:03:29 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386e2607d4df83f5ceb9796e3ad77fc2d1ed67515648b7430a72216b1f0fafd7`  
		Last Modified: Thu, 19 Nov 2026 15:03:29 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f76ac2dca0fd586e94409f04d49d0989193e9a2a4d7898acddd2218e6c1aee`  
		Last Modified: Thu, 19 Nov 2026 15:03:29 GMT  
		Size: 1.3 MB (1314005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc323323566347d4970440de8950c1c3ca51742dc23e6c67286d8a2233764712`  
		Last Modified: Thu, 19 Nov 2026 15:03:29 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3516864a1b372a1f3f9a000ed3702d7624d42073591421828ca8430bb54861a0`  
		Last Modified: Thu, 19 Nov 2026 15:03:30 GMT  
		Size: 598.1 KB (598150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fde3163950e86751d7b6e08f4c5f4d5cb58cb99cda024c6b242a0da1161404`  
		Last Modified: Thu, 19 Nov 2026 15:03:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:7bffb70f6df6d09826dc4da3cee3302cef342b6934ea81517aa5bc6cf0a49052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2924a665d5dba607c0aa9be813a093b29474312a4b69a3087862a8ab9ce673c`

```dockerfile
```

-	Layers:
	-	`sha256:8d67d2bac36ea4ebb22cefdd08a6e82398e754a2b163bf414158a1834234918e`  
		Last Modified: Thu, 19 Nov 2026 15:03:29 GMT  
		Size: 33.8 KB (33812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:cdef87dd48fade31c42745652328dfe7efd5660d15a9ffa1dd15839c9dbe18f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f6fb1d66206f645cf90186c0274f59759d340001e72ce665bad75434e4bc5`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:35:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:35:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:35:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:35:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:08 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:08 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 14:56:48 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:56:48 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:57:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:57:22 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:57:23 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 14:57:23 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 14:57:23 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 14:57:23 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:57:23 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:57:23 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:57:23 GMT
USER adminer
# Thu, 19 Nov 2026 14:57:23 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a413d13b6471b10208b43389e2c2ed50b1327db15f312684a6f05485e06ab1e3`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 6.3 MB (6288551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a043643b5a084258b68d23c9c4f83e3faaeff01e9d5950ad24ee97693d061e08`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a513c86a8cb4fdedeca6cc8ee4c6399c851061beb10e9c2095ab12877add93b`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182d29f9a1cf26241289995349eeb453b8787261d9204709a94f2a8b2d351a68`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 13.9 MB (13934093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a19cd68f5d0c8303ecf396ac3b922200a2ad8c69403cd837fb378744b81057`  
		Last Modified: Thu, 19 Nov 2026 14:39:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c8717d24f7daf2dec97912ca83fa12e4b178c82485e4449e25144d5b1008b`  
		Last Modified: Thu, 19 Nov 2026 14:39:16 GMT  
		Size: 15.0 MB (15009762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b2d72fdc21ce69c1e203a824860d7cd715b046b75fa9c9722aa7d286351b4b`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0619526f6d5701676e8802668066488b214c5dd09c6f5c3a73d0d1cf989cdfce`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 22.2 KB (22197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f471018d4696a80552a9666236c22319eb7cba12b912613da79e7082ff6d04`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 22.2 KB (22214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68607d8b76519bec9487ed4b143d9baa80bd67443b542a112071e8cb9bcb4c21`  
		Last Modified: Thu, 19 Nov 2026 14:39:18 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8ede2fd89ec0d8c63b45e3520ee2c5cd7f7a8bb19524830fb920da42757ae3`  
		Last Modified: Thu, 19 Nov 2026 14:57:27 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b62a6495db7215f95116fffa97214047ccad47b5692806efa25dc4595e72d`  
		Last Modified: Thu, 19 Nov 2026 14:57:27 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9c28adb564d81127086df8975bc4cc06738829b0702fb00d6fe3cda8cd1905`  
		Last Modified: Thu, 19 Nov 2026 14:57:27 GMT  
		Size: 1.5 MB (1480089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87ae4454446453e2b2c98a0ad3922d5f9f9ed5078858a58254cfb1c5a7b514d`  
		Last Modified: Thu, 19 Nov 2026 14:57:27 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58088739c3c802be5a1b6694b50c2dab214c5152ba047bb7f56aa94109f87c6`  
		Last Modified: Thu, 19 Nov 2026 14:57:28 GMT  
		Size: 598.2 KB (598152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7445c0c024e2593236e8ab9e9da449e520f835a7b2410c7ac1ebe7a23bd63bf9`  
		Last Modified: Thu, 19 Nov 2026 14:57:28 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:24636e6a0f51ba22623cf9299b5099c4db574730504b77eac5a244699c756236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cb5b69e45b5b9e43280b0361118fa5ebdcc2ce9b5950c8ae3a8eac9167f25`

```dockerfile
```

-	Layers:
	-	`sha256:047d3a27f8995d86b6bddd61f0087f8e5a47729156ed429780cdb6eceb7a1aa0`  
		Last Modified: Thu, 19 Nov 2026 14:57:27 GMT  
		Size: 33.8 KB (33833 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:f7c2f29808161178a24427e5975d22a2c9ed126216543b059b1756be9d93b2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.4 MB (41431707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56b7778a9ce30081d488a24b43d28b5beb27c5e50882769300e7bd6e8314881`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:32:35 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:32:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:32:35 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:32:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:32:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:35:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:35:50 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:35:50 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:35:50 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:35:50 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 14:58:17 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:58:18 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:58:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:58:45 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:58:45 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 14:58:45 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 14:58:45 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 14:58:45 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:58:45 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:58:45 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:58:45 GMT
USER adminer
# Thu, 19 Nov 2026 14:58:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49c03b909afaf21ec06b0b7f70141b4d3dcc01d7207879fcc91d3035485fa96`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 5.8 MB (5820627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3e4606a1711293d1e8b6402fe85a51e7790cc11d1ff977c603b64d1e54cab1`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba4ba96155ad198fcdeebdaea6821e1c0f8fdb38414de5f194b96b2b4241f73`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61abb3cab28ca816e5e275e3f2ef6e041c8c8534957191b07026dcbcbc4d62`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 13.9 MB (13934086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e252089c348a85d503b656d073ed8e0ad2542577426ff90b804aa48055de9db4`  
		Last Modified: Thu, 19 Nov 2026 14:35:58 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8f5e272b0683fc15b360cfb3cf74506a2ed735bf53fc5575b95bebcf9c0d80`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 15.8 MB (15840251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60233d8218bbb97e2867ede4328b9ac43190912fb819744572e7e965f1b4127c`  
		Last Modified: Thu, 19 Nov 2026 14:35:58 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbc409576a740d20311c3b4a59d889a9825ff5e6905b2df6f91d8b601040af6`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 22.4 KB (22387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f90cdccc8f850e5e45e8d6f3b2265e5322b77e7ea4666451a1f0a620d455db0`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 22.4 KB (22400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f280cd15d44c113b13fee937a5f07954827e1167abf0a82123a9a8838d9c28`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc0ef832093063a2c0d2525bdb7288c2a51414d529377e62e725565f50c95bb`  
		Last Modified: Thu, 19 Nov 2026 14:58:49 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be43021ed957407c4ecabe3753e3ea37f06f43c51bbc298ec0396b67304574e`  
		Last Modified: Thu, 19 Nov 2026 14:58:49 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf8725ade4cc3145f3d5a6395bd1255a7da7155e75733e431ba2a61ff3dc015`  
		Last Modified: Thu, 19 Nov 2026 14:58:50 GMT  
		Size: 1.5 MB (1496469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b46aadba3466093b8277232d536eb4341f9960057d90f387845533712b6c8d6`  
		Last Modified: Thu, 19 Nov 2026 14:58:49 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff18aa7d474d0331361ae286d4c50d4fedd52d17b1fa105bd015e1a9458a28a`  
		Last Modified: Thu, 19 Nov 2026 14:58:51 GMT  
		Size: 598.1 KB (598149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d6c63b8a29512938648a04d93b327348887e25de3eb500b08b0ecc417fdd60`  
		Last Modified: Thu, 19 Nov 2026 14:58:50 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:a7c9e19925da27ee560eca8846902a04ffc72d09e22d707add91e9be1b5eef48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855551027f17ad575614505218437db3471ad719ac372020f2bb20e58326e9e5`

```dockerfile
```

-	Layers:
	-	`sha256:6def6d110fe5d9448a69b2d76612342eb6effac422eeb407d33bcdd8f8c45c1c`  
		Last Modified: Thu, 19 Nov 2026 14:58:49 GMT  
		Size: 33.7 KB (33681 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:931e3bd1fff5a12455339bb891221494686898d55e11f23be462473a295d9379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42500270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b61ff8402732c102c13fc8084069ece14d0a42a90e71e232abea144b6e8c5b`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 19 Nov 2026 15:37:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:37:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:37:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:37:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:37:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:37:08 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:37:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:37:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:37:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:37:08 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 18:15:51 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 18:15:52 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 18:16:55 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 18:17:02 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 18:17:04 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 18:17:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 18:17:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 18:17:04 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 18:17:04 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 18:17:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 18:17:04 GMT
USER adminer
# Thu, 19 Nov 2026 18:17:04 GMT
CMD ["php-fpm"]
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
	-	`sha256:ebd82323d8768c14db6c03cdbc07756e9c8fd71eaea0a3e0c97384594007cde2`  
		Last Modified: Thu, 19 Nov 2026 15:37:24 GMT  
		Size: 18.9 MB (18871601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79abea655f4952506782da2a91097abb7f31a3c965195fd2d90ae14b4e2a958`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3442f900840020371be5b34ade447c93b98ea8f9dab855d6eadc22f011310b0`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 22.3 KB (22253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351f48571d3ba944ae3d1b3a0a66327baa0eedfbca3ff14fc90297826e7b9880`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04ffc4b611af1e97dfe3d4f39dba9030581f50a1fdf0f7c8aa6ae71e8888abd`  
		Last Modified: Thu, 19 Nov 2026 15:37:24 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45af0cb5c751ecdfe4570c5c53cfda2f37dec4b53730c22360d27d154e1f10ef`  
		Last Modified: Thu, 19 Nov 2026 18:17:07 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577b2a5e28aa85650ae7043efbb485418e2edf578113299c340a109fbcedbe6b`  
		Last Modified: Thu, 19 Nov 2026 18:17:07 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98a32d4fc1a9ce8c244c73609bcc28243821acfebd765c2976d1630f558ecae`  
		Last Modified: Thu, 19 Nov 2026 18:17:07 GMT  
		Size: 1.5 MB (1540267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18edcad01df8d19445c3e6455dac9ad9315e6ab343f773d305e3671298b5c54d`  
		Last Modified: Thu, 19 Nov 2026 18:17:15 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8621d7422d25b98aba712cdfdd8584d048240d9c78d98c2ed282a94686284e2`  
		Last Modified: Thu, 19 Nov 2026 18:17:15 GMT  
		Size: 598.2 KB (598156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5bfa82df3af06123f0cabca74e5414840d27fe7f6ecc5ffbdfec4de266cf96`  
		Last Modified: Thu, 19 Nov 2026 18:17:15 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:f15b1d9f607d2c8b90eb694262de56c2afe37c55c9117b40051f35ccc5f868f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c8be56dd9fce555ce50b48fd18e73307b7ed13c27ea484f5a0f1b8564e691d`

```dockerfile
```

-	Layers:
	-	`sha256:3089e80170508eee1d763ef7c7b134c9f5e254a1a3b908692b2b2dba07faea01`  
		Last Modified: Thu, 19 Nov 2026 18:17:14 GMT  
		Size: 33.7 KB (33747 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; riscv64

```console
$ docker pull adminer@sha256:586a794c88747706c6273aeb333d3e3b5aad4205a75246f7889578df581646b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e7c8b35ed88f651e66bdb0d1e9922de8e2c21b05831c233c6c9cea2a029017`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

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
# Tue, 10 Nov 2026 15:20:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 10 Nov 2026 15:20:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 15:20:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 10 Nov 2026 15:20:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 10 Nov 2026 15:20:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Nov 2026 15:20:58 GMT
WORKDIR /var/www/html
# Tue, 10 Nov 2026 15:20:58 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 10 Nov 2026 15:20:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 10 Nov 2026 15:20:58 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 10 Nov 2026 15:20:58 GMT
CMD ["php-fpm"]
# Mon, 16 Nov 2026 03:25:48 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Mon, 16 Nov 2026 03:25:48 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Mon, 16 Nov 2026 03:31:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Mon, 16 Nov 2026 03:31:36 GMT
COPY *.php /var/www/html/ # buildkit
# Mon, 16 Nov 2026 03:31:39 GMT
ENV ADMINER_VERSION=5.5.1
# Mon, 16 Nov 2026 03:31:39 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Mon, 16 Nov 2026 03:31:39 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Mon, 16 Nov 2026 03:31:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Mon, 16 Nov 2026 03:31:39 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 03:31:39 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Mon, 16 Nov 2026 03:31:39 GMT
USER adminer
# Mon, 16 Nov 2026 03:31:39 GMT
CMD ["php-fpm"]
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
	-	`sha256:498b01681f3c9f49a461d03c634f43282483d388c81288b4f7e95a68810f40ad`  
		Last Modified: Tue, 10 Nov 2026 15:22:05 GMT  
		Size: 14.7 MB (14737798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc1d9206d700506d89bfdbf316e630c899bfdcd92d7a37a76441f2d2de50ced`  
		Last Modified: Tue, 10 Nov 2026 15:22:03 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c353b93e0044e6b678d4bf4fa845e6e23cf76103dc512e983a7944d7f809566`  
		Last Modified: Tue, 10 Nov 2026 15:22:03 GMT  
		Size: 22.2 KB (22201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaddeec2bde1da78fe55f3a3638e941bc89879e92375d89d5ad2da42de439a4`  
		Last Modified: Tue, 10 Nov 2026 15:22:03 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c141503a79723bb921cfa2699003f3b162135eabb2b32e321405ac009a4c88a`  
		Last Modified: Tue, 10 Nov 2026 15:22:05 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6242204c052636c39c6da3dde6338d2fb43fea440765f193bf284e9c12e3f03`  
		Last Modified: Mon, 16 Nov 2026 03:31:53 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7533a38ddc63440d70770452ea6916821bfe4c6bed7310c0ba26f9b57a72d49c`  
		Last Modified: Mon, 16 Nov 2026 03:31:53 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d9f03bf5e02ae54e2df0b2abdc13a327e5681148f34fff5956a2d29c2cbdc84`  
		Last Modified: Mon, 16 Nov 2026 03:31:53 GMT  
		Size: 1.5 MB (1489792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a06eaa51b74ac78cb63de4c55f53806e0bc58d106b492af2a02dd706eba090e`  
		Last Modified: Mon, 16 Nov 2026 03:31:53 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede125bcf28b566d2d75ceade7085d97ead901b8eccbfe61382d5e624709cf52`  
		Last Modified: Mon, 16 Nov 2026 03:31:54 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877bf11fd50dd203d52367e2cb34a0f3093af4e09a36f53a996afdaf304e033a`  
		Last Modified: Mon, 16 Nov 2026 03:31:54 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:64d6a0e1d8a0b22c08f7a9e59329ab4f148d1030ed4e16878216bd87eb475a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7f28d714ba8c9cd0949fc6b44bf173b71dad579d8584880df9e86521f1d44b`

```dockerfile
```

-	Layers:
	-	`sha256:eab67f000a67a9285b0444722698de817e6bf653954dbcafe694adca7d1e6d57`  
		Last Modified: Mon, 16 Nov 2026 03:31:52 GMT  
		Size: 33.7 KB (33747 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; s390x

```console
$ docker pull adminer@sha256:4ac31acc92f88c4670abc2892230f6b983d25ec7da43092b227a7e780106da57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41530550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b5a8e6f65e0e70e5c007215319618c6d74f09167412670a57287befc86de77`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:40:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:40:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:44:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:44:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:44:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:44:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:44:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:44:03 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:44:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:44:03 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:44:03 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:44:03 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:27:14 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:27:14 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:27:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:27:42 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:27:43 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 19 Nov 2026 15:27:43 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 19 Nov 2026 15:27:43 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 19 Nov 2026 15:27:43 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:27:43 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:27:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:27:43 GMT
USER adminer
# Thu, 19 Nov 2026 15:27:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618f633add7643f5dbf32937a509a5ada6699ff1a4c94641f87cbd1a0182a7bf`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 3.7 MB (3691032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7943a5fad4f7eb12144e901d291d5400736edab23f2ccd63ae3aade879b1f11c`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0fff43cfd9dc96d02abd83f96ccd039cef07b4dd33a7f229685ee2c32aa8c9`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3d3bd2c360087c9ba1310775feae3b5d512c1e44d1a21450a94baf204d8889`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 13.9 MB (13934091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b7fa1ecff4044ce9d29a320cca2ce1d57111c1a598410eb029916328615a61`  
		Last Modified: Thu, 19 Nov 2026 14:44:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75627ebe60854c106e6d38002741042e624c3bbe313cc96b0e47cdfced2f44a`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 18.0 MB (17990250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833e72a15e96648efae6cba043616513de8c139826a6ff4b6adac2f293c13878`  
		Last Modified: Thu, 19 Nov 2026 14:44:17 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96dcde42c8f75f80c667db9d62e2a00f4d81188091f15f0774c47e362680b31`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 22.2 KB (22198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d4043f1c602ca1a8643a6bd036054b4db031d0bcb215e15b725d4e1473b1cb`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2664613a17fa4c1b461d3e1b8de436df75b70d65b339158201dbd9203f283b77`  
		Last Modified: Thu, 19 Nov 2026 14:44:19 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e40f629580371b61c148f99d470d227cf9832262f1608bff4c3730285c4c896`  
		Last Modified: Thu, 19 Nov 2026 15:27:50 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7434df2f1d40e8f51bf27eb54fa57a24bca6e9bb2cea3c207e55ff7407fc6c75`  
		Last Modified: Thu, 19 Nov 2026 15:27:50 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557d27ee96978da16c4499aa83d019e17e7c2be3f48ff05f171162f915047bc0`  
		Last Modified: Thu, 19 Nov 2026 15:27:50 GMT  
		Size: 1.5 MB (1534944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b2e958b61d7b3d11e5f0e4119901fe38ca329402bbc5ec387e897535865257`  
		Last Modified: Thu, 19 Nov 2026 15:27:50 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2213b5faf43e349709e505856fb53828433bac4f284bac8e3eda9705141b9789`  
		Last Modified: Thu, 19 Nov 2026 15:27:51 GMT  
		Size: 598.2 KB (598156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d21948bd5494d51f8f8365074f1328bdc24121d57d69e3199bf5243c907780`  
		Last Modified: Thu, 19 Nov 2026 15:27:51 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:27756941b605d37fe6b02f8934434761e37601a56dd61129f5d1538293912920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7fe16b309625f821a5456f2c46312ab2d913b783efe169894000c3bfc23b88`

```dockerfile
```

-	Layers:
	-	`sha256:b0aa812333d98c9c66b430d2029f2a8da0117e020daa9121416761c7b77eb4ac`  
		Last Modified: Thu, 19 Nov 2026 15:27:50 GMT  
		Size: 33.7 KB (33709 bytes)  
		MIME: application/vnd.in-toto+json
