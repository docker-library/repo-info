## `adminer:fastcgi`

```console
$ docker pull adminer@sha256:17e2596d4647c1e5a4f6dc5fde4dd91812dc412dc9792cb4242788d946f2e734
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

### `adminer:fastcgi` - linux; amd64

```console
$ docker pull adminer@sha256:2093ec8dc48dfb6c5e1e7b00def501d14dda25b47c10100b074101da23566b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41463878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5662c47081d6c34f73e43bb9bb5b97f129f25b20d372d95af4e10cd09c472d75`
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
# Thu, 19 Nov 2026 14:59:25 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:59:25 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:59:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:59:51 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:59:51 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:59:51 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:59:51 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:59:51 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:59:51 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:51 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:59:51 GMT
USER adminer
# Thu, 19 Nov 2026 14:59:51 GMT
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
	-	`sha256:9a40ee6d2a8ad1a9d357034198df5630db08f15fc70fd2d00a1292e145ea4e9b`  
		Last Modified: Thu, 19 Nov 2026 14:59:56 GMT  
		Size: 301.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da78adfe9b401ace64fa114fb1ca21d16aab18e059cb8368fd968c2890e09fe`  
		Last Modified: Thu, 19 Nov 2026 14:59:56 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fab6d89cd2bec79ff4722b210f357c1e4be82a3a1b6955f5570c031c61f59e`  
		Last Modified: Thu, 19 Nov 2026 14:59:56 GMT  
		Size: 1.5 MB (1468020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d62bee961a6947cdc20eac24d8cb498671a6939f8ef3ce90604c951c2dd654`  
		Last Modified: Thu, 19 Nov 2026 14:59:56 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cccb8cb9c6b7fa699a11a496a7fc136d6e41b9a527856f10357881e8e228a2c`  
		Last Modified: Thu, 19 Nov 2026 14:59:57 GMT  
		Size: 673.9 KB (673900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d832ebd8117c187cf433540727a82376bcd6a9193ae8d235a0aea25e6c3b69`  
		Last Modified: Thu, 19 Nov 2026 14:59:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:5ae4f81c5f2ee28773dce5f6c1b3f68dd93bd3e4e4a1d31c3504611d9043b9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (34010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56543830149d0084971aa76338641e45c54f638c0b613c6d7e592ff1c1eeb6d9`

```dockerfile
```

-	Layers:
	-	`sha256:551b9161b7b7ff5de3632ac4db94ba99e024a61855dc4a7caf079786fedbb349`  
		Last Modified: Thu, 19 Nov 2026 14:59:56 GMT  
		Size: 34.0 KB (34010 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:7b96b7af9e7338a87a3aab7a9514d65d7d514684593ecdcc9e2ab0817b6e3d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39178230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2f6e3e69331190f3284371ece61abf9af48942f48e71d6a71e92d50e770002`
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
# Thu, 19 Nov 2026 15:47:04 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:47:04 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:47:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:47:43 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:47:44 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:47:44 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:47:44 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:47:44 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:47:44 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:47:44 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:47:44 GMT
USER adminer
# Thu, 19 Nov 2026 15:47:44 GMT
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
	-	`sha256:64027b07513da96af94b071f675be6d0e87f0a228e759c9ea42bd9c37cd18338`  
		Last Modified: Thu, 19 Nov 2026 15:47:48 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8d675c8466cfa636270466b00583394515d54f07afed23edf14068db11721c`  
		Last Modified: Thu, 19 Nov 2026 15:47:48 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717e1da3cdc57aa38c9b14eb6bc34859256a6dcbe2b87c7e19f28948cd89ccba`  
		Last Modified: Thu, 19 Nov 2026 15:47:48 GMT  
		Size: 1.5 MB (1464073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee6c90cd5a5db1cb02b3883a94881e59c547abfaecfd7f94931ff111bc20f4`  
		Last Modified: Thu, 19 Nov 2026 15:47:48 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b17a117289a7dd146b25b723de691a2e1f578a1fd178fbb3d4cb6ba7b277759`  
		Last Modified: Thu, 19 Nov 2026 15:47:49 GMT  
		Size: 673.9 KB (673904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64bd4e32decec02592f037148ae791e0513f73324bdaf6eb2fc7479bfa53165`  
		Last Modified: Thu, 19 Nov 2026 15:47:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:5507bacddac9dc5fdcf610bb86c667f004acc124424c4ef2294578f9ca404859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595ed7cd54bde2b0e35d35992ae45b2f103a7ae027a47ff0e988961a4b19d5d4`

```dockerfile
```

-	Layers:
	-	`sha256:5e037ca437826a2ebd54215ce03d516dffda262a57c6cdb38320b9b74860d48b`  
		Last Modified: Thu, 19 Nov 2026 15:47:48 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm variant v7

```console
$ docker pull adminer@sha256:22e9d5776373c10f076e701c8687eef0c3f67c6124db7270562a6db1af9d1ef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37600326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d296d2c57259573233a9bf0a5d47b026b8f550d130310be917569d8750d62a5d`
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
# Thu, 19 Nov 2026 15:02:44 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:02:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:03:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:03:18 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:03:18 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:03:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:03:18 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:03:18 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:03:18 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:03:18 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:03:18 GMT
USER adminer
# Thu, 19 Nov 2026 15:03:18 GMT
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
	-	`sha256:fb65820d90f48a24b0b2110df85f392551aff3428770a51985f546b7553d4036`  
		Last Modified: Thu, 19 Nov 2026 15:03:22 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c82cf2e2360c5fab6e336f2962ce4888a5fa04d08592df7cc1d5e29d0f937a`  
		Last Modified: Thu, 19 Nov 2026 15:03:22 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae8285e8ea1f0ca22356dbbb7362ffbfa8168f970d7700eb0b7dd7cc767bc5c`  
		Last Modified: Thu, 19 Nov 2026 15:03:23 GMT  
		Size: 1.3 MB (1313994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9feeb072fecf656fd5a4df286fb82d64a3d991ed567bdd5fce69482bb1bd97`  
		Last Modified: Thu, 19 Nov 2026 15:03:23 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ef309357174750bdb18a35116cffda404594643c4535a9850942a1ba0262a0`  
		Last Modified: Thu, 19 Nov 2026 15:03:24 GMT  
		Size: 673.9 KB (673897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5fb28127e878ede8e70d48183cef7ed8ec1342e246c6b4fbc0323574a18e47`  
		Last Modified: Thu, 19 Nov 2026 15:03:24 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:6fc7c9695e79fd907b0b742398c66cf6b255bb1205dc01e68777d7cdaa8d71a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8aeb3a04e24cf54b5cdd2f6210d11fc4a11d4722f919ae0cff36acb81be5105`

```dockerfile
```

-	Layers:
	-	`sha256:6dead0db3f9ec2b1bf4d94d4aa8ffa8e2c1863aa0ff0b61bbe8af58d7db6ea16`  
		Last Modified: Thu, 19 Nov 2026 15:03:22 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:964cba2a8e74d9de60ce5e39748bca4eee3ffc3a985eb2f8d55c8bb396d6f8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41638385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b0a4a4e55eeff853ff7633374f5b98cc195d755208ebe988e0bc12bed327ed`
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
# Thu, 19 Nov 2026 14:56:37 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:56:37 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:57:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:57:11 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:57:12 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:57:12 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:57:12 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:57:12 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:57:12 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:57:12 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:57:12 GMT
USER adminer
# Thu, 19 Nov 2026 14:57:12 GMT
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
	-	`sha256:acff7d1c94cb2fa2d314483ee29b199cd0e6eba53a6170ddf8c6b464e3481a45`  
		Last Modified: Thu, 19 Nov 2026 14:57:16 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fc969a12c7791479da835da4a982baee59c32ed5000cc534469b3faaf053e5`  
		Last Modified: Thu, 19 Nov 2026 14:57:16 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928a17a17427be95fbbae7b260d0670db33c7bd04fc839bfe973e32522c1fafa`  
		Last Modified: Thu, 19 Nov 2026 14:57:16 GMT  
		Size: 1.5 MB (1480098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930c8ba933c7f2c3656eef86c670db08f9cd084a8d9f9c3fd05ec92cac2502ee`  
		Last Modified: Thu, 19 Nov 2026 14:57:16 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ed0f36268f3c3909f907937e03a8f1347f6fa321b954dd2ea88047042ca418`  
		Last Modified: Thu, 19 Nov 2026 14:57:17 GMT  
		Size: 673.9 KB (673899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c215049a6a3cb18a73780d67c90086095c2a9c8f4a61f96c517eaa55f0e955`  
		Last Modified: Thu, 19 Nov 2026 14:57:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:d49620794c065eca354c5882e5d7a22785a558093465d6ad4173d41e1dd6366d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107209c48f6338d7e8b13a0a0881cd30aae9cff031567f1223d157701a3481f3`

```dockerfile
```

-	Layers:
	-	`sha256:11c0c0da69f9aee4050bef226d0de5bc9d967a33602030db840859d31da1384f`  
		Last Modified: Thu, 19 Nov 2026 14:57:16 GMT  
		Size: 34.1 KB (34148 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:4ef8601df58fdb455b63d26a30c1a9d85bc16dc6d1b9c7f623eb89031300ca95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.5 MB (41507461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27806e6326c64550813df6da7599c22ac835d782c7a074dc1a4ac41d9e1192a9`
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
# Thu, 19 Nov 2026 14:58:13 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 14:58:13 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 14:58:42 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 14:58:42 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 14:58:43 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 14:58:43 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 14:58:43 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 14:58:43 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 14:58:43 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:58:43 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:58:43 GMT
USER adminer
# Thu, 19 Nov 2026 14:58:43 GMT
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
	-	`sha256:1d1a1f4adc80725c9d93e76299c3a197f84498d4c373db493804bf342547a6de`  
		Last Modified: Thu, 19 Nov 2026 14:58:47 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183b46ed930afb0f331b0846754ac34f995aa0f709b28d475ce676bf5d28865a`  
		Last Modified: Thu, 19 Nov 2026 14:58:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224a65290a8d39e5cba196e2d455d1ff7cb23a00e9863a84be324a577413aecf`  
		Last Modified: Thu, 19 Nov 2026 14:58:48 GMT  
		Size: 1.5 MB (1496471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d28b3e80d5865db58c36bd088b65a80f3aba2ed8ab73d08ae99468c0017000e`  
		Last Modified: Thu, 19 Nov 2026 14:58:47 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6d075a5d06d63e7363e864f989f136770b2a89a6d72c82548c9ad9a894a0dd`  
		Last Modified: Thu, 19 Nov 2026 14:58:48 GMT  
		Size: 673.9 KB (673897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b5a47bb6034d608d79582244958017c875b4cc6b324ff87b446af82aa233de`  
		Last Modified: Thu, 19 Nov 2026 14:58:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:478bfad82df966f007556ab56c07f504f8709a4a4ff5f52034539f38d3f53418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (33978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de6fa6045a593d2efd223461d59e2eedfd226fc5dab026a29b5aa64673b8774`

```dockerfile
```

-	Layers:
	-	`sha256:1de9dfc9b74dc93c3d171f0dc375d7ce1a58ba1c4fa6cf4a9cbf4afcd238cf08`  
		Last Modified: Thu, 19 Nov 2026 14:58:47 GMT  
		Size: 34.0 KB (33978 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:b223081cdfd888562bfa86c893c07b5db8f647c2a82ab316aafce2e5119b8b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42576018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17cdaa2e900ecff8a53e62b5fa528d553b1e12a09b83a53b9ba0e6addf36de28`
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
# Thu, 19 Nov 2026 18:16:55 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 18:16:57 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 18:16:57 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 18:16:57 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 18:16:57 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 18:16:57 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 18:16:57 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 18:16:57 GMT
USER adminer
# Thu, 19 Nov 2026 18:16:57 GMT
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
	-	`sha256:6ed6fe867dc52ad1c495d08f2501b54f4d89b7420b1d8ddd383d3d1240ba018b`  
		Last Modified: Thu, 19 Nov 2026 18:17:07 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6451ed1116a49d4f2498ae1aa3244255fc6e1e41b752af511bfa26b1b100d255`  
		Last Modified: Thu, 19 Nov 2026 18:17:08 GMT  
		Size: 673.9 KB (673902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed106f28d5844e976cc8682e3928f41dea7cf0c3da8bebbadae36b0470315b6`  
		Last Modified: Thu, 19 Nov 2026 18:17:08 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:fe70c7cf861836b90df40a82ad8deb12188e3aacce150f747f5d594ddab0683e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbd7dac01e29fbac232cd8c77c1f393264fc9466f6321a9027350ad63e06a7d`

```dockerfile
```

-	Layers:
	-	`sha256:70f33ff083441834fa7c8c30b974f1db6a2fcf2c57d5738737b2ee742a9724ac`  
		Last Modified: Thu, 19 Nov 2026 18:17:07 GMT  
		Size: 34.1 KB (34055 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; riscv64

```console
$ docker pull adminer@sha256:3cdfc072a9b4b3daa9834e852d66932fe465320cd4ab85ea51991a31895eef9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38069391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af6d878d321d6a7c398bf63b7f5742b3242785b40234b5f49489a43d0bcf8ac`
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
# Mon, 16 Nov 2026 03:10:08 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Mon, 16 Nov 2026 03:10:09 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Mon, 16 Nov 2026 03:16:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Mon, 16 Nov 2026 03:16:08 GMT
COPY *.php /var/www/html/ # buildkit
# Mon, 16 Nov 2026 03:16:10 GMT
ENV ADMINER_VERSION=6.3.0
# Mon, 16 Nov 2026 03:16:10 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Mon, 16 Nov 2026 03:16:10 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Mon, 16 Nov 2026 03:16:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Mon, 16 Nov 2026 03:16:10 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 03:16:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Mon, 16 Nov 2026 03:16:10 GMT
USER adminer
# Mon, 16 Nov 2026 03:16:10 GMT
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
	-	`sha256:eaecdabea3f7cf778c9f9553b0eb01909c671aaa976f16135e68e1379506e759`  
		Last Modified: Mon, 16 Nov 2026 03:16:24 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef22304cffbc72d2b43d82761ee245c34c350f0255021ba543ae5ba5e2a1f3b`  
		Last Modified: Mon, 16 Nov 2026 03:16:25 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68797ba1dc3ea707d47c99bfc10d36c701b1641d74d1b561b0fc892978ebb1c2`  
		Last Modified: Mon, 16 Nov 2026 03:16:25 GMT  
		Size: 1.5 MB (1489792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a687c2fe59cf9dc7dcc3400f42b53df429d16119545705d7c2b46a6d0cfdca`  
		Last Modified: Mon, 16 Nov 2026 03:16:25 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3c59d925f9c007b9f621e80ef5e8a729ce476274f89557aa2d2ab476894250`  
		Last Modified: Mon, 16 Nov 2026 03:16:26 GMT  
		Size: 673.9 KB (673904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2f31ea0d99b72930c70b4eb28c9ab8349cfa5d382ad8d9589a00f01d081a9`  
		Last Modified: Mon, 16 Nov 2026 03:16:26 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:607f94c1d80aba2e1ad705c5f729c21a8b98dc8500eafd4635c8274241f57a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da552e6571b994fd310d00c103439836e5c598cc4fb544c4d488cfad84f3bdff`

```dockerfile
```

-	Layers:
	-	`sha256:3d95e1d0ee3292296102396c92c30e74fa9c24c1b051d3d993fa4bb3440fc169`  
		Last Modified: Mon, 16 Nov 2026 03:16:24 GMT  
		Size: 34.1 KB (34055 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:fastcgi` - linux; s390x

```console
$ docker pull adminer@sha256:c75b481efba166170c02f21ec6bcf5d006e3734b56763b2b2169bfcf57da1ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41606291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8d8c7c9dd92bda69a805f3ecb0bd3c01a9251274b8f71c9602ad2aafeaa524`
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
# Thu, 19 Nov 2026 15:26:44 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 19 Nov 2026 15:26:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 19 Nov 2026 15:27:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:27:11 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 19 Nov 2026 15:27:12 GMT
ENV ADMINER_VERSION=6.3.0
# Thu, 19 Nov 2026 15:27:12 GMT
ENV ADMINER_DOWNLOAD_SHA256=641e1a31e8cc333a309e202ef9446e1fd38c2069ed5f9ee509b80d70089d0503
# Thu, 19 Nov 2026 15:27:12 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=651353bc14d125b548c429cc3ffaa30b97c8b0f86b1b1692138a35a2047fba3a
# Thu, 19 Nov 2026 15:27:12 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 19 Nov 2026 15:27:12 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:27:12 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:27:12 GMT
USER adminer
# Thu, 19 Nov 2026 15:27:12 GMT
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
	-	`sha256:e3d41fa70be9ffea1929252db0fb9a5e36427ee3ec468248aa9390ca16df46df`  
		Last Modified: Thu, 19 Nov 2026 15:27:19 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2783eb921c0a3695b9f1b06e0220bfcb33fa2304a8371164eb2de7b6f6dce335`  
		Last Modified: Thu, 19 Nov 2026 15:27:19 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aeede4ddde9e5075275b2ec69948e81f10009540076d4b79ea3df413e82801d`  
		Last Modified: Thu, 19 Nov 2026 15:27:19 GMT  
		Size: 1.5 MB (1534937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1230f8fde267caa296e1648bb0a25f0ca2dd2f3ea3cfc487f2e82e3dd11f6`  
		Last Modified: Thu, 19 Nov 2026 15:27:19 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7827c4bf8e639edbce98c030c1b9517e059b06c5075544282042f5962409330b`  
		Last Modified: Thu, 19 Nov 2026 15:27:20 GMT  
		Size: 673.9 KB (673906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c718279fdfd19773bcf981e061298efb372e81a1e10c1744aff40f8b0ca8cead`  
		Last Modified: Thu, 19 Nov 2026 15:27:20 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:52702c9b578ce4d78fa989544096cf76bda925d5483424ff58807fac5a69db26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.0 KB (34011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34cb793b09d4dd6b405de20442bbd0e12fcc9b54b15a95d3974f7c3dc74de8a6`

```dockerfile
```

-	Layers:
	-	`sha256:836a1c392ab998a87a16e6c278af551e338b3c7f14932be2a4a6d8b5490cf17f`  
		Last Modified: Thu, 19 Nov 2026 15:27:19 GMT  
		Size: 34.0 KB (34011 bytes)  
		MIME: application/vnd.in-toto+json
