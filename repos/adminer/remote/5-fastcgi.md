## `adminer:5-fastcgi`

```console
$ docker pull adminer@sha256:ae4e3049a17420c93dd53c6792811a1f3052aeeb582f732fd729334ff36d869b
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
$ docker pull adminer@sha256:8df2207879af7419bc1b4c4d8a7d338a644ba523b4c145ce6efdc0956c4b51f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38638246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3761306f00b0d246294058db57be3f6368ffb4bdc6a3174aba810ad663b0f4ec`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:17:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:17:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:17:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:17:15 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:17:15 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:20:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:20:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:23:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:23:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:23:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:23:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:23:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:23:49 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:23:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:23:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:23:49 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:23:49 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 22:20:48 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 17 Sep 2026 22:20:48 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 17 Sep 2026 22:21:10 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:21:10 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 17 Sep 2026 22:21:11 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 17 Sep 2026 22:21:11 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 17 Sep 2026 22:21:11 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 17 Sep 2026 22:21:11 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 17 Sep 2026 22:21:11 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:21:11 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:21:11 GMT
USER adminer
# Thu, 17 Sep 2026 22:21:11 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5def3334bfb08561a2e08111876fd3df813ded6d1ea4fcd05234852f8c16ef`  
		Last Modified: Thu, 17 Sep 2026 21:20:30 GMT  
		Size: 3.5 MB (3491155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce68c25f837ec9d6fcb5bf613aa0ed1b38c17ce13b25b59f3fcaf3d6fe592583`  
		Last Modified: Thu, 17 Sep 2026 21:20:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555ff954ae7c14641a5b17db81559830b48e0ed881e7509c54b35021aba9a11d`  
		Last Modified: Thu, 17 Sep 2026 21:20:30 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565dcf65bcea5df0b49084d632ec58c1ebeee2d04df4e4655efaf52a1730b3f4`  
		Last Modified: Thu, 17 Sep 2026 21:23:56 GMT  
		Size: 13.8 MB (13782400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f6ad4134dc0aeae895c478d8d461ae56f0834ed13868dab6362a09bbef4dcc`  
		Last Modified: Thu, 17 Sep 2026 21:23:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08af69bdbfd5c93bec6a10bda64eae90a3a4a5cfee6050313c359cd889bf862d`  
		Last Modified: Thu, 17 Sep 2026 21:23:56 GMT  
		Size: 15.4 MB (15387279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b3ed92acf3de4f1babaf75fa6929019ecc1b50ed7720d18d460e06d70eb78e`  
		Last Modified: Thu, 17 Sep 2026 21:23:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a15791df5eb1afca6686eb1a6bcff59355d80b6c8c7099fd0f622f1f8fcae9`  
		Last Modified: Thu, 17 Sep 2026 21:23:56 GMT  
		Size: 22.4 KB (22422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b25839907760c358207119a1b671fdb29deb0d16deafc0ae77cb9afbf751ba0`  
		Last Modified: Thu, 17 Sep 2026 21:23:56 GMT  
		Size: 22.4 KB (22436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae2040edd90fb3aa527cb40722ccfad10e9053b099ff7e20527cbde6883182c`  
		Last Modified: Thu, 17 Sep 2026 21:23:57 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900d09f30fe9ccb3fb821f3200c1d1d54082d8ab8eb402a6e542552a46569cea`  
		Last Modified: Thu, 17 Sep 2026 22:21:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aeeee5e67f22ef9c83cf85e853b1626be4b7b25433e66e0b2a8a695856342be`  
		Last Modified: Thu, 17 Sep 2026 22:21:15 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faffbb62056865ce544ffd0033b99efbb7f5d8fbe8c12302dfe0b9224ba97eb5`  
		Last Modified: Thu, 17 Sep 2026 22:21:15 GMT  
		Size: 1.5 MB (1467675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82b281ee8f4627521768556be3efbdf99f38ee982f6be1acd3a8cdc4609f235`  
		Last Modified: Thu, 17 Sep 2026 22:21:15 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44783838f762dbf5f2539406f2429f0cc9addcce6970811da3eb60012aea84e2`  
		Last Modified: Thu, 17 Sep 2026 22:21:16 GMT  
		Size: 598.2 KB (598152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5eafea5cb15e9a4eaf54a23c84cdc346bf521a612afab95b0d3d4fa897ae61`  
		Last Modified: Thu, 17 Sep 2026 22:21:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:19556941f0de4aecbba6fe4f124a34251b0a00ff25589552aaa74ef1f69d19f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd9b5c56afd13501cb1315219b3d7fd5a0a215f2093c737be2b7d03e62eb04a`

```dockerfile
```

-	Layers:
	-	`sha256:9957eb2f03dc05cd81bbaf935519391e2553ecb52534b0529a4aa8faedfe1a26`  
		Last Modified: Thu, 17 Sep 2026 22:21:15 GMT  
		Size: 33.7 KB (33708 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm variant v6

```console
$ docker pull adminer@sha256:d8fa88026a2c69d489f0b37c7c29af9b58a4a72b505a154fe17256db38620e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36728048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec71a31d547dc4dab73b5121905b27280041bdaf08c3400d87a4ad39a2451cc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:31:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:31:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:31:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:31:37 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:31:37 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:31:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:31:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:34:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:34:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:34:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:34:40 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:34:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:34:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:34:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:34:40 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 22:36:51 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 17 Sep 2026 22:36:51 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 17 Sep 2026 22:37:29 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:37:29 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 17 Sep 2026 22:37:29 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 17 Sep 2026 22:37:29 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 17 Sep 2026 22:37:29 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 17 Sep 2026 22:37:29 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 17 Sep 2026 22:37:29 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:37:29 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:37:29 GMT
USER adminer
# Thu, 17 Sep 2026 22:37:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bab147f1a9025d10fe4b55530d715b38e0a5733e930663722750dbb10678cc`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 3.4 MB (3445122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564bb14f22dd1dff68e3d4c538ba89ba39acab7ca6ffd99e79cd07309d405238`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d7d7649541fe58ef09cab19a3eaac021182df9c8c9c00f07e8b3f3f929cd91`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2cef87d75d213356390f7e5b543fcdddc765d046e58e7c92e5c1a51bd4c6c6`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 13.8 MB (13782434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc9ef8941e637c6a4a02497ee37b44ce6ca8c25b4838aa9936cc0e001adf884`  
		Last Modified: Thu, 17 Sep 2026 21:34:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3dbf0d9ec136569b411097d0c9f3e9163c6fac6fa88603d405d1a5f485e588`  
		Last Modified: Thu, 17 Sep 2026 21:34:46 GMT  
		Size: 13.8 MB (13821776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcc6102f4bd7ec1d6cf1074c9ba5d4afec0888a0ca66ec0b357d2078743abad`  
		Last Modified: Thu, 17 Sep 2026 21:34:46 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc106e8bedecaf911707f6929c5f792a9d5e702bddb3f34d2f378784c11d39d`  
		Last Modified: Thu, 17 Sep 2026 21:34:47 GMT  
		Size: 22.2 KB (22243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372b324db15b11c587ad79b2f9e91e54b81e909707b3a14bddeab24e58db96f5`  
		Last Modified: Thu, 17 Sep 2026 21:34:47 GMT  
		Size: 22.3 KB (22258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320f464e974d6e549443807a1b4cc619089ca465f275f21d10eba46cf2cd8468`  
		Last Modified: Thu, 17 Sep 2026 21:34:48 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6c33d1fef13dad477906a5c9c4d4e2f3325af0a282efab27296935d2e56946`  
		Last Modified: Thu, 17 Sep 2026 22:37:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06243b574502a066979f5854b8de147f9e03a1e8931da01a1973fedfdcc25a19`  
		Last Modified: Thu, 17 Sep 2026 22:37:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbebdd1795fd746d8a3fa6e3531ed051cdea4ff74980d34e100cf1f068f2bfa`  
		Last Modified: Thu, 17 Sep 2026 22:37:33 GMT  
		Size: 1.5 MB (1463983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93b4edf0d675920b963238e8f26abceb61be1141913d954b5eee1188d4107c1`  
		Last Modified: Thu, 17 Sep 2026 22:37:33 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d153010e6f3aa6a3f530c460b7215e3764bd041961c0e14c0a295cd3f05f9cb`  
		Last Modified: Thu, 17 Sep 2026 22:37:34 GMT  
		Size: 598.1 KB (598147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66eef5ed79781d46a544c81a57d59da94b08668ce1c07a6c60894a43a7b082c`  
		Last Modified: Thu, 17 Sep 2026 22:37:34 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:71e0b450a7da1f187ebe653609406ccc17524bd7412b085b3731a68ab616c4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2701067d3a58f41b3e5062353b842679de602b3308274a3fdb0d5022eaa1c59f`

```dockerfile
```

-	Layers:
	-	`sha256:0b009027a15e0bc8d05ffc3c35c8ef5b7decec4e9a46d437a6c72bdbfcb53b60`  
		Last Modified: Thu, 17 Sep 2026 22:37:33 GMT  
		Size: 33.8 KB (33812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm variant v7

```console
$ docker pull adminer@sha256:32ea6d3637383ac2486eef00d96afb265f5398566aaf9b0482d69adb3bbd6105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 MB (35323918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f89901947dcc6966b66e94616b880fcaba46543eafde44de2d58643a2364932`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:20:53 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:20:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:20:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:20:54 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:20:54 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:31:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:31:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:22 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:34:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:34:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:34:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:34:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:34:23 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:34:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:34:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:34:23 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:34:23 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 22:37:55 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 17 Sep 2026 22:37:55 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 17 Sep 2026 22:38:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:38:30 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 17 Sep 2026 22:38:31 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 17 Sep 2026 22:38:31 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 17 Sep 2026 22:38:31 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 17 Sep 2026 22:38:31 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 17 Sep 2026 22:38:31 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:38:31 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:38:31 GMT
USER adminer
# Thu, 17 Sep 2026 22:38:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be2fe38d46768ad13112dbd09389a9d4c340000c4b6cca3e31e1c6f2fdfd33e`  
		Last Modified: Thu, 17 Sep 2026 21:24:10 GMT  
		Size: 3.3 MB (3258242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a9af0283f381c4b3a1aae7ae6c33c8d8495c3dfe8f8a449205a802251b96c7`  
		Last Modified: Thu, 17 Sep 2026 21:24:10 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f668efbe92931cb1bca1495f3fd34dff89c0f77c7d72dc760463eef87fb032d`  
		Last Modified: Thu, 17 Sep 2026 21:24:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153206961caebfd3d760cd01f42db229cb3b9af00baf6485bdf5beaf9ae1af49`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 13.8 MB (13782418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d012021e591b108e9328db99e39bf4d5458894771e5a4b4b386b43db43f0b96`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528c7d899d4f10dd3a23af9c8e3fda9618e9c10ee0dfecfab02597cc9144d148`  
		Last Modified: Thu, 17 Sep 2026 21:34:30 GMT  
		Size: 13.0 MB (13044424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b052878d996b5d291f5335f190b73e3d51b0081ed11da6e147c0b72e5768d6e`  
		Last Modified: Thu, 17 Sep 2026 21:34:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bc55222ba325d394b69a616ce7fe820e374cf4732513def17f4de907c3acf4`  
		Last Modified: Thu, 17 Sep 2026 21:34:31 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a833f83aacc1f706fd38e58129dd10197ac62c3ee4c3dfb562ecace75d5ccf57`  
		Last Modified: Thu, 17 Sep 2026 21:34:31 GMT  
		Size: 22.3 KB (22253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693f880e2c0ad6df83efd29e70f573bb213abfe318637870c5ae31cc36f59430`  
		Last Modified: Thu, 17 Sep 2026 21:34:31 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8f9c6249b38d9a2c96da1171fe9583dcda806e57438851ca563e41d0ec5570`  
		Last Modified: Thu, 17 Sep 2026 22:38:35 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89aca8bd4d91555d69f39afc8c2ed9e45c66696d03ea6de2c4251c72eb440278`  
		Last Modified: Thu, 17 Sep 2026 22:38:35 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79000a76db4ca522671735d53f293d2226d6c79fc121c7d0069afadd9e682b58`  
		Last Modified: Thu, 17 Sep 2026 22:38:35 GMT  
		Size: 1.3 MB (1314011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e34a1ce1461edd1c5b9ca22f976079a815a6304bcce00145c8d7688242b4c5a`  
		Last Modified: Thu, 17 Sep 2026 22:38:35 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9c7772e895e7fa3917330a08b1deff6aec5a642416a09815fa3b95e5efaf9a`  
		Last Modified: Thu, 17 Sep 2026 22:38:36 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0fa283f8d1a71b18a4d92286b326435e8b9162d4d9ea11e8d72113ffe0a562`  
		Last Modified: Thu, 17 Sep 2026 22:38:36 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:d2844d5a228b7b39f695dbdde0b43cca0a972a60975df756a9b00da5298b9a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f10970e15fb9770fdb5db7110934354bd21cd9120b0ef4b68fb4e91195d0561`

```dockerfile
```

-	Layers:
	-	`sha256:62e006402d48917977025adbc2abcd29604ec433b36d873f1ea46750333f964b`  
		Last Modified: Thu, 17 Sep 2026 22:38:35 GMT  
		Size: 33.8 KB (33812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:094f8e9d34e208809f6d387e88569c447dfe2137656fff80cb9232efb7d55458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38503563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f12b2176d977a0f6558122fc8d9f5546ea6293ed1231253638d11c875024a0`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:20:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:20:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:20:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:20:40 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:20:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:20:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:24:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:24:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:24:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:24:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:24:09 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:24:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:24:09 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:24:09 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:24:09 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 22:44:44 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 17 Sep 2026 22:44:44 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 17 Sep 2026 22:45:21 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:45:21 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 17 Sep 2026 22:45:22 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 17 Sep 2026 22:45:22 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 17 Sep 2026 22:45:22 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 17 Sep 2026 22:45:22 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 17 Sep 2026 22:45:22 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:45:22 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:45:22 GMT
USER adminer
# Thu, 17 Sep 2026 22:45:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07970ae6643d76a13286b0b2c3838214a7ca2880a6cfc39521559265eacaeee4`  
		Last Modified: Thu, 17 Sep 2026 21:24:16 GMT  
		Size: 3.5 MB (3501055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69dd7ec3b59e7438ee4336ba46bdcdbca3fdc97b2ea24d82f07330faf8cf9aef`  
		Last Modified: Thu, 17 Sep 2026 21:24:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6b7279a97b36f026349125ac437a70c13a2271e228cdd3301ece8bdd37bb61`  
		Last Modified: Thu, 17 Sep 2026 21:24:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84445a9a23c2270e8586c013cd75490f33d78d3fd72bc18f28ab538e660624e1`  
		Last Modified: Thu, 17 Sep 2026 21:24:16 GMT  
		Size: 13.8 MB (13782422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6df5462ea45d5e68198a5c42930c916a8b13b1f3b64574c0f6f6b45eaab234`  
		Last Modified: Thu, 17 Sep 2026 21:24:17 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e362882d790f877e84115a375de093098cfe045148dff12c7da7dd55e94cce9`  
		Last Modified: Thu, 17 Sep 2026 21:24:17 GMT  
		Size: 14.9 MB (14892733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b814175d1cc585948227321c77c456ac9ba31a44f4ea16cd43d468604ce9d17`  
		Last Modified: Thu, 17 Sep 2026 21:24:17 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e7339a99cfe4e84ae42552161c0a903187d1d0b8013d6aeba5197b78daaaa2`  
		Last Modified: Thu, 17 Sep 2026 21:24:18 GMT  
		Size: 22.2 KB (22234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0f9c22e1ffba7d3fbadc6def57b012d3c025ae0a495499900ae79dfc1ab484`  
		Last Modified: Thu, 17 Sep 2026 21:24:18 GMT  
		Size: 22.3 KB (22265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38e125b658a1a95e95a490ed42a3899f9348335efadef0a582478e030329c7d`  
		Last Modified: Thu, 17 Sep 2026 21:24:18 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1532a9ea5edb0d4e0c24e22ed6567e7fedf63537e81e61eb0832af7026463c0`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619e2250224366fa6d3bbedacf3c4726131539b63b7965e535511bd744bb5331`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f43b43e523b659963003f665db0f7a9739e77ee30751c371351ae51d7016030`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 1.5 MB (1480064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227a9e4c03ca2e6534e550b08e5935a3c212b663d71d3e5b531fb3923e69514d`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06cff19bb506e154ab11e8b9d34ec2bf7db73c04f00a74d4b6c8d8712a7773f`  
		Last Modified: Thu, 17 Sep 2026 22:45:27 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2b93528c7b8f15945e9f9644aeb7aba1676c78d8c92770f6f4a897724d8986`  
		Last Modified: Thu, 17 Sep 2026 22:45:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:ee65711b808deace86d0b60dbc36b7668ad0b51f768e0f76f596b6d5ef0e6a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 KB (33834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39b600ddde9fbf501ec15b16d5e0e8da6b946a56236a480926f9b52b3ea65cd`

```dockerfile
```

-	Layers:
	-	`sha256:09f8da6656a3d80389936471254b850ffce64c0b4c9fa96b4e3a83bb90945209`  
		Last Modified: Thu, 17 Sep 2026 22:45:26 GMT  
		Size: 33.8 KB (33834 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; 386

```console
$ docker pull adminer@sha256:36b6091d54f37cb34690adcadef22609a8be544cfa8a0d92bd4c7b4fbb8dec68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38842710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b221686809941d5634b782898a29b78110620244159567a4c418a0c8e8ff036`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:22:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:22:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:22:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:22:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:22:41 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 21:22:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:22:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:26:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:26:18 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 21:26:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:26:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:26:19 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:26:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:26:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:26:19 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:26:19 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 22:21:36 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 17 Sep 2026 22:21:36 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 17 Sep 2026 22:22:03 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 22:22:03 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 17 Sep 2026 22:22:04 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 17 Sep 2026 22:22:04 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 17 Sep 2026 22:22:04 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 17 Sep 2026 22:22:04 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 17 Sep 2026 22:22:04 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:22:04 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:22:04 GMT
USER adminer
# Thu, 17 Sep 2026 22:22:04 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436bab9a514668db1c8c1e177c946f12636ce32d467fc85a456bb5762e1d98ba`  
		Last Modified: Thu, 17 Sep 2026 21:25:53 GMT  
		Size: 3.5 MB (3524559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac79dd5f863b1b4f8b053b7155d2882e5656cb78c8b20af8cbadb9ea938039d2`  
		Last Modified: Thu, 17 Sep 2026 21:25:53 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c220b79cff5f72db151504c5a829da1908867af92bc9c5ddc7aac5d32c6eb0ae`  
		Last Modified: Thu, 17 Sep 2026 21:25:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2f84f561c4d1b629df218ebe6e8d93514d3f72ec6d6e3188911e597357bbee`  
		Last Modified: Thu, 17 Sep 2026 21:25:53 GMT  
		Size: 13.8 MB (13782387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16ecd8a3671e695d591e7d105c814feec07a0301b4bff4c7b09c70cb895fee7`  
		Last Modified: Thu, 17 Sep 2026 21:26:26 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486a7148ad043cbce25fbbfc5ceb70cbfb37502e7fbe76a53b1bf8f8f9b72478`  
		Last Modified: Thu, 17 Sep 2026 21:26:27 GMT  
		Size: 15.7 MB (15703016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffba437f5a42cb2850640ad2a8a2d95cd724289730beedaaae4bf1693b787757`  
		Last Modified: Thu, 17 Sep 2026 21:26:26 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b6bfb4678302c4e64895403667b78fec8f5576dd8ecb480af4a65c48353465`  
		Last Modified: Thu, 17 Sep 2026 21:26:26 GMT  
		Size: 22.4 KB (22420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457c083e837e3f915ee6b471f9bdbdcf21a23e34a798f89710f6e3392b56e1d2`  
		Last Modified: Thu, 17 Sep 2026 21:26:27 GMT  
		Size: 22.4 KB (22436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25979146ef381999a09bfaf58f80a5fc2a93025216508de2e7c50172fd507661`  
		Last Modified: Thu, 17 Sep 2026 21:26:28 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac20f37d1ed7dc923c12a8b79ab1fcd57512d8536a21f45f8327b035ee554ab`  
		Last Modified: Thu, 17 Sep 2026 22:22:08 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6217ba7598d7459ca59d071995efbf55ec5d79aff7d07344e116e31339800142`  
		Last Modified: Thu, 17 Sep 2026 22:22:08 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a14264dd966e842bd14faeba1392b02af2119a7b673603ea56a04f2c1b9b321`  
		Last Modified: Thu, 17 Sep 2026 22:22:08 GMT  
		Size: 1.5 MB (1495974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7694c9db9ff7220e09d31e5beaea7578c91f0e945de6bab34e24e7ee5ca851`  
		Last Modified: Thu, 17 Sep 2026 22:22:08 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc37e7f4b1315ba1e51a396a5c60fa036b44ef4cf798c8801d24e2287348e2d1`  
		Last Modified: Thu, 17 Sep 2026 22:22:09 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020b2e27f7eebdf918f9a3c89c80687fb4c37810f97f88f4d08241ea744989aa`  
		Last Modified: Thu, 17 Sep 2026 22:22:09 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:66caea77e3019994e6906b9e7f4a66547b2a2cec7709a6e40d6e40e860fa2378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f05ee47e318bb33feb81c02e2cdb08e96fa3fc8c4808f116958bc8a98e0eb6`

```dockerfile
```

-	Layers:
	-	`sha256:2f33b1a9671aff3fae3449f587c4301936f4e7c0f0def8e61afa79df99f5a401`  
		Last Modified: Thu, 17 Sep 2026 22:22:08 GMT  
		Size: 33.7 KB (33681 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; ppc64le

```console
$ docker pull adminer@sha256:e5ca4d3c180d22e057945865872cd491b8a4180360737db462de5fc3fdc3a039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.4 MB (39397985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df6369743379043bbfb40c951249f6e56be8e82d02f53179b355037ee4892f`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:35:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:35:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 22:30:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 22:30:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:36:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 22:36:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:36:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 22:36:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 22:36:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:36:06 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:36:07 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 22:36:07 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 22:36:07 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 22:36:07 GMT
CMD ["php-fpm"]
# Fri, 18 Sep 2026 01:33:20 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 18 Sep 2026 01:33:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 18 Sep 2026 01:34:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 18 Sep 2026 01:34:18 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 18 Sep 2026 01:34:19 GMT
ENV ADMINER_VERSION=5.5.1
# Fri, 18 Sep 2026 01:34:19 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Fri, 18 Sep 2026 01:34:19 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Fri, 18 Sep 2026 01:34:19 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 18 Sep 2026 01:34:19 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 01:34:19 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 18 Sep 2026 01:34:19 GMT
USER adminer
# Fri, 18 Sep 2026 01:34:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dd3b632bc8356dfcd2913d56c4dafaee9f64ea172ed02d121456debc7e09e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 3.7 MB (3664991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffba323cefd4aec9e70567151bff96ffe7dcd359abe0c80e30f54fdb9d519d3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 928.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f076f58842bb9537630b1ddc9001cb2a7d48b3dc3da8088c3b602853fa14e686`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db008801a6aacf5b66f2c908da41f5601d4a46135f54d643baf2f4a8dc901726`  
		Last Modified: Thu, 17 Sep 2026 22:35:08 GMT  
		Size: 13.8 MB (13782429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb17e115cbd734438f81266e074fe2dbd9bf2763857d94786d144f82e713595e`  
		Last Modified: Thu, 17 Sep 2026 22:35:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7556f2cd987344edc5441405f806dbe9a34da61b0f9d77cbe5a436c1e4abb709`  
		Last Modified: Thu, 17 Sep 2026 22:36:23 GMT  
		Size: 15.9 MB (15933144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d0245128a98d72745e410df34cf4e63abff54e59290e784c3aa10257273d2a`  
		Last Modified: Thu, 17 Sep 2026 22:36:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ff52856349d793c5fd3cba6fdffb712e6debc5317a4af58580d062999eee73`  
		Last Modified: Thu, 17 Sep 2026 22:36:22 GMT  
		Size: 22.3 KB (22263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be0515361a3c96eff4d76af174f4c2d0654e8120632e165409eed89b826e8d8`  
		Last Modified: Thu, 17 Sep 2026 22:36:22 GMT  
		Size: 22.3 KB (22278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d71bcb12101e1eb611358356c269bc82eb421d797e4d4634dbf9f7da105d36`  
		Last Modified: Thu, 17 Sep 2026 22:36:23 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a661c2f4e6671e66a75dc3f1d3923b39e651af2c08d2282d1d9642c4570f30c7`  
		Last Modified: Fri, 18 Sep 2026 01:34:26 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd721e247f235a2d43aa9daa3da7c49f020e80ccc6d8ec7b3890d9723f56dcb`  
		Last Modified: Fri, 18 Sep 2026 01:34:26 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631d0aa1beca59df041a92a862b6ddc23e436fdf98bed60fe693a6a1801bec2f`  
		Last Modified: Fri, 18 Sep 2026 01:34:26 GMT  
		Size: 1.5 MB (1540254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50467a2b09e616a36a04b313e0329ef3045e0abf7302a961df1dbb47516734b8`  
		Last Modified: Fri, 18 Sep 2026 01:34:26 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da040ceff5b120e1c3b9b40d0d1bc80bfebc788058c6a876760c8c268510b0d5`  
		Last Modified: Fri, 18 Sep 2026 01:34:27 GMT  
		Size: 598.2 KB (598153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a1c428e394b7567cfb27dbb90abbcfb93efa1384b262ec4fcd2d83564f95e7`  
		Last Modified: Fri, 18 Sep 2026 01:34:27 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:b709a3d17c5b7634aea85f11a08a7d300506df39de14d63583c5ebfc2291a8c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5160b01554e457a7e183f01117b4139c4659d702d50fdb13171fe2f75ccb815d`

```dockerfile
```

-	Layers:
	-	`sha256:0706a4481528d17aa13d586c71230a5df09455b4a13d72155c00f0b602808c83`  
		Last Modified: Fri, 18 Sep 2026 01:34:26 GMT  
		Size: 33.7 KB (33746 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; riscv64

```console
$ docker pull adminer@sha256:d89ee40dd26c57983896c3c654226d2a7f12cd69244b01cf853edcb5a642b28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 MB (41012854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29be7f881ca6cc5a6539f50ae439f47441e8dbf2911491831bd621064868e41c`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 10:08:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 17 Jun 2026 10:08:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 17 Jun 2026 10:08:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.4.25
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Fri, 28 Aug 2026 17:25:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 28 Aug 2026 17:25:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 19:55:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 30 Aug 2026 19:55:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 19:55:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 30 Aug 2026 19:55:52 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 19:55:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 30 Aug 2026 19:55:52 GMT
STOPSIGNAL SIGQUIT
# Sun, 30 Aug 2026 19:55:52 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 30 Aug 2026 19:55:52 GMT
CMD ["php-fpm"]
# Sun, 30 Aug 2026 22:24:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Sun, 30 Aug 2026 22:24:20 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Sun, 30 Aug 2026 22:30:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Sun, 30 Aug 2026 22:30:47 GMT
COPY *.php /var/www/html/ # buildkit
# Sun, 30 Aug 2026 22:30:49 GMT
ENV ADMINER_VERSION=5.5.1
# Sun, 30 Aug 2026 22:30:49 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Sun, 30 Aug 2026 22:30:49 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Sun, 30 Aug 2026 22:30:49 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Sun, 30 Aug 2026 22:30:50 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 22:30:50 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sun, 30 Aug 2026 22:30:50 GMT
USER adminer
# Sun, 30 Aug 2026 22:30:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc09af4ff1d594ba4ff939387160eac2fe7e3118ca810f61819eb5d92f7b520`  
		Last Modified: Wed, 17 Jun 2026 12:01:56 GMT  
		Size: 3.6 MB (3604699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01600916adca5933ee02bb7a5a25279f28df2779de050e87ee103675d313f666`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a891144274182ffd9c264ebaada55f1b357da87b9d652cda214fc6307d6f939`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e7b3ff8b579d6148c0c6a3a3f532650eb443aaafcec254028ebb48d2492ccc`  
		Last Modified: Fri, 28 Aug 2026 18:23:54 GMT  
		Size: 13.8 MB (13782401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cb55bdef5ffab76fd96949b2dc9af0cc8ec36e249524c3cd4d01bdf0d2a563`  
		Last Modified: Fri, 28 Aug 2026 18:23:50 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289114d811b860251d34800a4c600f49085c3bfabe4092f04fd2b9b90a25c128`  
		Last Modified: Sun, 30 Aug 2026 19:56:49 GMT  
		Size: 17.9 MB (17902012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f1bcb3e6d66388e8118d28099e88a78fa9f77da12b7be026414396d12d4424`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372d4b9648fab805856eef9b7710913f32ab3b550a14d176bb0515cf342d5553`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 22.3 KB (22280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d30a3dd732868ab095de424fd4e0861fdcf4bd08d7e8e935a5e28616e5fcabe`  
		Last Modified: Sun, 30 Aug 2026 19:56:46 GMT  
		Size: 22.3 KB (22301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7737ea582382d770e6da03d6381dacac9f40c994a5269daaf5989ae14b284a0a`  
		Last Modified: Sun, 30 Aug 2026 19:56:47 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a242538a389afffac10a70f96da3f76cdcded764d94ccfb64c487f974d3a686`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902b07722fa2ebdbf1a03e86653d0135a3d6c29b296fd057274aeeb7ce1d2ac8`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0a5ed8b205d1cd66664e49f24e3c2de763a031a2c9b50a57abe9c74f764079`  
		Last Modified: Sun, 30 Aug 2026 22:30:18 GMT  
		Size: 1.5 MB (1489639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe13da72532fe79a5f3b828ad6134c441a9a04b8bbad8cf9f55231b5e879ac53`  
		Last Modified: Sun, 30 Aug 2026 22:31:04 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0c1c2b7ac0ff2bd8ab040a128bdab5cfc942df850d7b6ac3eedff7b685ebc2`  
		Last Modified: Sun, 30 Aug 2026 22:31:04 GMT  
		Size: 598.2 KB (598154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97843a7f8b102f700bb22a27453f1850079c6295462732df417a527bbfceb9bd`  
		Last Modified: Sun, 30 Aug 2026 22:31:04 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:a484d576eaf2d11c53fc6a4643090e40d4bb96f7735ed0607f75f5107a0afeee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bff0c46d124189f8e27cbc208d957570523182b491aeaf3c8a51e4ece702cd5`

```dockerfile
```

-	Layers:
	-	`sha256:abc0f5353b70742daab8e272c176e7fbccf33dee17f0c452c6d0b506fadf15a1`  
		Last Modified: Sun, 30 Aug 2026 22:31:04 GMT  
		Size: 33.7 KB (33747 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-fastcgi` - linux; s390x

```console
$ docker pull adminer@sha256:b11867006ae47b298ea25847336d0f722beda26341c3fad93beb4b3122857fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38501324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bfafe906a0729564d637157df26902dc322cf41e8c5be56b08a7433e0978bc`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 22:27:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 22:27:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 22:27:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_VERSION=8.4.25
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 17 Sep 2026 22:47:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 22:47:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:51:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 22:51:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:51:28 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 17 Sep 2026 22:51:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 22:51:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 22:51:29 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 22:51:29 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 22:51:29 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 22:51:29 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 22:51:29 GMT
CMD ["php-fpm"]
# Fri, 18 Sep 2026 01:59:50 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Fri, 18 Sep 2026 01:59:50 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Fri, 18 Sep 2026 02:00:15 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Fri, 18 Sep 2026 02:00:15 GMT
COPY *.php /var/www/html/ # buildkit
# Fri, 18 Sep 2026 02:00:16 GMT
ENV ADMINER_VERSION=5.5.1
# Fri, 18 Sep 2026 02:00:16 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Fri, 18 Sep 2026 02:00:16 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Fri, 18 Sep 2026 02:00:16 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Fri, 18 Sep 2026 02:00:16 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 18 Sep 2026 02:00:16 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Fri, 18 Sep 2026 02:00:16 GMT
USER adminer
# Fri, 18 Sep 2026 02:00:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4ef3abb32213d1ef3a47fc55b7905eee1cba59e8bbc9aa6fbffa950556cd84`  
		Last Modified: Thu, 17 Sep 2026 22:32:06 GMT  
		Size: 3.7 MB (3686221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb7b3c833a30e307599c1033ee26d5ec370b841e40a96a1ca6a5b6a2e08cf1a`  
		Last Modified: Thu, 17 Sep 2026 22:32:05 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e972f81d945262abb55ad776553759f610805195c15ccdf6d8fea9709cfff427`  
		Last Modified: Thu, 17 Sep 2026 22:32:05 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1e85844ca6e9fce36f313eb0a5da6df1b6a86b1b26624498c626d085389498`  
		Last Modified: Thu, 17 Sep 2026 22:51:18 GMT  
		Size: 13.8 MB (13782407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0437a5ee8f6aa133afe9ae2deeb9b54c6ec4553152137c9c2c45330d6e9fe49`  
		Last Modified: Thu, 17 Sep 2026 22:51:17 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9f8d729fc103bb1b19572dec226a042ac1dc23327e872fb01da7955d60219e`  
		Last Modified: Thu, 17 Sep 2026 22:51:39 GMT  
		Size: 15.1 MB (15123031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b0d882c76f3a53e0a2daf0c5778d3da73e8c50d6b339439532fbebcfb9c17c`  
		Last Modified: Thu, 17 Sep 2026 22:51:38 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e278b06fce3de5c1e4105fe567838d1d58001a7458627e26ce51022ff9c23936`  
		Last Modified: Thu, 17 Sep 2026 22:51:38 GMT  
		Size: 22.3 KB (22251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329ee5b73da98801cb2f528d95bcba2d381dbb23d8608fee8a13932af71cdf90`  
		Last Modified: Thu, 17 Sep 2026 22:51:38 GMT  
		Size: 22.3 KB (22258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264c74e8c2689bfcede60dfbad49b363fe1c70d4ed87baf83dba24e5a716a142`  
		Last Modified: Thu, 17 Sep 2026 22:51:39 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7062c91de4e5772eb975b8442d18bd3668ec5d68ab4249c58da525e5e6ac5551`  
		Last Modified: Fri, 18 Sep 2026 02:00:24 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65670e85b0e6595a3cf19abbe902f702db1097a7760e8d37412b09b5e070063e`  
		Last Modified: Fri, 18 Sep 2026 02:00:24 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a9db68468aa37eb3f0a8fd4f3070a4bb81fd9e6c6b464bc58259e372fb4d6a`  
		Last Modified: Fri, 18 Sep 2026 02:00:24 GMT  
		Size: 1.5 MB (1534678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f508d219ffbe9e8a1413dfdff6dfe5cf913b3db6ae0217b0d8bed1d65e59168a`  
		Last Modified: Fri, 18 Sep 2026 02:00:24 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0cc22f55b14418dbce1ba5f4b01f864b01efd391be2cc070295f7130e4b9c6`  
		Last Modified: Fri, 18 Sep 2026 02:00:25 GMT  
		Size: 598.1 KB (598150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695ee2a7618b0c504ff04b20dfcca46192c2d0d27aebfb9251c38129008cd9e3`  
		Last Modified: Fri, 18 Sep 2026 02:00:25 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-fastcgi` - unknown; unknown

```console
$ docker pull adminer@sha256:d523b3b933f833e32b2338a1af04844f14d17f2a795c666168c28a993d2954f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5fcbbaec6effa87fe278403384aa5a3723b2c83819546668a77740375fcad3`

```dockerfile
```

-	Layers:
	-	`sha256:0101c94e63318525b531782c789a8bf682e523449255d630a2759ee11fb95448`  
		Last Modified: Fri, 18 Sep 2026 02:00:24 GMT  
		Size: 33.7 KB (33709 bytes)  
		MIME: application/vnd.in-toto+json
